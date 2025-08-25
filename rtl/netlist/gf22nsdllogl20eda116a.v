//----------------------------------------------------------------------------
// Date		: $Date$
// Copyright	: 1997-2022 by Synopsys, Inc., All Rights Reserved.
// Revision	: $Revision$
//----------------------------------------------------------------------------

//----------------------------------------------------------------------------
// Cell model definitions.
//----------------------------------------------------------------------------


`timescale 1ps / 1ps

`ifndef SNPS_SEQ_DELAY
`define SNPS_SEQ_DELAY 10
`endif
`ifndef SNPS_COMBO_DELAY
`define SNPS_COMBO_DELAY 0 
`endif
`ifndef SNPS_CKGT_DELAY
`define SNPS_CKGT_DELAY 0
`endif
`ifndef SNPS_CKGTLT_DELAY
`define SNPS_CKGTLT_DELAY 0
`endif
`ifndef SNPS_LAT_DELAY
`define SNPS_LAT_DELAY 10
`endif

`ifdef VIRL_functiononly
    `delay_mode_distributed
    `define _fv
    `define SNPS_MASK_X_OUT_LATCH
    `ifndef SNPS_STD_PRIMS
      `define SNPS_MASK_ERR_UDP
    `endif
`else
    `delay_mode_path
`endif

//%BEGIN UDBLVT20_ADDABCD_AIY2_1

