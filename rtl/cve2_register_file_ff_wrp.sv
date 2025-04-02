module cve2_register_file_ff_wrp import cve2_pkg::*; #(
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
  input  logic                       instr_valid_i,
  input  logic [DataWidth-1:0]       csr_ssr_cfg_i,
  output logic [NUM_RF_SSR_PORT-1:0] ssr_stall_rf_o,

  // SSR interfaces
  output logic [NUM_RF_SSR_PORT-1:0]            ssr_valid_o,
  input  logic [NUM_RF_SSR_PORT-1:0]            ssr_ready_i,
  output logic [NUM_RF_SSR_PORT-1:0][4:0]       ssr_addr_o,
  input  logic [NUM_RF_SSR_READ_PORT-1:0][31:0] ssr_rdata_i,
  output logic [DataWidth-1:0]                  ssr_wdata_o
//---------------------------------------------------------------------------------

);

logic [NUM_RF_SSR_PORT-1:0][4:0] rf_addr;
always_comb rf_addr = {waddr_a_i, raddr_b_i, raddr_a_i};

// Write ports signals
logic [DataWidth-1:0] rf_wdata_a; 
logic rf_we_a_dec;

always_comb rf_wdata_a = wdata_a_i;
always_comb rf_we_a_dec = we_a_i;

// Check if the register has stream semantics
logic [NUM_RF_SSR_PORT-1:0] is_addr_ssr;
always_comb begin
    is_addr_ssr = '0;
    if(|csr_ssr_cfg_i && instr_valid_i) begin
        for(int RF_SSR_PORT_IDX = 0; RF_SSR_PORT_IDX < NUM_RF_SSR_PORT; RF_SSR_PORT_IDX++) begin
            for(int SSR_ADDR_IDX = 0; SSR_ADDR_IDX < NUM_SSR; SSR_ADDR_IDX++) begin
                unique if(rf_addr[RF_SSR_PORT_IDX] == SSR_ADDR[SSR_ADDR_IDX]) begin
                    is_addr_ssr[RF_SSR_PORT_IDX] = '1;
                end
            end
        end
    end
end

for(genvar RF_SSR_PORT_IDX = 0; RF_SSR_PORT_IDX < NUM_RF_SSR_PORT; RF_SSR_PORT_IDX++) begin
    always_comb ssr_valid_o[RF_SSR_PORT_IDX] = is_addr_ssr[RF_SSR_PORT_IDX];
    always_comb ssr_stall_rf_o[RF_SSR_PORT_IDX] = is_addr_ssr[RF_SSR_PORT_IDX] && ~ssr_ready_i[RF_SSR_PORT_IDX];
end

logic [NUM_RF_SSR_READ_PORT-1:0] rf_rdata_mux_sel;
for(genvar RF_SSR_READ_PORT_IDX = 0; RF_SSR_READ_PORT_IDX < NUM_RF_SSR_READ_PORT; RF_SSR_READ_PORT_IDX++) begin
    always_comb rf_rdata_mux_sel[RF_SSR_READ_PORT_IDX] = is_addr_ssr[RF_SSR_READ_PORT_IDX];
end

logic rf_we_a;
always_comb rf_we_a = is_addr_ssr[NUM_RF_SSR_PORT-1] ? '0 : rf_we_a_dec;

always_comb ssr_addr_o = rf_addr;
always_comb ssr_wdata_o = rf_wdata_a;

logic [DataWidth-1:0] rf_rdata_a, rf_rdata_b;

cve2_register_file_ff cve2_register_file_ff_inst (
  .clk_i(clk_i),
  .rst_ni(rst_ni),
  .test_en_i(test_en_i),
  .raddr_a_i(raddr_a_i),
  .rdata_a_o(rf_rdata_a),
  .raddr_b_i(raddr_b_i),
  .rdata_b_o(rf_rdata_b),
  .raddr_c_i(raddr_c_i),
  .rdata_c_o(rdata_c_o),
  .waddr_a_i(waddr_a_i),
  .wdata_a_i(wdata_a_i),
  .we_a_i(rf_we_a),
  .waddr_b_i(waddr_b_i),
  .wdata_b_i(wdata_b_i),
  .we_b_i(we_b_i)
);

// Read port output MUX
always_comb rdata_a_o = (rf_rdata_mux_sel[0]) ? ssr_rdata_i[0] : rf_rdata_a;
always_comb rdata_b_o = (rf_rdata_mux_sel[1]) ? ssr_rdata_i[1] : rf_rdata_b;

endmodule