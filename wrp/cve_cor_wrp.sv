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