`celldefine
module UDBLVT20_ADDABCD_AIY2_1 (S, CO, ICO, A, B, C, D, CI);
   output S, CO, ICO;
   input A, B, C, D, CI;

   wire int_res_0, int_res_1, int_res_2, 
      int_res_3, int_res_4, int_res_5, int_res_6, 
      int_res_7;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   xor inst0  (int_res_0, A, B, C);
   and inst1  (int_res_1, int_res_0, D);
   xor inst2  (int_res_2, A, B, C);
   and inst3  (int_res_3, int_res_2, CI);
   and inst4  (int_res_4, D, CI);
   and inst5  (int_res_5, A, B);
   and inst6  (int_res_6, A, C);
   and inst7  (int_res_7, B, C);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      xor #`SNPS_COMBO_DELAY  instt0 (S, A, B, C, D, CI);
      or #`SNPS_COMBO_DELAY  instt1 (CO, int_res_1, int_res_3, int_res_4);
      or #`SNPS_COMBO_DELAY  instt2 (ICO, int_res_5, int_res_6, int_res_7);
   `else
      xor instt0  (S, A, B, C, D, CI);
      or instt1  (CO, int_res_1, int_res_3, int_res_4);
      or instt2  (ICO, int_res_5, int_res_6, int_res_7);

   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (A -=> CO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (A -=> CO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (A -=> CO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (A -=> CO)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (A +=> CO)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (A +=> CO)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (A +=> CO)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (A +=> CO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (B -=> CO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (B -=> CO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (B -=> CO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (B -=> CO)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (B +=> CO)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (B +=> CO)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (B +=> CO)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (B +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b1) (C -=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b0) (C -=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b1) (C -=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b0) (C -=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b0 && D==1'b1) (C +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b1 && D==1'b0) (C +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b0 && D==1'b1) (C +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b1 && D==1'b0) (C +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && CI==1'b0) (D +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && CI==1'b0) (D +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && CI==1'b0) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && CI==1'b0) (D +=> CO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (A +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (A +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b1) (C +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b1) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b1) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b1) (C +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b0 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b1 && D==1'b1) (A +=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (A +=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b0 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b1 && D==1'b1) (A +=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b0 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b1 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b0 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b1 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b0 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b1 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b0 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b1 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b0 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b1 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b0 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b1 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && CI==1'b1) (D +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && CI==1'b1) (D +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && CI==1'b1) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && CI==1'b1) (D +=> S)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_ADDABCD_AIY2_1

//%BEGIN UDBLVT20_ADDABCD_AIY2_2

`celldefine
module UDBLVT20_ADDABCD_AIY2_2 (S, CO, ICO, A, B, C, D, CI);
   output S, CO, ICO;
   input A, B, C, D, CI;

   wire int_res_0, int_res_1, int_res_2, 
      int_res_3, int_res_4, int_res_5, int_res_6, 
      int_res_7;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   xor inst0  (int_res_0, A, B, C);
   and inst1  (int_res_1, int_res_0, D);
   xor inst2  (int_res_2, A, B, C);
   and inst3  (int_res_3, int_res_2, CI);
   and inst4  (int_res_4, D, CI);
   and inst5  (int_res_5, A, B);
   and inst6  (int_res_6, A, C);
   and inst7  (int_res_7, B, C);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      xor #`SNPS_COMBO_DELAY  instt0 (S, A, B, C, D, CI);
      or #`SNPS_COMBO_DELAY  instt1 (CO, int_res_1, int_res_3, int_res_4);
      or #`SNPS_COMBO_DELAY  instt2 (ICO, int_res_5, int_res_6, int_res_7);
   `else
      xor instt0  (S, A, B, C, D, CI);
      or instt1  (CO, int_res_1, int_res_3, int_res_4);
      or instt2  (ICO, int_res_5, int_res_6, int_res_7);

   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (A -=> CO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (A -=> CO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (A -=> CO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (A -=> CO)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (A +=> CO)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (A +=> CO)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (A +=> CO)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (A +=> CO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (B -=> CO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (B -=> CO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (B -=> CO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (B -=> CO)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (B +=> CO)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (B +=> CO)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (B +=> CO)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (B +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b1) (C -=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b0) (C -=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b1) (C -=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b0) (C -=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b0 && D==1'b1) (C +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b1 && D==1'b0) (C +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b0 && D==1'b1) (C +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b1 && D==1'b0) (C +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && CI==1'b0) (D +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && CI==1'b0) (D +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && CI==1'b0) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && CI==1'b0) (D +=> CO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (A +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (A +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b1) (C +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b1) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b1) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b1) (C +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b0 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b1 && D==1'b1) (A +=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (A +=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b0 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b1 && D==1'b1) (A +=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b0 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b1 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b0 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b1 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b0 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b1 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b0 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b1 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b0 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b1 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b0 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b1 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && CI==1'b1) (D +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && CI==1'b1) (D +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && CI==1'b1) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && CI==1'b1) (D +=> S)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_ADDABCD_AIY2_2

//%BEGIN UDBLVT20_ADDABCD_FAIY2_1

`celldefine
module UDBLVT20_ADDABCD_FAIY2_1 (S, CO, ICO, A, B, C, D, CI);
   output S, CO, ICO;
   input A, B, C, D, CI;

   wire int_res_0, int_res_1, int_res_2, 
      int_res_3, int_res_4, int_res_5, int_res_6, 
      int_res_7;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   xor inst0  (int_res_0, A, B, C);
   and inst1  (int_res_1, int_res_0, D);
   xor inst2  (int_res_2, A, B, C);
   and inst3  (int_res_3, int_res_2, CI);
   and inst4  (int_res_4, D, CI);
   and inst5  (int_res_5, A, B);
   and inst6  (int_res_6, A, C);
   and inst7  (int_res_7, B, C);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      xor #`SNPS_COMBO_DELAY  instt0 (S, A, B, C, D, CI);
      or #`SNPS_COMBO_DELAY  instt1 (CO, int_res_1, int_res_3, int_res_4);
      or #`SNPS_COMBO_DELAY  instt2 (ICO, int_res_5, int_res_6, int_res_7);
   `else
      xor instt0  (S, A, B, C, D, CI);
      or instt1  (CO, int_res_1, int_res_3, int_res_4);
      or instt2  (ICO, int_res_5, int_res_6, int_res_7);

   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (A -=> CO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (A -=> CO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (A -=> CO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (A -=> CO)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (A +=> CO)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (A +=> CO)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (A +=> CO)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (A +=> CO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (B -=> CO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (B -=> CO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (B -=> CO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (B -=> CO)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (B +=> CO)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (B +=> CO)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (B +=> CO)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (B +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b1) (C -=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b0) (C -=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b1) (C -=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b0) (C -=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b0 && D==1'b1) (C +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b1 && D==1'b0) (C +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b0 && D==1'b1) (C +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b1 && D==1'b0) (C +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && CI==1'b0) (D +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && CI==1'b0) (D +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && CI==1'b0) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && CI==1'b0) (D +=> CO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (A +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (A +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b1) (C +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b1) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b1) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b1) (C +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b0 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b1 && D==1'b1) (A +=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (A +=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b0 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b1 && D==1'b1) (A +=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b0 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b1 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b0 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b1 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b0 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b1 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b0 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b1 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b0 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b1 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b0 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b1 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && CI==1'b1) (D +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && CI==1'b1) (D +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && CI==1'b1) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && CI==1'b1) (D +=> S)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_ADDABCD_FAIY2_1

//%BEGIN UDBLVT20_ADDABCD_FAIY2_2

`celldefine
module UDBLVT20_ADDABCD_FAIY2_2 (S, CO, ICO, A, B, C, D, CI);
   output S, CO, ICO;
   input A, B, C, D, CI;

   wire int_res_0, int_res_1, int_res_2, 
      int_res_3, int_res_4, int_res_5, int_res_6, 
      int_res_7;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   xor inst0  (int_res_0, A, B, C);
   and inst1  (int_res_1, int_res_0, D);
   xor inst2  (int_res_2, A, B, C);
   and inst3  (int_res_3, int_res_2, CI);
   and inst4  (int_res_4, D, CI);
   and inst5  (int_res_5, A, B);
   and inst6  (int_res_6, A, C);
   and inst7  (int_res_7, B, C);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      xor #`SNPS_COMBO_DELAY  instt0 (S, A, B, C, D, CI);
      or #`SNPS_COMBO_DELAY  instt1 (CO, int_res_1, int_res_3, int_res_4);
      or #`SNPS_COMBO_DELAY  instt2 (ICO, int_res_5, int_res_6, int_res_7);
   `else
      xor instt0  (S, A, B, C, D, CI);
      or instt1  (CO, int_res_1, int_res_3, int_res_4);
      or instt2  (ICO, int_res_5, int_res_6, int_res_7);

   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (A -=> CO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (A -=> CO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (A -=> CO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (A -=> CO)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (A +=> CO)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (A +=> CO)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (A +=> CO)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (A +=> CO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (B -=> CO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (B -=> CO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (B -=> CO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (B -=> CO)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (B +=> CO)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (B +=> CO)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (B +=> CO)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (B +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b1) (C -=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b0) (C -=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b1) (C -=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b0) (C -=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b0 && D==1'b1) (C +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b1 && D==1'b0) (C +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b0 && D==1'b1) (C +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b1 && D==1'b0) (C +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && D==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && D==1'b0) (CI +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && CI==1'b0) (D +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && CI==1'b0) (D +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && CI==1'b0) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && CI==1'b1) (D +=> CO)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && CI==1'b0) (D +=> CO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (A +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (A +=> ICO)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (A +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (B +=> ICO)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (B +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b1) (C +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b1) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b1) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b0) (C +=> ICO)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b1) (C +=> ICO)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b0 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b0 && C==1'b0 && CI==1'b1 && D==1'b1) (A +=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (A +=> S)=(0, 0);
if (B==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b0 && D==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && C==1'b1 && CI==1'b1 && D==1'b1) (A +=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b0 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b1 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b0 && D==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b1 && D==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b0 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b0 && C==1'b0 && CI==1'b1 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b0 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && C==1'b1 && CI==1'b1 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b0 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b0 && CI==1'b1 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b0 && D==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && C==1'b1 && CI==1'b1 && D==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b0 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b1 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b0 && D==1'b1) (C -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b1 && D==1'b0) (C -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b0 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && CI==1'b1 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b0 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && CI==1'b1 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b0 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && CI==1'b1 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b0 && D==1'b0) (C +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && CI==1'b1 && D==1'b1) (C +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && D==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && D==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && D==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && D==1'b1) (CI +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && CI==1'b1) (D -=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && CI==1'b0) (D -=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b0 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b0 && B==1'b0 && C==1'b1 && CI==1'b1) (D +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b0 && CI==1'b1) (D +=> S)=(0, 0);
if (A==1'b0 && B==1'b1 && C==1'b1 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b0 && CI==1'b1) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b0 && C==1'b1 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b0 && CI==1'b0) (D +=> S)=(0, 0);
if (A==1'b1 && B==1'b1 && C==1'b1 && CI==1'b1) (D +=> S)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_ADDABCD_FAIY2_2

`celldefine
module UDBLVT20_ADDFSB_AIY2_1 (SN, CO, A, B, CI);
  input A, B, CI;
  output SN, CO;
  wire int_0, int_1, int_2, int_3, int_4, int_5, int_6, int_7;


    and inst0  (int_0, B, CI);
    and inst1  (int_1, A, CI);
    and inst2  (int_2, A, B);
    or inst3  (int_3, int_2, int_1);
    or inst4  (int_4, int_3, int_0);
    xor inst5  (int_5, A, B);
    xor inst6  (int_6, int_5, CI);
    not inst7  (int_7, int_6);
  `ifdef VIRL_functiononly
    buf #`SNPS_COMBO_DELAY  instt0 (CO, int_4);
    buf #`SNPS_COMBO_DELAY  instt1 (SN, int_7);
  `else
    buf instt0  (CO, int_4);
    buf instt1  (SN, int_7);
  `endif
  `ifdef VIRL_functiononly
  `else

