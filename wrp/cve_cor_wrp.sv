import rvv_autogen_specs_pkg::*;
import rvv_autogen_params_pkg::*;
import rvv_autogen_enums_pkg::*;
import rvv_autogen_dtypes_pkg::*;
import rvv_autogen_structs_pkg::*;
import prim_ram_1p_pkg::*;
import cve2_pkg::*;


module cve_cor_wrp (
    // Clock and Reset
    input  var logic                         clk_i,
    input  var logic                         rst_ni,

    input  var logic                         test_en_i,     // enable all clock gates for testing
    input  var logic[3:0]                    ram_cfg_i,      
    input  var logic                         ram_cfg_en_i,  // cpnfiguration for ram
    input  var logic                         rf_cfg_en_i,
    input  var logic [3:0]                   rf_cfg_i,      // configuration for regfile

    input  var logic [31:0]                  hart_id_i,
    input  var logic [31:0]                  boot_addr_i,

    // Instruction memory interface
    output var logic                         instr_req_o,
    input  var logic                         instr_gnt_i,
    input  var logic                         instr_rvalid_i,
    output var logic [31:0]                  instr_addr_o,
    input  var logic [31:0]                  instr_rdata_i,
    input  var logic                         instr_err_i,

    // Data memory interface
    output var logic                         data_req_o,
    input  var logic                         data_gnt_i,
    input  var logic                         data_rvalid_i,
    output var logic                         data_we_o,
    output var logic [3:0]                   data_be_o,
    output var logic [31:0]                  data_addr_o,
    output var logic [31:0]                  data_wdata_o,
    input  var logic [31:0]                  data_rdata_i,
    input  var logic                         data_err_i,

    //---------------------------------------------------------------------------------
    // CV-X-IF.
    // Issue interface
    input  var logic                                  issue_valid,
    output var logic                                  issue_ready,
    input  var logic[$bits(x_issue_req_t_dtype)-1:0]  issue_req_flatten,
    output var logic[$bits(x_issue_resp_t_dtype)-1:0] issue_resp_flatten,

    //CV-X-IF Register interface signals.
    input  var logic                                  register_valid,
    output var logic                                  register_ready,
    input  var logic[$bits(x_register_t_dtype)-1:0]   register_flatten,

    //CV-X-IF Commit interface signals.
    input  var logic                                  commit_valid,
    input  var logic[$bits(x_commit_t_dtype)-1:0]     commit_flatten,

    //CV-X-IF Result interface signals.
    input  var logic                                  result_ready,
    output var logic                                  result_valid,
    output var logic[$bits(x_result_t_dtype)-1:0]     result_flatten,

    //CSR vec mode.
    input  var logic[$bits(data_csr_dtype)-1:0]       csr_vec_mode_flatten,

    // SSR interfaces
    output var logic [NUM_RF_SSR_PORT-1:0]            ssr_valid_o,
    input  var logic [NUM_RF_SSR_PORT-1:0]            ssr_ready_i,
    output var logic [NUM_RF_SSR_PORT-1:0][4:0]       ssr_addr_o,
    input  var logic [NUM_RF_SSR_READ_PORT-1:0][31:0] ssr_rdata_i,
    output var logic [31:0]                           ssr_wdata_o,

    // SSR config CSR register 
    output var logic [31:0] csr_ssr_cfg_o,
    //---------------------------------------------------------------------------------

    // Interrupt inputs
    input  var logic                         irq_software_i,
    input  var logic                         irq_timer_i,
    input  var logic                         irq_external_i,
    input  var logic [15:0]                  irq_fast_i,
    input  var logic                         irq_nm_i,       // non-maskeable interrupt

    // Debug Interface
    input  var logic                         debug_req_i,
    output var logic [31:0]                  current_pc,
    output var logic [31:0]                  next_pc,
    output var logic [31:0]                  last_data_addr,
    output var logic [31:0]                  exception_addr,

    // CPU Control Signals
    input  var logic                         fetch_enable_i,
    output var logic                         core_sleep_o

);

