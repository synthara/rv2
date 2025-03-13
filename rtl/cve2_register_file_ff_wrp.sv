import cve2_pkg::*;

module cve2_register_file_ff_wrp #(
  parameter bit                      RV32E       = 0,
  parameter int unsigned             DataWidth   = 32,
  parameter logic [DataWidth-1:0]    WordZeroVal = '0,
  parameter logic [NUM_SSR-1:0][4:0] SSR_ADDR    = '0
) (
  // Clock and Reset
  input  logic                 clk_i,
  input  logic                 rst_ni,

  input  logic                 test_en_i,

  // Read port R1
  input  logic [4:0]           raddr_a_i,
  output logic [DataWidth-1:0] rdata_a_o,

  // Read port R2
  input  logic [4:0]           raddr_b_i,
  output logic [DataWidth-1:0] rdata_b_o,

  // Read port R3
  input  logic [4:0]           raddr_c_i,
  output logic [DataWidth-1:0] rdata_c_o,

  // Write port W1
  input  logic                 we_a_i,
  input  logic [4:0]           waddr_a_i,
  input  logic [DataWidth-1:0] wdata_a_i,

  // Write port W2
  input  logic                 we_b_i,
  input  logic [4:0]           waddr_b_i,
  input  logic [DataWidth-1:0] wdata_b_i,

//---------------------------------------------------------------------------------
  // SSR FSM signals
  input  logic                        instr_valid_i,
  input  logic [DataWidth-1:0]        csr_ssr_cfg_i,
  output logic [NUM_RF_PORT-1:0]      ssr_stall_rf_o,

  // SSR interfaces
  output logic [NUM_RF_PORT-1:0]                      ssr_valid_o,
  input  logic [NUM_RF_PORT-1:0]                      ssr_ready_i,
  output logic [NUM_RF_PORT-1:0][4:0]                 ssr_addr_o,
  input  logic [NUM_RF_READ_PORT-1:0][DataWidth-1:0]  ssr_rdata_i,
  output logic [NUM_RF_WRITE_PORT-1:0][DataWidth-1:0] ssr_wdata_o
//---------------------------------------------------------------------------------

);

// Unify address signals
logic [NUM_RF_PORT-1:0][4:0] rf_addr;
logic [4:0] rf_waddr_b;
always_comb begin
    if(|csr_ssr_cfg_i) begin
        rf_waddr_b = '0;
    end
    else begin
        rf_waddr_b = waddr_b_i;
    end

end

always_comb rf_addr = {rf_waddr_b, waddr_a_i, raddr_c_i, raddr_b_i, raddr_a_i};

// Write ports signals
logic [NUM_RF_WRITE_PORT-1:0][DataWidth-1:0] rf_wdata; 
logic [NUM_RF_WRITE_PORT-1:0]                rf_we_dec;

always_comb rf_wdata = {wdata_b_i, wdata_a_i};
always_comb rf_we_dec = {we_b_i, we_a_i};

// Check if the register has stream semantics
logic [NUM_RF_PORT-1:0] is_addr_ssr;
always_comb begin
    is_addr_ssr = '0;
    for(int RF_PORT_IDX = 0; RF_PORT_IDX < NUM_RF_PORT; RF_PORT_IDX++) begin
        for(int SSR_ADDR_IDX = 0; SSR_ADDR_IDX < NUM_SSR; SSR_ADDR_IDX++) begin
            if(rf_addr[RF_PORT_IDX] == SSR_ADDR[SSR_ADDR_IDX]) begin
                is_addr_ssr[RF_PORT_IDX] = '1;
                break;
            end
        end
    end
end

// FSM instances
typedef enum logic {SSR_ASSERT_REQ, SSR_DEASSERT_REQ} ssr_req_t;
ssr_req_t ssr_req_d [NUM_RF_PORT-1:0];
ssr_req_t ssr_req_q [NUM_RF_PORT-1:0];

logic [NUM_RF_PORT-1:0] ssr_stall_rf;

// Read ports
logic [NUM_RF_READ_PORT-1:0] rf_rdata_mux_sel;