specify
if (B==1'b0 && CI==1'b1) (A +=> CO)=(0, 0);
if (B==1'b1 && CI==1'b0) (A +=> CO)=(0, 0);
if (A==1'b0 && CI==1'b1) (B +=> CO)=(0, 0);
if (A==1'b1 && CI==1'b0) (B +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0) (CI +=> CO)=(0, 0);
if (B==1'b0 && CI==1'b0) (A -=> SN)=(0, 0);
if (B==1'b1 && CI==1'b1) (A -=> SN)=(0, 0);
if (B==1'b0 && CI==1'b1) (A +=> SN)=(0, 0);
if (B==1'b1 && CI==1'b0) (A +=> SN)=(0, 0);
if (A==1'b0 && CI==1'b0) (B -=> SN)=(0, 0);
if (A==1'b1 && CI==1'b1) (B -=> SN)=(0, 0);
if (A==1'b0 && CI==1'b1) (B +=> SN)=(0, 0);
if (A==1'b1 && CI==1'b0) (B +=> SN)=(0, 0);
if (A==1'b0 && B==1'b0) (CI -=> SN)=(0, 0);
if (A==1'b1 && B==1'b1) (CI -=> SN)=(0, 0);
if (A==1'b0 && B==1'b1) (CI +=> SN)=(0, 0);
if (A==1'b1 && B==1'b0) (CI +=> SN)=(0, 0);
endspecify
  `endif
endmodule
`endcelldefine


//%BEGIN UDBLVT20_ADDF_AIY2_0P5