ram_1p_cfg_t ram_cfg;
always_comb begin
  ram_cfg.ram_cfg.cfg_en = ram_cfg_en_i;
  ram_cfg.ram_cfg.cfg = ram_cfg_i;
  ram_cfg.rf_cfg.cfg_en = rf_cfg_en_i;
  ram_cfg.rf_cfg.cfg = rf_cfg_i;
end

//Interfaces definitions.
snt_std_if  xcs_std();
rvv_cv_x_if xcs_cv_x_if_issue();
rvv_cv_x_if xcs_cv_x_if_register();
rvv_cv_x_if xcs_cv_x_if_commit();
rvv_cv_x_if xcs_cv_x_if_result();
status_if#(.DTYPE(data_csr_dtype)) csr_vec_mode();

//Flatten to Packed conversion.
data_csr_dtype csr_vec_mode_packet;
always_comb csr_vec_mode_packet = csr_vec_mode_flatten;

//std if connections.
always_comb xcs_std.clk                         = clk_i;
always_comb xcs_std.resetn                      = rst_ni;

//Issue interface connections.
always_comb xcs_cv_x_if_issue.issue_valid       = issue_valid;
always_comb issue_ready                         = xcs_cv_x_if_issue.issue_ready;
always_comb xcs_cv_x_if_issue.issue_req         = issue_req_flatten;
always_comb issue_resp_flatten                  = xcs_cv_x_if_issue.issue_resp;

//Register interface connections.
always_comb xcs_cv_x_if_register.register_valid = register_valid;
always_comb register_ready                      = xcs_cv_x_if_register.register_ready;
always_comb xcs_cv_x_if_register.register       = register_flatten;

//Commit interface connections.
always_comb xcs_cv_x_if_commit.commit_valid     = commit_valid;
always_comb xcs_cv_x_if_commit.commit           = commit_flatten;

//Result interface connections.
always_comb xcs_cv_x_if_result.result_ready     = result_ready;
always_comb result_valid                        = xcs_cv_x_if_result.result_valid;
always_comb result_flatten                      = xcs_cv_x_if_result.result;

//CSR status interface.
always_comb csr_vec_mode.packet                 = csr_vec_mode_packet;

crash_dump_t crash_dump;
always_comb begin
  crash_dump.current_pc = current_pc;
  crash_dump.next_pc = next_pc;
  crash_dump.last_data_addr = last_data_addr;
  crash_dump.exception_addr = exception_addr;
end





cve2_top i_cve2_top (

  // Clock and Reset
  .clk_i(clk_i),
  .rst_ni(rst_ni),

  .test_en_i(test_en_i),     // enable all clock gates for testing
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

//---------------------------------------------------------------------------------
  // CV-X-IF.
  // Issue interface
  .xcs_cv_x_if_issue(xcs_cv_x_if_issue),
  // Register interface
  .xcs_cv_x_if_register(xcs_cv_x_if_register),
  // Commit interface
  .xcs_cv_x_if_commit(xcs_cv_x_if_commit),
  // Result interface
  .xcs_cv_x_if_result(xcs_cv_x_if_result),
  // CSR vec mode
  .csr_vec_mode(csr_vec_mode),

  // SSR interfaces
  .ssr_valid_o(ssr_valid_o),
  .ssr_ready_i(ssr_ready_i),
  .ssr_addr_o(ssr_addr_o),
  .ssr_rdata_i(ssr_rdata_i),
  .ssr_wdata_o(ssr_wdata_o),

  // SSR config CSR register 
  .csr_ssr_cfg_o(csr_ssr_cfg_o),
//---------------------------------------------------------------------------------

  // Interrupt inputs
  .irq_software_i(irq_software_i),
  .irq_timer_i(irq_timer_i),
  .irq_external_i(irq_external_i),
  .irq_fast_i(irq_fast_i),
  .irq_nm_i(irq_nm_i),       // non-maskeable interrupt

  // Debug Interface
  .debug_req_i(debug_req_i),
  .crash_dump_o(crash_dump),

  // CPU Control Signals
  .fetch_enable_i(fetch_enable_i),
  .core_sleep_o(core_sleep_o)
);

endmodule