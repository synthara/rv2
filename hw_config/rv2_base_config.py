rv2_base = {
    "config_name": "rv2_base",

    "rtl_files": [],

    ## TODO: All the following can be avoided just by including the cv32e20_manifest.flist
    "rtl_incdirs": [
        "/../shared/rtl/",
        "/../rtl",
        "/../shared/rtl/sim",
        "/../vendor/lowrisc_ip/ip/prim/rtl",
        "/../vendor/lowrisc_ip/dv/sv/dv_utils",
    ],

    "rtl_dependencies": [ 
        "rtl/cve2_pkg.sv",
        "rtl/cve2_tracer_pkg.sv",
        "rtl/../vendor/lowrisc_ip/ip/prim/rtl/prim_secded_pkg.sv",
        "rtl/../vendor/lowrisc_ip/ip/prim/rtl/prim_ram_1p_pkg.sv",
        "rtl/cve2_alu.sv",
        "rtl/cve2_compressed_decoder.sv",
        "rtl/cve2_controller.sv",
        "rtl/cve2_cs_registers.sv",
        "rtl/cve2_csr.sv",
        "rtl/cve2_counter.sv",
        "rtl/cve2_decoder.sv",
        "rtl/cve2_ex_block.sv",
        "rtl/cve2_fetch_fifo.sv",
        "rtl/cve2_id_stage.sv",
        "rtl/cve2_if_stage.sv",
        "rtl/cve2_load_store_unit.sv",
        "rtl/cve2_multdiv_fast.sv",
        "rtl/cve2_multdiv_slow.sv",
        "rtl/cve2_prefetch_buffer.sv",
        "rtl/cve2_pmp.sv",
        "rtl/cve2_register_file_ff.sv",
        "rtl/cve2_wb.sv",
        "rtl/cve2_core.sv",
        "rtl/cve2_top.sv",
        "rtl/cve2_top_tracing.sv",
        "rtl/cve2_tracer.sv",
    ],

    "tb_files": [],

    "tb_incdirs": [],

    "tb_dependencies": [], #TODO The TB is based on the old DSL library so it needs ddl as well

    "verilog_wrapper": "",

    "variants": [],
}
