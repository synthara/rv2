// ---------------------------------------------------------------------------
//  Copyright (C) Synthara. All rights reserved.
//  Developed at Synthara, Zurich, Switzerland
//  All rights reserved. Reproduction in whole or part is prohibited without
//  the written permission of the copyright owner.
// ---------------------------------------------------------------------------

//The following interface is compliant with the CV-X_IF bus specification available at
//https://docs.openhwgroup.org/projects/openhw-group-core-v-xif/en/latest/x_ext.html#cv-x-if


import rvv_autogen_specs_pkg::*;
import rvv_autogen_params_pkg::*;
import rvv_autogen_enums_pkg::*;
import rvv_autogen_dtypes_pkg::*;
import rvv_autogen_structs_pkg::*;

interface rvv_cv_x_if;

    //Compressed interface signals.
    logic                     compressed_valid;
    logic                     compressed_ready;
    x_compressed_req_t_dtype  compressed_req;
    x_compressed_resp_t_dtype compressed_resp;

    //Issue interface signals.
    logic                     issue_valid;
    logic                     issue_ready;
    x_issue_req_t_dtype       issue_req;
    x_issue_resp_t_dtype      issue_resp;

    //Register interface signals.
    logic                     register_valid;
    logic                     register_ready;
    x_register_t_dtype        register;

    //Commit interface signals.
    logic                     commit_valid;
    x_commit_t_dtype          commit;

    //Result interface.
    logic                     result_valid;
    logic                     result_ready;
    x_result_t_dtype          result;


    //Processor side.
    modport cv_x_if_compressed_mst (
        output compressed_valid,
        input  compressed_ready,
        output compressed_req,
        input  compressed_resp
    );

    modport cv_x_if_issue_mst (
        output issue_valid,
        input  issue_ready,
        output issue_req,
        input  issue_resp
    );

    modport cv_x_if_register_mst (
        output register_valid,
        input  register_ready,
        output register
    );

    modport cv_x_if_commit_mst (
        output commit_valid,
        output commit
    );

    modport cv_x_if_result_mst (
        input  result_valid,
        output result_ready,
        input  result
    );

    //Co-processor side.
    modport cv_x_if_compressed_slv (
        input  compressed_valid,
        output compressed_ready,
        input  compressed_req,
        output compressed_resp
    );

    modport cv_x_if_issue_slv (
        input  issue_valid,
        output issue_ready,
        input  issue_req,
        output issue_resp
    );

    modport cv_x_if_register_slv (
        input  register_valid,
        output register_ready,
        input  register
    );

    modport cv_x_if_commit_slv (
        input  commit_valid,
        input  commit
    );

    modport cv_x_if_result_slv (
        output result_valid,
        input  result_ready,
        output result
    );

endinterface