`celldefine
module UDBLVT20_ADDF_AIY2_0P5 (S, CO, A, B, CI);
   output S, CO;
   input A, B, CI;

   wire int_res_0, int_res_1, int_res_2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   and inst0  (int_res_0, A, B);
   and inst1  (int_res_1, A, CI);
   and inst2  (int_res_2, B, CI);
   `ifdef VIRL_functiononly
      xor #`SNPS_COMBO_DELAY  instt0 (S, A, B, CI);
      or #`SNPS_COMBO_DELAY  instt1 (CO, int_res_0, int_res_1, int_res_2);
   `else
      xor instt0  (S, A, B, CI);
      or instt1  (CO, int_res_0, int_res_1, int_res_2);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (B==1'b0 && CI==1'b1) (A +=> CO)=(0, 0);
if (B==1'b1 && CI==1'b0) (A +=> CO)=(0, 0);
if (A==1'b0 && CI==1'b1) (B +=> CO)=(0, 0);
if (A==1'b1 && CI==1'b0) (B +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0) (CI +=> CO)=(0, 0);
if (B==1'b0 && CI==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && CI==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && CI==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && CI==1'b1) (A +=> S)=(0, 0);
if (A==1'b0 && CI==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && CI==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && CI==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && CI==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && B==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b1) (CI +=> S)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_ADDF_AIY2_0P5

//%BEGIN UDBLVT20_ADDF_AIY2_1

`celldefine
module UDBLVT20_ADDF_AIY2_1 (S, CO, A, B, CI);
   output S, CO;
   input A, B, CI;

   wire int_res_0, int_res_1, int_res_2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   and inst0  (int_res_0, A, B);
   and inst1  (int_res_1, A, CI);
   and inst2  (int_res_2, B, CI);
   `ifdef VIRL_functiononly
      xor #`SNPS_COMBO_DELAY  instt0 (S, A, B, CI);
      or #`SNPS_COMBO_DELAY  instt1 (CO, int_res_0, int_res_1, int_res_2);
   `else
      xor instt0  (S, A, B, CI);
      or instt1  (CO, int_res_0, int_res_1, int_res_2);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (B==1'b0 && CI==1'b1) (A +=> CO)=(0, 0);
if (B==1'b1 && CI==1'b0) (A +=> CO)=(0, 0);
if (A==1'b0 && CI==1'b1) (B +=> CO)=(0, 0);
if (A==1'b1 && CI==1'b0) (B +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0) (CI +=> CO)=(0, 0);
if (B==1'b0 && CI==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && CI==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && CI==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && CI==1'b1) (A +=> S)=(0, 0);
if (A==1'b0 && CI==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && CI==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && CI==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && CI==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && B==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b1) (CI +=> S)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_ADDF_AIY2_1

//%BEGIN UDBLVT20_ADDF_AIY2_1P5

`celldefine
module UDBLVT20_ADDF_AIY2_1P5 (S, CO, A, B, CI);
   output S, CO;
   input A, B, CI;

   wire int_res_0, int_res_1, int_res_2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   and inst0  (int_res_0, A, B);
   and inst1  (int_res_1, A, CI);
   and inst2  (int_res_2, B, CI);
   `ifdef VIRL_functiononly
      xor #`SNPS_COMBO_DELAY  instt0 (S, A, B, CI);
      or #`SNPS_COMBO_DELAY  instt1 (CO, int_res_0, int_res_1, int_res_2);
   `else
      xor instt0  (S, A, B, CI);
      or instt1  (CO, int_res_0, int_res_1, int_res_2);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (B==1'b0 && CI==1'b1) (A +=> CO)=(0, 0);
if (B==1'b1 && CI==1'b0) (A +=> CO)=(0, 0);
if (A==1'b0 && CI==1'b1) (B +=> CO)=(0, 0);
if (A==1'b1 && CI==1'b0) (B +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0) (CI +=> CO)=(0, 0);
if (B==1'b0 && CI==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && CI==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && CI==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && CI==1'b1) (A +=> S)=(0, 0);
if (A==1'b0 && CI==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && CI==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && CI==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && CI==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && B==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b1) (CI +=> S)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_ADDF_AIY2_1P5

//%BEGIN UDBLVT20_ADDF_AIY2_2

`celldefine
module UDBLVT20_ADDF_AIY2_2 (S, CO, A, B, CI);
   output S, CO;
   input A, B, CI;

   wire int_res_0, int_res_1, int_res_2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   and inst0  (int_res_0, A, B);
   and inst1  (int_res_1, A, CI);
   and inst2  (int_res_2, B, CI);
   `ifdef VIRL_functiononly
      xor #`SNPS_COMBO_DELAY  instt0 (S, A, B, CI);
      or #`SNPS_COMBO_DELAY  instt1 (CO, int_res_0, int_res_1, int_res_2);
   `else
      xor instt0  (S, A, B, CI);
      or instt1  (CO, int_res_0, int_res_1, int_res_2);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (B==1'b0 && CI==1'b1) (A +=> CO)=(0, 0);
if (B==1'b1 && CI==1'b0) (A +=> CO)=(0, 0);
if (A==1'b0 && CI==1'b1) (B +=> CO)=(0, 0);
if (A==1'b1 && CI==1'b0) (B +=> CO)=(0, 0);
if (A==1'b0 && B==1'b1) (CI +=> CO)=(0, 0);
if (A==1'b1 && B==1'b0) (CI +=> CO)=(0, 0);
if (B==1'b0 && CI==1'b1) (A -=> S)=(0, 0);
if (B==1'b1 && CI==1'b0) (A -=> S)=(0, 0);
if (B==1'b0 && CI==1'b0) (A +=> S)=(0, 0);
if (B==1'b1 && CI==1'b1) (A +=> S)=(0, 0);
if (A==1'b0 && CI==1'b1) (B -=> S)=(0, 0);
if (A==1'b1 && CI==1'b0) (B -=> S)=(0, 0);
if (A==1'b0 && CI==1'b0) (B +=> S)=(0, 0);
if (A==1'b1 && CI==1'b1) (B +=> S)=(0, 0);
if (A==1'b0 && B==1'b1) (CI -=> S)=(0, 0);
if (A==1'b1 && B==1'b0) (CI -=> S)=(0, 0);
if (A==1'b0 && B==1'b0) (CI +=> S)=(0, 0);
if (A==1'b1 && B==1'b1) (CI +=> S)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_ADDF_AIY2_2

//%BEGIN UDBLVT20_ADDH_AI_1

`celldefine
module UDBLVT20_ADDH_AI_1 (S, CO, A, B);
   output S, CO;
   input A, B;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
     xor #`SNPS_COMBO_DELAY  instt0 (S, A, B);
     and #`SNPS_COMBO_DELAY  instt1 (CO, A, B);

   `else
     xor instt0  (S, A, B);
     and instt1  (CO, A, B);

   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (B==1'b1) (A +=> CO)=(0, 0);
if (A==1'b1) (B +=> CO)=(0, 0);
if (B==1'b1) (A -=> S)=(0, 0);
if (B==1'b0) (A +=> S)=(0, 0);
if (A==1'b1) (B -=> S)=(0, 0);
if (A==1'b0) (B +=> S)=(0, 0);
endspecify
    `endif