for(genvar RF_READ_PORT_IDX = 0; RF_READ_PORT_IDX < NUM_RF_READ_PORT; RF_READ_PORT_IDX++) begin

    always_ff@(posedge clk_i or negedge rst_ni) begin
        if (!rst_ni) begin
            ssr_req_q[RF_READ_PORT_IDX] <= SSR_ASSERT_REQ;
        end
        else begin
            ssr_req_q[RF_READ_PORT_IDX] <= ssr_req_d[RF_READ_PORT_IDX];
        end
    end

    always_comb begin
        ssr_valid_o[RF_READ_PORT_IDX]      = '0;
        ssr_stall_rf[RF_READ_PORT_IDX]     = '0;
        rf_rdata_mux_sel[RF_READ_PORT_IDX] = '0;

        unique case(ssr_req_q[RF_READ_PORT_IDX])
            SSR_ASSERT_REQ: begin  
                ssr_req_d[RF_READ_PORT_IDX] = SSR_ASSERT_REQ;
                if(|csr_ssr_cfg_i && is_addr_ssr[RF_READ_PORT_IDX] && instr_valid_i) begin
                    ssr_valid_o[RF_READ_PORT_IDX] = '1;
                    rf_rdata_mux_sel[RF_READ_PORT_IDX] = '1;
                    if(!ssr_ready_i[RF_READ_PORT_IDX]) begin
                        ssr_req_d[RF_READ_PORT_IDX] = SSR_DEASSERT_REQ;
                        ssr_stall_rf[RF_READ_PORT_IDX] = '1;
                    end
                end    
            end
            SSR_DEASSERT_REQ: begin
                ssr_req_d[RF_READ_PORT_IDX] = SSR_DEASSERT_REQ;
                rf_rdata_mux_sel[RF_READ_PORT_IDX] = '1;
                if(ssr_ready_i[RF_READ_PORT_IDX]) begin
                    ssr_req_d[RF_READ_PORT_IDX] = SSR_ASSERT_REQ;
                end
                else begin
                    ssr_stall_rf[RF_READ_PORT_IDX] = '1;
                end
            end
            default: begin
                ssr_req_d[RF_READ_PORT_IDX]        = SSR_ASSERT_REQ;
                ssr_valid_o[RF_READ_PORT_IDX]      = '0;
                ssr_stall_rf[RF_READ_PORT_IDX]     = '0;
                rf_rdata_mux_sel[RF_READ_PORT_IDX] = '0;
            end
        endcase
    end
end

// Write ports
logic [NUM_RF_WRITE_PORT-1:0] rf_we;

for(genvar RF_WRITE_PORT_IDX = 0; RF_WRITE_PORT_IDX < NUM_RF_WRITE_PORT; RF_WRITE_PORT_IDX++) begin

    always_ff@(posedge clk_i or negedge rst_ni) begin
        if (!rst_ni) begin
            ssr_req_q[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX] <= SSR_ASSERT_REQ;
        end
        else begin
            ssr_req_q[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX] <= ssr_req_d[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX];
        end
    end

    always_comb begin
        ssr_valid_o[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX]  = '0;
        ssr_stall_rf[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX] = '0;
        rf_we[RF_WRITE_PORT_IDX] = rf_we_dec[RF_WRITE_PORT_IDX];
        
        unique case(ssr_req_q[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX])
            SSR_ASSERT_REQ: begin  
                ssr_req_d[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX] = SSR_ASSERT_REQ;
                if(|csr_ssr_cfg_i && is_addr_ssr[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX] && instr_valid_i) begin
                    ssr_valid_o[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX] = '1;
                    rf_we[RF_WRITE_PORT_IDX] = '0;
                    if(!ssr_ready_i[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX]) begin
                        ssr_req_d[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX] = SSR_DEASSERT_REQ;
                        ssr_stall_rf[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX] = '1;
                    end
                end
            end

            SSR_DEASSERT_REQ: begin
                ssr_req_d[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX] = SSR_DEASSERT_REQ;
                rf_we[RF_WRITE_PORT_IDX] = '0;
                if(ssr_ready_i[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX]) begin
                    ssr_req_d[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX] = SSR_ASSERT_REQ;
                end
                else begin
                    ssr_stall_rf[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX] = '1;
                end  
            end
            
            default: begin
                ssr_req_d[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX]    = SSR_ASSERT_REQ;
                ssr_valid_o[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX]  = '0;
                ssr_stall_rf[NUM_RF_READ_PORT + RF_WRITE_PORT_IDX] = '0;
                rf_we[RF_WRITE_PORT_IDX]                           = rf_we_dec[RF_WRITE_PORT_IDX];
            end
        endcase
    end
end

// Output assignments
always_comb ssr_stall_rf_o = ssr_stall_rf;
always_comb ssr_addr_o = rf_addr;
always_comb ssr_wdata_o = rf_wdata;

logic [DataWidth-1:0] rf_rdata_a, rf_rdata_b, rf_rdata_c;

cve2_register_file_ff cve2_register_file_ff_inst (
  .clk_i(clk_i),
  .rst_ni(rst_ni),
  .test_en_i(test_en_i),
  .raddr_a_i(raddr_a_i),
  .rdata_a_o(rf_rdata_a),
  .raddr_b_i(raddr_b_i),
  .rdata_b_o(rf_rdata_b),
  .raddr_c_i(raddr_c_i),
  .rdata_c_o(rf_rdata_c),
  .waddr_a_i(waddr_a_i),
  .wdata_a_i(wdata_a_i),
  .we_a_i(rf_we[0]),
  .waddr_b_i(waddr_b_i),
  .wdata_b_i(wdata_b_i),
  .we_b_i(rf_we[1])
);

// Read port output MUX
always_comb rdata_a_o = (rf_rdata_mux_sel[0]) ? ssr_rdata_i[0] : rf_rdata_a;
always_comb rdata_b_o = (rf_rdata_mux_sel[1]) ? ssr_rdata_i[1] : rf_rdata_b;
always_comb rdata_c_o = (rf_rdata_mux_sel[2]) ? ssr_rdata_i[2] : rf_rdata_c;

endmodule