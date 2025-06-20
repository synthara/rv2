cve_cor = {
    "config_name": "cve_cor",

    "rtl_files": [  
        "rtl/cve2_pkg.sv",
        "vendor/lowrisc_ip/ip/prim/rtl/prim_secded_pkg.sv",
        "vendor/lowrisc_ip/ip/prim/rtl/prim_ram_1p_pkg.sv",
        "rtl/cve2_alu.sv",
        "rtl/cve2_compressed_decoder.sv",
        "rtl/cve2_controller.sv",
        "rtl/cve2_cs_registers.sv",
        "rtl/cve2_csr.sv",
        "rtl/cve2_counter.sv",
        "rtl/cve2_decoder.sv",
        "rtl/cve2_ex_block.sv",
        "rtl/cve2_fetch_fifo.sv",
        "rtl/cve2_hwloop_regs.sv",
        "rtl/cve2_id_stage.sv",
        "rtl/cve2_if_stage.sv",
        "rtl/cve2_load_store_unit.sv",
        "rtl/cve2_multdiv_fast.sv",
        "rtl/cve2_multdiv_slow.sv",
        "rtl/cve2_prefetch_buffer.sv",
        "rtl/cve2_pmp.sv",
        "rtl/cve2_register_file_ff.sv",
        "rtl/cve2_register_file_ff_wrp.sv",
        "rtl/cve2_wb.sv",
        "bhv/cve2_sim_clock_gate.sv",
        "rtl/cve2_core.sv",
        
        "vendor/lowrisc_ip/ip/prim_generic/rtl/prim_generic_buf.sv",
        "vendor/lowrisc_ip/ip/prim_generic/rtl/prim_generic_clock_gating.sv",
        "rtl/cve2_top.sv"
    ],

    "rtl_incdirs": ["shared/rtl/",
                    "rtl",
                    "shared/rtl/sim",
                    "vendor/lowrisc_ip/ip/prim/rtl",
                    "vendor/lowrisc_ip/dv/sv/dv_utils"
                    ],

    "rtl_dependencies": ["ddl_base"],

    "tb_files": [],

    "tb_incdirs": [],

    "tb_dependencies": [], 

    "verilog_wrapper": "wrp/cve_cor_wrp.sv",

    "variants": [],

}