endmodule
`endcelldefine

//%END UDBLVT20_ADDH_AI_1

//%BEGIN UDBLVT20_ADDH_AI_2

`celldefine
module UDBLVT20_ADDH_AI_2 (S, CO, A, B);
   output S, CO;
   input A, B;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
     xor #`SNPS_COMBO_DELAY  instt0 (S, A, B);
     and #`SNPS_COMBO_DELAY  instt1 (CO, A, B);

   `else
     xor instt0  (S, A, B);
     and instt1  (CO, A, B);

   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (B==1'b1) (A +=> CO)=(0, 0);
if (A==1'b1) (B +=> CO)=(0, 0);
if (B==1'b1) (A -=> S)=(0, 0);
if (B==1'b0) (A +=> S)=(0, 0);
if (A==1'b1) (B -=> S)=(0, 0);
if (A==1'b0) (B +=> S)=(0, 0);
endspecify
    `endif

endmodule
`endcelldefine

//%END UDBLVT20_ADDH_AI_2

//%BEGIN UDBLVT20_BREC_AI_0P5

`celldefine
module UDBLVT20_BREC_AI_0P5 (X1, X2, A0, A1, A2);
   output X1, X2;
   input A0, A1, A2;

   wire int_res_0, int_res_1;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   xor inst0  (int_res_0, A1, A2);
   xnor inst1  ( int_res_1, A1, A0);
   

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
      xnor #`SNPS_COMBO_DELAY  instt0 (X1, A0, A1);
      nand #`SNPS_COMBO_DELAY  instt1 (X2, int_res_0, int_res_1);
   `else
      xnor instt0  (X1, A0, A1);
      nand instt1  (X2, int_res_0, int_res_1);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (A1==1'b0 && A2==1'b0) (A0 -=> X1)=(0, 0);
if (A1==1'b0 && A2==1'b1) (A0 -=> X1)=(0, 0);
if (A1==1'b1 && A2==1'b0) (A0 +=> X1)=(0, 0);
if (A1==1'b1 && A2==1'b1) (A0 +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b0) (A1 -=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b1) (A1 -=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b0) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b1) (A1 +=> X1)=(0, 0);
if (A1==1'b1 && A2==1'b0) (A0 -=> X2)=(0, 0);
if (A1==1'b0 && A2==1'b1) (A0 +=> X2)=(0, 0);
if (A0==1'b1 && A2==1'b0) (A1 -=> X2)=(0, 0);
if (A0==1'b0 && A2==1'b1) (A1 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0) (A2 -=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1) (A2 +=> X2)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BREC_AI_0P5

//%BEGIN UDBLVT20_BREC_V1AI_1

`celldefine
module UDBLVT20_BREC_V1AI_1 (X1, X2, A0, A1, A2);
   output X1, X2;
   input A0, A1, A2;

   wire int_res_0, int_res_1;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   xor inst0  (int_res_0, A1, A2);
   xnor inst1  ( int_res_1, A1, A0);
   

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
      xnor #`SNPS_COMBO_DELAY  instt0 (X1, A0, A1);
      nand #`SNPS_COMBO_DELAY  instt1 (X2, int_res_0, int_res_1);
   `else
      xnor instt0  (X1, A0, A1);
      nand instt1  (X2, int_res_0, int_res_1);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (A1==1'b0 && A2==1'b0) (A0 -=> X1)=(0, 0);
if (A1==1'b0 && A2==1'b1) (A0 -=> X1)=(0, 0);
if (A1==1'b1 && A2==1'b0) (A0 +=> X1)=(0, 0);
if (A1==1'b1 && A2==1'b1) (A0 +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b0) (A1 -=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b1) (A1 -=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b0) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b1) (A1 +=> X1)=(0, 0);
if (A1==1'b1 && A2==1'b0) (A0 -=> X2)=(0, 0);
if (A1==1'b0 && A2==1'b1) (A0 +=> X2)=(0, 0);
if (A0==1'b1 && A2==1'b0) (A1 -=> X2)=(0, 0);
if (A0==1'b0 && A2==1'b1) (A1 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0) (A2 -=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1) (A2 +=> X2)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BREC_V1AI_1

//%BEGIN UDBLVT20_BREC_V1AI_2

`celldefine
module UDBLVT20_BREC_V1AI_2 (X1, X2, A0, A1, A2);
   output X1, X2;
   input A0, A1, A2;

   wire int_res_0, int_res_1;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   xor inst0  (int_res_0, A1, A2);
   xnor inst1  ( int_res_1, A1, A0);
   

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
      xnor #`SNPS_COMBO_DELAY  instt0 (X1, A0, A1);
      nand #`SNPS_COMBO_DELAY  instt1 (X2, int_res_0, int_res_1);
   `else
      xnor instt0  (X1, A0, A1);
      nand instt1  (X2, int_res_0, int_res_1);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (A1==1'b0 && A2==1'b0) (A0 -=> X1)=(0, 0);
if (A1==1'b0 && A2==1'b1) (A0 -=> X1)=(0, 0);
if (A1==1'b1 && A2==1'b0) (A0 +=> X1)=(0, 0);
if (A1==1'b1 && A2==1'b1) (A0 +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b0) (A1 -=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b1) (A1 -=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b0) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b1) (A1 +=> X1)=(0, 0);
if (A1==1'b1 && A2==1'b0) (A0 -=> X2)=(0, 0);
if (A1==1'b0 && A2==1'b1) (A0 +=> X2)=(0, 0);
if (A0==1'b1 && A2==1'b0) (A1 -=> X2)=(0, 0);
if (A0==1'b0 && A2==1'b1) (A1 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0) (A2 -=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1) (A2 +=> X2)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BREC_V1AI_2

//%BEGIN UDBLVT20_BREC_V3AI_1

`celldefine
module UDBLVT20_BREC_V3AI_1 (X1, X2, A0, A1, A2);
   output X1, X2;
   input A0, A1, A2;

   wire int_res_0, int_res_1;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   xor inst0  (int_res_0, A1, A2);
   xnor inst1  ( int_res_1, A1, A0);
   

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
      xnor #`SNPS_COMBO_DELAY  instt0 (X1, A0, A1);
      nand #`SNPS_COMBO_DELAY  instt1 (X2, int_res_0, int_res_1);
   `else
      xnor instt0  (X1, A0, A1);
      nand instt1  (X2, int_res_0, int_res_1);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (A1==1'b0 && A2==1'b0) (A0 -=> X1)=(0, 0);
if (A1==1'b0 && A2==1'b1) (A0 -=> X1)=(0, 0);
if (A1==1'b1 && A2==1'b0) (A0 +=> X1)=(0, 0);
if (A1==1'b1 && A2==1'b1) (A0 +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b0) (A1 -=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b1) (A1 -=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b0) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b1) (A1 +=> X1)=(0, 0);
if (A1==1'b1 && A2==1'b0) (A0 -=> X2)=(0, 0);
if (A1==1'b0 && A2==1'b1) (A0 +=> X2)=(0, 0);
if (A0==1'b1 && A2==1'b0) (A1 -=> X2)=(0, 0);
if (A0==1'b0 && A2==1'b1) (A1 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0) (A2 -=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1) (A2 +=> X2)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BREC_V3AI_1

//%BEGIN UDBLVT20_BREC_V4AIY2_1

`celldefine
module UDBLVT20_BREC_V4AIY2_1 (X1, X2, A0, A1, A2);
   output X1, X2;
   input A0, A1, A2;

   wire int_res_0, int_res_1;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   xor inst0  (int_res_0, A1, A2);
   xnor inst1  ( int_res_1, A1, A0);
   

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
      xnor #`SNPS_COMBO_DELAY  instt0 (X1, A0, A1);
      nand #`SNPS_COMBO_DELAY  instt1 (X2, int_res_0, int_res_1);
   `else
      xnor instt0  (X1, A0, A1);
      nand instt1  (X2, int_res_0, int_res_1);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (A1==1'b0 && A2==1'b0) (A0 -=> X1)=(0, 0);
if (A1==1'b0 && A2==1'b1) (A0 -=> X1)=(0, 0);
if (A1==1'b1 && A2==1'b0) (A0 +=> X1)=(0, 0);
if (A1==1'b1 && A2==1'b1) (A0 +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b0) (A1 -=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b1) (A1 -=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b0) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b1) (A1 +=> X1)=(0, 0);
if (A1==1'b1 && A2==1'b0) (A0 -=> X2)=(0, 0);
if (A1==1'b0 && A2==1'b1) (A0 +=> X2)=(0, 0);
if (A0==1'b1 && A2==1'b0) (A1 -=> X2)=(0, 0);
if (A0==1'b0 && A2==1'b1) (A1 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0) (A2 -=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1) (A2 +=> X2)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BREC_V4AIY2_1

//%BEGIN UDBLVT20_BSEL_AI_0P5

`celldefine
module UDBLVT20_BSEL_AI_0P5 (PP, BN1, N, B1, BN0, X2, X1);
   output PP, BN1;
   input N, B1, BN0, X2, X1;

   wire int_res_0, int_res_1, int_res_2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   xnor inst0  (int_res_0, N, B1);
   or inst1  (int_res_1, int_res_0, X1);
   or inst2  (int_res_2, BN0, X2);
     

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
      xnor #`SNPS_COMBO_DELAY  instt0 (BN1, N, B1);
      nand #`SNPS_COMBO_DELAY  instt1 (PP, int_res_1, int_res_2);
   `else
      xnor instt0  (BN1, N, B1);
      nand instt1  (PP, int_res_1, int_res_2);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (BN0==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b1 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b1 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b1 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b1 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b0 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b1 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b1 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b1 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b1 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b0 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b1 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b1 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b1 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b1 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b0 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b1 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b1 && X2==1'b1) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b1 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b1 && X2==1'b1) (N +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 -=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b0) (B1 -=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 -=> PP)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 +=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b0) (B1 +=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 +=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N +=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N +=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N +=> PP)=(0, 0);
if (B1==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b0 && N==1'b0 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b0 && N==1'b1 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b1 && N==1'b0 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b1 && N==1'b1 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b1 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && N==1'b1 && X2==1'b0) (X1 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && N==1'b1 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b0 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && N==1'b0 && X2==1'b0) (X1 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && N==1'b0 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b0 && X1==1'b0) (X2 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b0 && X1==1'b1) (X2 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b1 && X1==1'b1) (X2 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b0 && X1==1'b1) (X2 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b1 && X1==1'b0) (X2 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b1 && X1==1'b1) (X2 -=> PP)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BSEL_AI_0P5

//%BEGIN UDBLVT20_BSEL_V1AI_1

`celldefine
module UDBLVT20_BSEL_V1AI_1 (PP, BN1, N, B1, BN0, X2, X1);
   output PP, BN1;
   input N, B1, BN0, X2, X1;

   wire int_res_0, int_res_1, int_res_2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   xnor inst0  (int_res_0, N, B1);
   or inst1  (int_res_1, int_res_0, X1);
   or inst2  (int_res_2, BN0, X2);
     

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
      xnor #`SNPS_COMBO_DELAY  instt0 (BN1, N, B1);
      nand #`SNPS_COMBO_DELAY  instt1 (PP, int_res_1, int_res_2);
   `else
      xnor instt0  (BN1, N, B1);
      nand instt1  (PP, int_res_1, int_res_2);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (BN0==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b1 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b1 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b1 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b1 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b0 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b1 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b1 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b1 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b1 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b0 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b1 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b1 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b1 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b1 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b0 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b1 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b1 && X2==1'b1) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b1 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b1 && X2==1'b1) (N +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 -=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b0) (B1 -=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 -=> PP)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 +=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b0) (B1 +=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 +=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N +=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N +=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N +=> PP)=(0, 0);
if (B1==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b0 && N==1'b0 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b0 && N==1'b1 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b1 && N==1'b0 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b1 && N==1'b1 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b1 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && N==1'b1 && X2==1'b0) (X1 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && N==1'b1 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b0 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && N==1'b0 && X2==1'b0) (X1 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && N==1'b0 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b0 && X1==1'b0) (X2 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b0 && X1==1'b1) (X2 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b1 && X1==1'b1) (X2 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b0 && X1==1'b1) (X2 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b1 && X1==1'b0) (X2 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b1 && X1==1'b1) (X2 -=> PP)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BSEL_V1AI_1

//%BEGIN UDBLVT20_BSEL_V1AI_2

`celldefine
module UDBLVT20_BSEL_V1AI_2 (PP, BN1, N, B1, BN0, X2, X1);
   output PP, BN1;
   input N, B1, BN0, X2, X1;

   wire int_res_0, int_res_1, int_res_2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   xnor inst0  (int_res_0, N, B1);
   or inst1  (int_res_1, int_res_0, X1);
   or inst2  (int_res_2, BN0, X2);
     

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
      xnor #`SNPS_COMBO_DELAY  instt0 (BN1, N, B1);
      nand #`SNPS_COMBO_DELAY  instt1 (PP, int_res_1, int_res_2);
   `else
      xnor instt0  (BN1, N, B1);
      nand instt1  (PP, int_res_1, int_res_2);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (BN0==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b1 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b1 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b1 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b1 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b0 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b1 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b1 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b1 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b1 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b0 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b1 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b1 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b1 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b1 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b0 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b1 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b1 && X2==1'b1) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b1 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b1 && X2==1'b1) (N +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 -=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b0) (B1 -=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 -=> PP)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 +=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b0) (B1 +=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 +=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N +=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N +=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N +=> PP)=(0, 0);
if (B1==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b0 && N==1'b0 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b0 && N==1'b1 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b1 && N==1'b0 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b1 && N==1'b1 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b1 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && N==1'b1 && X2==1'b0) (X1 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && N==1'b1 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b0 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && N==1'b0 && X2==1'b0) (X1 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && N==1'b0 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b0 && X1==1'b0) (X2 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b0 && X1==1'b1) (X2 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b1 && X1==1'b1) (X2 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b0 && X1==1'b1) (X2 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b1 && X1==1'b0) (X2 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b1 && X1==1'b1) (X2 -=> PP)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BSEL_V1AI_2

//%BEGIN UDBLVT20_BSEL_V2AI_0P5

`celldefine
module UDBLVT20_BSEL_V2AI_0P5 (PP, BN1, N, B1, BN0, X2, X1);
   output PP, BN1;
   input N, B1, BN0, X2, X1;

   wire int_res_0, int_res_1, int_res_2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   xnor inst0  (int_res_0, N, B1);
   or inst1  (int_res_1, int_res_0, X1);
   or inst2  (int_res_2, BN0, X2);
     

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
      xnor #`SNPS_COMBO_DELAY  instt0 (BN1, N, B1);
      nand #`SNPS_COMBO_DELAY  instt1 (PP, int_res_1, int_res_2);
   `else
      xnor instt0  (BN1, N, B1);
      nand instt1  (PP, int_res_1, int_res_2);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (BN0==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b1 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b1 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b1 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b1 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b0 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b1 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b1 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b1 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b1 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b0 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b1 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b1 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b1 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b1 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b0 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b1 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b1 && X2==1'b1) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b1 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b1 && X2==1'b1) (N +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 -=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b0) (B1 -=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 -=> PP)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 +=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b0) (B1 +=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 +=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N +=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N +=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N +=> PP)=(0, 0);
if (B1==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b0 && N==1'b0 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b0 && N==1'b1 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b1 && N==1'b0 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b1 && N==1'b1 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b1 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && N==1'b1 && X2==1'b0) (X1 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && N==1'b1 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b0 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && N==1'b0 && X2==1'b0) (X1 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && N==1'b0 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b0 && X1==1'b0) (X2 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b0 && X1==1'b1) (X2 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b1 && X1==1'b1) (X2 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b0 && X1==1'b1) (X2 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b1 && X1==1'b0) (X2 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b1 && X1==1'b1) (X2 -=> PP)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BSEL_V2AI_0P5

//%BEGIN UDBLVT20_BSEL_V3AI_1

`celldefine
module UDBLVT20_BSEL_V3AI_1 (PP, BN1, N, B1, BN0, X2, X1);
   output PP, BN1;
   input N, B1, BN0, X2, X1;

   wire int_res_0, int_res_1, int_res_2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   xnor inst0  (int_res_0, N, B1);
   or inst1  (int_res_1, int_res_0, X1);
   or inst2  (int_res_2, BN0, X2);
     

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
      xnor #`SNPS_COMBO_DELAY  instt0 (BN1, N, B1);
      nand #`SNPS_COMBO_DELAY  instt1 (PP, int_res_1, int_res_2);
   `else
      xnor instt0  (BN1, N, B1);
      nand instt1  (PP, int_res_1, int_res_2);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (BN0==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b1 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b1 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b1 && X2==1'b0) (B1 -=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b1 && X2==1'b1) (B1 -=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b0 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b1 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b1 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b1 && X2==1'b0) (B1 +=> BN1)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b1 && X2==1'b1) (B1 +=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b0 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b1 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b1 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b1 && X2==1'b0) (N -=> BN1)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b1 && X2==1'b1) (N -=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b0 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b1 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b1 && X2==1'b1) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b1 && X2==1'b0) (N +=> BN1)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b1 && X2==1'b1) (N +=> BN1)=(0, 0);
if (BN0==1'b0 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 -=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b0) (B1 -=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b1) (B1 -=> PP)=(0, 0);
if (BN0==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 +=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b0) (B1 +=> PP)=(0, 0);
if (BN0==1'b1 && N==1'b0 && X1==1'b0 && X2==1'b1) (B1 +=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && X1==1'b0 && X2==1'b1) (N +=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b0) (N +=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && X1==1'b0 && X2==1'b1) (N +=> PP)=(0, 0);
if (B1==1'b0 && N==1'b0 && X1==1'b0 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b0 && N==1'b0 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b0 && N==1'b1 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b1 && N==1'b0 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b1 && N==1'b1 && X1==1'b0 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b1 && N==1'b1 && X1==1'b1 && X2==1'b0) (BN0 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b1 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && N==1'b1 && X2==1'b0) (X1 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b1 && N==1'b1 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b0 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && N==1'b0 && X2==1'b0) (X1 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b1 && N==1'b0 && X2==1'b1) (X1 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b0 && X1==1'b0) (X2 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b0 && X1==1'b1) (X2 -=> PP)=(0, 0);
if (B1==1'b0 && BN0==1'b0 && N==1'b1 && X1==1'b1) (X2 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b0 && X1==1'b1) (X2 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b1 && X1==1'b0) (X2 -=> PP)=(0, 0);
if (B1==1'b1 && BN0==1'b0 && N==1'b1 && X1==1'b1) (X2 -=> PP)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BSEL_V3AI_1

//%BEGIN UDBLVT20_BUF_AI_10

`celldefine
module UDBLVT20_BUF_AI_10 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_AI_10

