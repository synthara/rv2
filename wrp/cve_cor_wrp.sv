import rvv_autogen_specs_pkg::*;
import rvv_autogen_params_pkg::*;
import rvv_autogen_enums_pkg::*;
import rvv_autogen_dtypes_pkg::*;
import rvv_autogen_structs_pkg::*;
import prim_ram_1p_pkg::*;
import cve2_pkg::*;


module cve_cor_wrp (
    // Clock and Reset
    input  var logic                                  clk,
    input  var logic                                  resetn,

    input  var logic                                  test_en_i,     // enable all clock gates for testing
    input  var logic[3:0]                             ram_cfg_i,      
    input  var logic                                  ram_cfg_en_i,  // cpnfiguration for ram
    input  var logic                                  rf_cfg_en_i,
    input  var logic [3:0]                            rf_cfg_i,      // configuration for regfile

    input  var logic [31:0]                           hart_id_i,
    input  var logic [31:0]                           boot_addr_i,

    // Instruction memory interface
    output var logic                                  instr_req_o,
    input  var logic                                  instr_gnt_i,
    input  var logic                                  instr_rvalid_i,
    output var logic [31:0]                           instr_addr_o,
    input  var logic [31:0]                           instr_rdata_i,
    input  var logic                                  instr_err_i,

    // Data memory interface
    output var logic                                  data_req_o,
    input  var logic                                  data_gnt_i,
    input  var logic                                  data_rvalid_i,
    output var logic                                  data_we_o,
    output var logic [3:0]                            data_be_o,
    output var logic [31:0]                           data_addr_o,
    output var logic [31:0]                           data_wdata_o,
    input  var logic [31:0]                           data_rdata_i,
    input  var logic                                  data_err_i,

    // CV-X-IF.
    // Issue interface
    output var logic                                  x_issue_valid_o,
    input  var logic                                  x_issue_ready_i,
    output var logic[$bits(x_issue_req_t)-1:0]        x_issue_req_flatten_o,
    input  var logic[$bits(x_issue_resp_t)-1:0]       x_issue_resp_flatten_i,

    // Register Interface 
    output var logic[$bits(x_register_t)-1:0]         x_register_flatten_o,

    // Commit Interface 
    output var logic                                  x_commit_valid_o,
    output var logic[$bits(x_commit_t)-1:0]           x_commit_flatten_o,

    // Result Interface 
    input  var logic                                  x_result_valid_i,
    output var logic                                  x_result_ready_o,
    input  var logic[$bits(x_result_t)-1:0]           x_result_flatten_i,

    //CSR vec mode.
    output var logic[DATA_WIDTH-1:0]                  csr_vec_mode_o,

    // SSR interfaces
    output var logic [NUM_RF_SSR_PORT-1:0]            ssr_valid_o,
    input  var logic [NUM_RF_SSR_PORT-1:0]            ssr_ready_i,
    output var logic [NUM_RF_SSR_PORT-1:0][4:0]       ssr_addr_o,
    input  var logic [NUM_RF_SSR_READ_PORT-1:0][31:0] ssr_rdata_i,
    output var logic [31:0]                           ssr_wdata_o,

    // SSR config CSR register 
    output var logic [DATA_WIDTH-1:0]                 csr_ssr_start_o,

    // Interrupt inputs
    input  var logic                                  irq_software_i,
    input  var logic                                  irq_timer_i,
    input  var logic                                  irq_external_i,
    input  var logic [15:0]                           irq_fast_i,
    input  var logic                                  irq_nm_i,       // non-maskeable interrupt

    // Debug Interface
    input  var logic                                  debug_req_i,
    output var logic [31:0]                           current_pc,
    output var logic [31:0]                           next_pc,
    output var logic [31:0]                           last_data_addr,
    output var logic [31:0]                           exception_addr,

    // CPU Control Signals
    input  var logic                                  fetch_enable_i,
    output var logic                                  core_sleep_o

);

ram_1p_cfg_t ram_cfg;
always_comb begin
  ram_cfg.ram_cfg.cfg_en = ram_cfg_en_i;
  ram_cfg.ram_cfg.cfg = ram_cfg_i;
  ram_cfg.rf_cfg.cfg_en = rf_cfg_en_i;
  ram_cfg.rf_cfg.cfg = rf_cfg_i;
end

crash_dump_t crash_dump;
always_comb begin
  current_pc      = crash_dump.current_pc;
  next_pc         = crash_dump.next_pc;
  last_data_addr  = crash_dump.last_data_addr;
  exception_addr  = crash_dump.exception_addr;
end

localparam int unsigned ENABLE_XIF = 1;
localparam logic [NUM_SSR-1:0][4:0] SSR_ADDR = '{5'd28, 5'd29, 5'd30};

cve2_top # (
  .XInterface(ENABLE_XIF),
  .SSR_ADDR(SSR_ADDR)
) i_cve2_top(

  // Clock and Reset
  .clk_i(clk),
  .rst_ni(resetn),

  .test_en_i(test_en_i),     
  .ram_cfg_i(ram_cfg),

  .hart_id_i(hart_id_i),
  .boot_addr_i(boot_addr_i),

  // Instruction memory interface
  .instr_req_o(instr_req_o),
  .instr_gnt_i(instr_gnt_i),
  .instr_rvalid_i(instr_rvalid_i),
  .instr_addr_o(instr_addr_o),
  .instr_rdata_i(instr_rdata_i),
  .instr_err_i(instr_err_i),

  // Data memory interface
  .data_req_o(data_req_o),
  .data_gnt_i(data_gnt_i),
  .data_rvalid_i(data_rvalid_i),
  .data_we_o(data_we_o),
  .data_be_o(data_be_o),
  .data_addr_o(data_addr_o),
  .data_wdata_o(data_wdata_o),
  .data_rdata_i(data_rdata_i),
  .data_err_i(data_err_i),

  // Core-V eXtension Interface (CV-X-IF)
  // Issue Interface
  .x_issue_valid_o(x_issue_valid_o),
  .x_issue_ready_i(x_issue_ready_i),
  .x_issue_req_o(x_issue_req_flatten_o),
  .x_issue_resp_i(x_issue_resp_flatten_i),

  // Register Interface   
  .x_register_o(x_register_flatten_o),

  // Commit Interface   
  .x_commit_valid_o(x_commit_valid_o),
  .x_commit_o(x_commit_flatten_o),

  // Result Interface   
  .x_result_valid_i(x_result_valid_i),
  .x_result_ready_o(x_result_ready_o),
  .x_result_i(x_result_flatten_i),

  // CSR vec mode
  .csr_vec_mode_o(csr_vec_mode_o),

  // SSR interfaces
  .ssr_valid_o(ssr_valid_o),
  .ssr_ready_i(ssr_ready_i),
  .ssr_addr_o(ssr_addr_o),
  .ssr_rdata_i(ssr_rdata_i),
  .ssr_wdata_o(ssr_wdata_o),

  // SSR config CSR register 
  .csr_ssr_start_o(csr_ssr_start_o),

  // Interrupt inputs
  .irq_software_i(irq_software_i),
  .irq_timer_i(irq_timer_i),
  .irq_external_i(irq_external_i),
  .irq_fast_i(irq_fast_i),
  .irq_nm_i(irq_nm_i),       

  // Debug Interface
  .debug_req_i(debug_req_i),
  .crash_dump_o(crash_dump),

  // CPU Control Signals
  .fetch_enable_i(fetch_enable_i),
  .core_sleep_o(core_sleep_o)
);

endmodule