//%BEGIN UDBLVT20_BUF_AI_12

`celldefine
module UDBLVT20_BUF_AI_12 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_AI_12

//%BEGIN UDBLVT20_BUF_AI_14

`celldefine
module UDBLVT20_BUF_AI_14 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_AI_14

//%BEGIN UDBLVT20_BUF_AI_16

`celldefine
module UDBLVT20_BUF_AI_16 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_AI_16

//%BEGIN UDBLVT20_BUF_AI_2

`celldefine
module UDBLVT20_BUF_AI_2 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_AI_2

//%BEGIN UDBLVT20_BUF_AI_20

`celldefine
module UDBLVT20_BUF_AI_20 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_AI_20

//%BEGIN UDBLVT20_BUF_AI_24

`celldefine
module UDBLVT20_BUF_AI_24 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_AI_24

//%BEGIN UDBLVT20_BUF_AI_28

`celldefine
module UDBLVT20_BUF_AI_28 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_AI_28

//%BEGIN UDBLVT20_BUF_AI_3

`celldefine
module UDBLVT20_BUF_AI_3 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_AI_3

//%BEGIN UDBLVT20_BUF_AI_32

`celldefine
module UDBLVT20_BUF_AI_32 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_AI_32

//%BEGIN UDBLVT20_BUF_AI_4

`celldefine
module UDBLVT20_BUF_AI_4 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_AI_4

//%BEGIN UDBLVT20_BUF_AI_5

`celldefine
module UDBLVT20_BUF_AI_5 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_AI_5

//%BEGIN UDBLVT20_BUF_AI_6

`celldefine
module UDBLVT20_BUF_AI_6 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_AI_6

//%BEGIN UDBLVT20_BUF_AI_7

`celldefine
module UDBLVT20_BUF_AI_7 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_AI_7

//%BEGIN UDBLVT20_BUF_AI_8

`celldefine
module UDBLVT20_BUF_AI_8 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_AI_8

//%BEGIN UDBLVT20_BUF_LPAI_28

`celldefine
module UDBLVT20_BUF_LPAI_28 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_LPAI_28

//%BEGIN UDBLVT20_BUF_LPAI_32

`celldefine
module UDBLVT20_BUF_LPAI_32 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_LPAI_32

//%BEGIN UDBLVT20_BUF_LPAI_7

`celldefine
module UDBLVT20_BUF_LPAI_7 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       buf instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_BUF_LPAI_7

//%BEGIN UDBLVT20_EN2_AIY2_1

`celldefine
module UDBLVT20_EN2_AIY2_1 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       xnor #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
       xnor instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b0) (A1 -=> X)=(0, 0);
if (A2==1'b1) (A1 +=> X)=(0, 0);
if (A1==1'b0) (A2 -=> X)=(0, 0);
if (A1==1'b1) (A2 +=> X)=(0, 0);
endspecify
    `endif

endmodule
`endcelldefine

//%END UDBLVT20_EN2_AIY2_1

//%BEGIN UDBLVT20_EO2_AIY2_1

`celldefine
module UDBLVT20_EO2_AIY2_1 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
         xor #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
         xor instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b1) (A1 -=> X)=(0, 0);
if (A2==1'b0) (A1 +=> X)=(0, 0);
if (A1==1'b1) (A2 -=> X)=(0, 0);
if (A1==1'b0) (A2 +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDBLVT20_EO2_AIY2_1

