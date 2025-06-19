//----------------------------------------------------------------------------
// Date		: $Date: 2023/03/24 05:54:58 $
// Copyright	: 1997-2023 by Synopsys, Inc., All Rights Reserved.
// Revision	: $Revision: 1.4 $
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

//%BEGIN UDPUHT28_BUF_PNR_1

`celldefine
module UDPUHT28_BUF_PNR_1 (X, A);
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

//%END UDPUHT28_BUF_PNR_1

//%BEGIN UDPUHT28_BUF_PNR_16

`celldefine
module UDPUHT28_BUF_PNR_16 (X, A);
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

//%END UDPUHT28_BUF_PNR_16

//%BEGIN UDPUHT28_BUF_PNR_2

`celldefine
module UDPUHT28_BUF_PNR_2 (X, A);
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

//%END UDPUHT28_BUF_PNR_2

//%BEGIN UDPUHT28_BUF_PNR_4

`celldefine
module UDPUHT28_BUF_PNR_4 (X, A);
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

//%END UDPUHT28_BUF_PNR_4

//%BEGIN UDPUHT28_BUF_PNR_8

`celldefine
module UDPUHT28_BUF_PNR_8 (X, A);
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

//%END UDPUHT28_BUF_PNR_8

`celldefine
module UDPUHT28_CLAMPB_DY7_2 (X, A);
  input A;
  output X;


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


`celldefine
module UDPUHT28_CLAMPB_SY7_2 (X, A);
  input A;
  output X;


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


//%BEGIN UDPUHT28_FSB2DPQ_PV2NR_1

`celldefine
module UDPUHT28_FSB2DPQ_PV2NR_1 (Q, CK, D, SI, SE, B1, B2);
  input CK, D, SI, SE, B1, B2;
  output Q;
  reg viol_0;
    wire xcr_9;
     wire viol_x;
  wire int_4, int_5, int_6, int_7, iq, lq, int_res_iq;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_B1, B1);
    buf inst5  (delayed_B2, B2);
  `endif


    and inst6  (int_4, delayed_B2, lq);
    not inst7  (int_5, delayed_B2);
    or inst8  (int_6, int_5, lq);
    not inst9  (int_7, int_6);
  `ifndef SNPS_MASK_ERR_UDP
    snps_dff_sr_err inst10  (xcr_9, delayed_CK, int_res_iq, int_4, int_7);
  `else
    assign xcr_9=1'bz;
  `endif
    snps_dff_sr_0 insts0  (iq, viol_0, delayed_CK, int_res_iq, int_4, int_7, xcr_9);
    snps_latch insts1  (lq, viol_x, delayed_B1, iq);
    snps_mux2 inst11  (int_res_iq, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst12  (ENABLE_NOT_B2, B2);
not inst13  (ENABLE_NOT_B1, B1);
not inst14  (_net_0, B2);
not inst15  (_net_1, B1);
not inst16  (_net_2, SI);
and inst17  (_net_3, _net_0, _net_1, SE, _net_2);
not inst18  (_net_4, B2);
not inst19  (_net_5, B1);
not inst20  (_net_6, D);
not inst21  (_net_7, SE);
and inst22  (_net_8, _net_4, _net_5, _net_6, _net_7);
or inst23  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_NOT_SI, _net_3, _net_8);
not inst24  (_net_9, B2);
not inst25  (_net_10, B1);
and inst26  (_net_11, _net_9, _net_10, SE, SI);
not inst27  (_net_12, B2);
not inst28  (_net_13, B1);
not inst29  (_net_14, SE);
and inst30  (_net_15, _net_12, _net_13, D, _net_14);
or inst31  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_SI, _net_11, _net_15);
not inst32  (_net_16, B2);
not inst33  (_net_17, B1);
not inst34  (_net_18, SE);
and inst35  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_SE, _net_16, _net_17, _net_18);
not inst36  (_net_19, B2);
not inst37  (_net_20, B1);
not inst38  (_net_21, D);
and inst39  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SI, _net_19, _net_20, _net_21, SI);
not inst40  (_net_22, B2);
not inst41  (_net_23, B1);
not inst42  (_net_24, SI);
and inst43  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SI, _net_22, _net_23, D, _net_24);
not inst44  (_net_25, B2);
not inst45  (_net_26, B1);
not inst46  (_net_27, D);
and inst47  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE, _net_25, _net_26, _net_27, SE);
not inst48  (_net_28, B2);
not inst49  (_net_29, B1);
and inst50  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE, _net_28, _net_29, D, SE);

specify
if (B1==1'b0 && CK==1'b0) (posedge B2 => (Q:B2))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge B1 &&&  ENABLE_NOT_B2==1'b1 , 0 ,0, viol_0);
$width(posedge B2 &&&  ENABLE_NOT_B1==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_SE==1'b1 , posedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_SE==1'b1 , negedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
  $setuphold(posedge CK &&&  ENABLE_NOT_B2==1'b1, negedge B1 &&&  ENABLE_NOT_B2==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(negedge CK &&&  ENABLE_NOT_B2==1'b1, posedge B1 &&&  ENABLE_NOT_B2==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(posedge CK &&&  ENABLE_NOT_B1==1'b1, negedge B2 &&&  ENABLE_NOT_B1==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
  $setuphold(negedge CK &&&  ENABLE_NOT_B1==1'b1, posedge B2 &&&  ENABLE_NOT_B1==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
endspecify
  `endif
endmodule
`endcelldefine

//%END UDPUHT28_FSB2DPQ_PV2NR_1

//%BEGIN UDPUHT28_FSB2DPQ_PV2NR_2

`celldefine
module UDPUHT28_FSB2DPQ_PV2NR_2 (Q, CK, D, SI, SE, B1, B2);
  input CK, D, SI, SE, B1, B2;
  output Q;
  reg viol_0;
    wire xcr_9;
     wire viol_x;
  wire int_4, int_5, int_6, int_7, iq, lq, int_res_iq;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_B1, B1);
    buf inst5  (delayed_B2, B2);
  `endif


    and inst6  (int_4, delayed_B2, lq);
    not inst7  (int_5, delayed_B2);
    or inst8  (int_6, int_5, lq);
    not inst9  (int_7, int_6);
  `ifndef SNPS_MASK_ERR_UDP
    snps_dff_sr_err inst10  (xcr_9, delayed_CK, int_res_iq, int_4, int_7);
  `else
    assign xcr_9=1'bz;
  `endif
    snps_dff_sr_0 insts0  (iq, viol_0, delayed_CK, int_res_iq, int_4, int_7, xcr_9);
    snps_latch insts1  (lq, viol_x, delayed_B1, iq);
    snps_mux2 inst11  (int_res_iq, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst12  (ENABLE_NOT_B2, B2);
not inst13  (ENABLE_NOT_B1, B1);
not inst14  (_net_0, B2);
not inst15  (_net_1, B1);
not inst16  (_net_2, SI);
and inst17  (_net_3, _net_0, _net_1, SE, _net_2);
not inst18  (_net_4, B2);
not inst19  (_net_5, B1);
not inst20  (_net_6, D);
not inst21  (_net_7, SE);
and inst22  (_net_8, _net_4, _net_5, _net_6, _net_7);
or inst23  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_NOT_SI, _net_3, _net_8);
not inst24  (_net_9, B2);
not inst25  (_net_10, B1);
and inst26  (_net_11, _net_9, _net_10, SE, SI);
not inst27  (_net_12, B2);
not inst28  (_net_13, B1);
not inst29  (_net_14, SE);
and inst30  (_net_15, _net_12, _net_13, D, _net_14);
or inst31  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_SI, _net_11, _net_15);
not inst32  (_net_16, B2);
not inst33  (_net_17, B1);
not inst34  (_net_18, SE);
and inst35  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_SE, _net_16, _net_17, _net_18);
not inst36  (_net_19, B2);
not inst37  (_net_20, B1);
not inst38  (_net_21, D);
and inst39  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SI, _net_19, _net_20, _net_21, SI);
not inst40  (_net_22, B2);
not inst41  (_net_23, B1);
not inst42  (_net_24, SI);
and inst43  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SI, _net_22, _net_23, D, _net_24);
not inst44  (_net_25, B2);
not inst45  (_net_26, B1);
not inst46  (_net_27, D);
and inst47  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE, _net_25, _net_26, _net_27, SE);
not inst48  (_net_28, B2);
not inst49  (_net_29, B1);
and inst50  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE, _net_28, _net_29, D, SE);

specify
if (B1==1'b0 && CK==1'b0) (posedge B2 => (Q:B2))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge B1 &&&  ENABLE_NOT_B2==1'b1 , 0 ,0, viol_0);
$width(posedge B2 &&&  ENABLE_NOT_B1==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_SE==1'b1 , posedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_SE==1'b1 , negedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
  $setuphold(posedge CK &&&  ENABLE_NOT_B2==1'b1, negedge B1 &&&  ENABLE_NOT_B2==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(negedge CK &&&  ENABLE_NOT_B2==1'b1, posedge B1 &&&  ENABLE_NOT_B2==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(posedge CK &&&  ENABLE_NOT_B1==1'b1, negedge B2 &&&  ENABLE_NOT_B1==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
  $setuphold(negedge CK &&&  ENABLE_NOT_B1==1'b1, posedge B2 &&&  ENABLE_NOT_B1==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
endspecify
  `endif
endmodule
`endcelldefine

//%END UDPUHT28_FSB2DPQ_PV2NR_2

//%BEGIN UDPUHT28_FSB2DPQ_PV2NR_4

`celldefine
module UDPUHT28_FSB2DPQ_PV2NR_4 (Q, CK, D, SI, SE, B1, B2);
  input CK, D, SI, SE, B1, B2;
  output Q;
  reg viol_0;
    wire xcr_9;
     wire viol_x;
  wire int_4, int_5, int_6, int_7, iq, lq, int_res_iq;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_B1, B1);
    buf inst5  (delayed_B2, B2);
  `endif


    and inst6  (int_4, delayed_B2, lq);
    not inst7  (int_5, delayed_B2);
    or inst8  (int_6, int_5, lq);
    not inst9  (int_7, int_6);
  `ifndef SNPS_MASK_ERR_UDP
    snps_dff_sr_err inst10  (xcr_9, delayed_CK, int_res_iq, int_4, int_7);
  `else
    assign xcr_9=1'bz;
  `endif
    snps_dff_sr_0 insts0  (iq, viol_0, delayed_CK, int_res_iq, int_4, int_7, xcr_9);
    snps_latch insts1  (lq, viol_x, delayed_B1, iq);
    snps_mux2 inst11  (int_res_iq, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst12  (ENABLE_NOT_B2, B2);
not inst13  (ENABLE_NOT_B1, B1);
not inst14  (_net_0, B2);
not inst15  (_net_1, B1);
not inst16  (_net_2, SI);
and inst17  (_net_3, _net_0, _net_1, SE, _net_2);
not inst18  (_net_4, B2);
not inst19  (_net_5, B1);
not inst20  (_net_6, D);
not inst21  (_net_7, SE);
and inst22  (_net_8, _net_4, _net_5, _net_6, _net_7);
or inst23  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_NOT_SI, _net_3, _net_8);
not inst24  (_net_9, B2);
not inst25  (_net_10, B1);
and inst26  (_net_11, _net_9, _net_10, SE, SI);
not inst27  (_net_12, B2);
not inst28  (_net_13, B1);
not inst29  (_net_14, SE);
and inst30  (_net_15, _net_12, _net_13, D, _net_14);
or inst31  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_SI, _net_11, _net_15);
not inst32  (_net_16, B2);
not inst33  (_net_17, B1);
not inst34  (_net_18, SE);
and inst35  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_SE, _net_16, _net_17, _net_18);
not inst36  (_net_19, B2);
not inst37  (_net_20, B1);
not inst38  (_net_21, D);
and inst39  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SI, _net_19, _net_20, _net_21, SI);
not inst40  (_net_22, B2);
not inst41  (_net_23, B1);
not inst42  (_net_24, SI);
and inst43  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SI, _net_22, _net_23, D, _net_24);
not inst44  (_net_25, B2);
not inst45  (_net_26, B1);
not inst46  (_net_27, D);
and inst47  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE, _net_25, _net_26, _net_27, SE);
not inst48  (_net_28, B2);
not inst49  (_net_29, B1);
and inst50  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE, _net_28, _net_29, D, SE);

specify
if (B1==1'b0 && CK==1'b0) (posedge B2 => (Q:B2))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge B1 &&&  ENABLE_NOT_B2==1'b1 , 0 ,0, viol_0);
$width(posedge B2 &&&  ENABLE_NOT_B1==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_SE==1'b1 , posedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_SE==1'b1 , negedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
  $setuphold(posedge CK &&&  ENABLE_NOT_B2==1'b1, negedge B1 &&&  ENABLE_NOT_B2==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(negedge CK &&&  ENABLE_NOT_B2==1'b1, posedge B1 &&&  ENABLE_NOT_B2==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(posedge CK &&&  ENABLE_NOT_B1==1'b1, negedge B2 &&&  ENABLE_NOT_B1==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
  $setuphold(negedge CK &&&  ENABLE_NOT_B1==1'b1, posedge B2 &&&  ENABLE_NOT_B1==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
endspecify
  `endif
endmodule
`endcelldefine

//%END UDPUHT28_FSB2DPQ_PV2NR_4

//%BEGIN UDPUHT28_FSB2DPRBQ_PV2NR_1

`celldefine
module UDPUHT28_FSB2DPRBQ_PV2NR_1 (Q, CK, D, SI, SE, RD, B1, B2);
  input CK, D, SI, SE, RD, B1, B2;
  output Q;
  reg viol_0;
    wire xcr_11;
     wire viol_x;
  wire int_4, int_5, int_6, int_7, int_8, int_9, iq, lq, int_res_iq;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_B1, B1);
    buf inst5  (delayed_B2, B2);
    buf inst6  (delayed_RD, RD);
  `endif


    and inst7  (int_4, delayed_B2, lq);
    not inst8  (int_5, delayed_B2);
    or inst9  (int_6, int_5, lq);
    not inst10  (int_7, int_6);
    not inst11  (int_8, delayed_RD);
    or inst12  (int_9, int_8, int_7);
  `ifndef SNPS_MASK_ERR_UDP
    snps_dff_sr_err inst13  (xcr_11, delayed_CK, int_res_iq, int_4, int_9);
  `else
    assign xcr_11=1'bz;
  `endif
    snps_dff_sr_0 insts0  (iq, viol_0, delayed_CK, int_res_iq, int_4, int_9, xcr_11);
    snps_latch insts1  (lq, viol_x, delayed_B1, iq);
    snps_mux2 inst14  (int_res_iq, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst15  (_net_0, B2);
and inst16  (ENABLE_NOT_B2_AND_RD, RD, _net_0);
not inst17  (_net_1, B1);
and inst18  (ENABLE_NOT_B1_AND_RD, RD, _net_1);
not inst19  (_net_2, B2);
not inst20  (_net_3, B1);
not inst21  (_net_4, SI);
and inst22  (_net_5, _net_2, _net_3, RD, SE, _net_4);
not inst23  (_net_6, B2);
not inst24  (_net_7, B1);
not inst25  (_net_8, D);
not inst26  (_net_9, SE);
and inst27  (_net_10, _net_6, _net_7, _net_8, RD, _net_9);
or inst28  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_RD_AND_SE_AND_NOT_SI, _net_5, _net_10);
not inst29  (_net_11, B2);
not inst30  (_net_12, B1);
and inst31  (_net_13, _net_11, _net_12, RD, SE, SI);
not inst32  (_net_14, B2);
not inst33  (_net_15, B1);
not inst34  (_net_16, SE);
and inst35  (_net_17, _net_14, _net_15, D, RD, _net_16);
or inst36  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_RD_AND_SE_AND_SI, _net_13, _net_17);
not inst37  (_net_18, B2);
not inst38  (_net_19, B1);
not inst39  (_net_20, SE);
and inst40  (ENABLE_NOT_B1_AND_NOT_B2_AND_RD_AND_NOT_SE, _net_18, _net_19, RD, _net_20);
not inst41  (_net_21, B2);
not inst42  (_net_22, B1);
not inst43  (_net_23, D);
and inst44  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE_AND_SI, _net_21, _net_22, _net_23, SE, SI);
not inst45  (_net_24, B2);
not inst46  (_net_25, B1);
not inst47  (_net_26, SE);
and inst48  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SE, _net_24, _net_25, D, _net_26);
not inst49  (_net_27, B2);
not inst50  (_net_28, B1);
and inst51  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE_AND_SI, _net_27, _net_28, D, SE, SI);
not inst52  (_net_29, B2);
not inst53  (_net_30, B1);
not inst54  (_net_31, CK);
not inst55  (_net_32, SI);
and inst56  (_net_33, _net_29, _net_30, _net_31, SE, _net_32);
not inst57  (_net_34, B2);
not inst58  (_net_35, B1);
not inst59  (_net_36, CK);
not inst60  (_net_37, D);
not inst61  (_net_38, SE);
and inst62  (_net_39, _net_34, _net_35, _net_36, _net_37, _net_38);
or inst63  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_NOT_SI, _net_33, _net_39);
not inst64  (_net_40, B2);
not inst65  (_net_41, B1);
not inst66  (_net_42, CK);
and inst67  (_net_43, _net_40, _net_41, _net_42, SE, SI);
not inst68  (_net_44, B2);
not inst69  (_net_45, B1);
not inst70  (_net_46, CK);
not inst71  (_net_47, SE);
and inst72  (_net_48, _net_44, _net_45, _net_46, D, _net_47);
or inst73  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_SI, _net_43, _net_48);
not inst74  (_net_49, B2);
not inst75  (_net_50, B1);
and inst76  (ENABLE_NOT_B1_AND_NOT_B2_AND_CK, _net_49, _net_50, CK);
not inst77  (_net_51, B2);
not inst78  (_net_52, B1);
not inst79  (_net_53, D);
and inst80  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SI, _net_51, _net_52, _net_53, RD, SI);
not inst81  (_net_54, B2);
not inst82  (_net_55, B1);
not inst83  (_net_56, SI);
and inst84  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SI, _net_54, _net_55, D, RD, _net_56);
not inst85  (_net_57, B2);
not inst86  (_net_58, B1);
not inst87  (_net_59, D);
and inst88  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SE, _net_57, _net_58, _net_59, RD, SE);
not inst89  (_net_60, B2);
not inst90  (_net_61, B1);
and inst91  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_SE, _net_60, _net_61, D, RD, SE);

specify
if (B1==1'b0 && B2==1'b0 && CK==1'b0 && D==1'b0 && SE==1'b0 || B1==1'b0 && B2==1'b0 && CK==1'b0 && SE==1'b1 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (B1==1'b0 && B2==1'b0 && CK==1'b0 && D==1'b1 && SE==1'b0 || B1==1'b0 && B2==1'b0 && CK==1'b0 && SE==1'b1 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (B1==1'b0 && B2==1'b0 && CK==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
(negedge RD => (Q : 1'b0))=(0, 0);
if (B1==1'b0 && CK==1'b0 && RD==1'b1) (posedge B2 => (Q:B2))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge B1 &&&  ENABLE_NOT_B2_AND_RD==1'b1 , 0 ,0, viol_0);
$width(posedge B2 &&&  ENABLE_NOT_B1_AND_RD==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_RD_AND_NOT_SE==1'b1 , posedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_RD_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_RD_AND_NOT_SE==1'b1 , negedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_RD_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge RD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SE==1'b1 , posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$width(negedge RD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_CK==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
  $setuphold(posedge CK &&&  ENABLE_NOT_B2_AND_RD==1'b1, negedge B1 &&&  ENABLE_NOT_B2_AND_RD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(negedge CK &&&  ENABLE_NOT_B2_AND_RD==1'b1, posedge B1 &&&  ENABLE_NOT_B2_AND_RD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_RD==1'b1, negedge B2 &&&  ENABLE_NOT_B1_AND_RD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
  $setuphold(negedge CK &&&  ENABLE_NOT_B1_AND_RD==1'b1, posedge B2 &&&  ENABLE_NOT_B1_AND_RD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
  $setuphold(negedge B1, negedge RD, 0, 0, viol_0, , , delayed_B1, delayed_RD);
endspecify
  `endif
endmodule
`endcelldefine

//%END UDPUHT28_FSB2DPRBQ_PV2NR_1

//%BEGIN UDPUHT28_FSB2DPRBQ_PV2NR_4

`celldefine
module UDPUHT28_FSB2DPRBQ_PV2NR_4 (Q, CK, D, SI, SE, RD, B1, B2);
  input CK, D, SI, SE, RD, B1, B2;
  output Q;
  reg viol_0;
    wire xcr_11;
     wire viol_x;
  wire int_4, int_5, int_6, int_7, int_8, int_9, iq, lq, int_res_iq;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_B1, B1);
    buf inst5  (delayed_B2, B2);
    buf inst6  (delayed_RD, RD);
  `endif


    and inst7  (int_4, delayed_B2, lq);
    not inst8  (int_5, delayed_B2);
    or inst9  (int_6, int_5, lq);
    not inst10  (int_7, int_6);
    not inst11  (int_8, delayed_RD);
    or inst12  (int_9, int_8, int_7);
  `ifndef SNPS_MASK_ERR_UDP
    snps_dff_sr_err inst13  (xcr_11, delayed_CK, int_res_iq, int_4, int_9);
  `else
    assign xcr_11=1'bz;
  `endif
    snps_dff_sr_0 insts0  (iq, viol_0, delayed_CK, int_res_iq, int_4, int_9, xcr_11);
    snps_latch insts1  (lq, viol_x, delayed_B1, iq);
    snps_mux2 inst14  (int_res_iq, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst15  (_net_0, B2);
and inst16  (ENABLE_NOT_B2_AND_RD, RD, _net_0);
not inst17  (_net_1, B1);
and inst18  (ENABLE_NOT_B1_AND_RD, RD, _net_1);
not inst19  (_net_2, B2);
not inst20  (_net_3, B1);
not inst21  (_net_4, SI);
and inst22  (_net_5, _net_2, _net_3, RD, SE, _net_4);
not inst23  (_net_6, B2);
not inst24  (_net_7, B1);
not inst25  (_net_8, D);
not inst26  (_net_9, SE);
and inst27  (_net_10, _net_6, _net_7, _net_8, RD, _net_9);
or inst28  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_RD_AND_SE_AND_NOT_SI, _net_5, _net_10);
not inst29  (_net_11, B2);
not inst30  (_net_12, B1);
and inst31  (_net_13, _net_11, _net_12, RD, SE, SI);
not inst32  (_net_14, B2);
not inst33  (_net_15, B1);
not inst34  (_net_16, SE);
and inst35  (_net_17, _net_14, _net_15, D, RD, _net_16);
or inst36  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_RD_AND_SE_AND_SI, _net_13, _net_17);
not inst37  (_net_18, B2);
not inst38  (_net_19, B1);
not inst39  (_net_20, SE);
and inst40  (ENABLE_NOT_B1_AND_NOT_B2_AND_RD_AND_NOT_SE, _net_18, _net_19, RD, _net_20);
not inst41  (_net_21, B2);
not inst42  (_net_22, B1);
not inst43  (_net_23, D);
and inst44  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE_AND_SI, _net_21, _net_22, _net_23, SE, SI);
not inst45  (_net_24, B2);
not inst46  (_net_25, B1);
not inst47  (_net_26, SE);
and inst48  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SE, _net_24, _net_25, D, _net_26);
not inst49  (_net_27, B2);
not inst50  (_net_28, B1);
and inst51  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE_AND_SI, _net_27, _net_28, D, SE, SI);
not inst52  (_net_29, B2);
not inst53  (_net_30, B1);
not inst54  (_net_31, CK);
not inst55  (_net_32, SI);
and inst56  (_net_33, _net_29, _net_30, _net_31, SE, _net_32);
not inst57  (_net_34, B2);
not inst58  (_net_35, B1);
not inst59  (_net_36, CK);
not inst60  (_net_37, D);
not inst61  (_net_38, SE);
and inst62  (_net_39, _net_34, _net_35, _net_36, _net_37, _net_38);
or inst63  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_NOT_SI, _net_33, _net_39);
not inst64  (_net_40, B2);
not inst65  (_net_41, B1);
not inst66  (_net_42, CK);
and inst67  (_net_43, _net_40, _net_41, _net_42, SE, SI);
not inst68  (_net_44, B2);
not inst69  (_net_45, B1);
not inst70  (_net_46, CK);
not inst71  (_net_47, SE);
and inst72  (_net_48, _net_44, _net_45, _net_46, D, _net_47);
or inst73  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_SI, _net_43, _net_48);
not inst74  (_net_49, B2);
not inst75  (_net_50, B1);
and inst76  (ENABLE_NOT_B1_AND_NOT_B2_AND_CK, _net_49, _net_50, CK);
not inst77  (_net_51, B2);
not inst78  (_net_52, B1);
not inst79  (_net_53, D);
and inst80  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SI, _net_51, _net_52, _net_53, RD, SI);
not inst81  (_net_54, B2);
not inst82  (_net_55, B1);
not inst83  (_net_56, SI);
and inst84  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SI, _net_54, _net_55, D, RD, _net_56);
not inst85  (_net_57, B2);
not inst86  (_net_58, B1);
not inst87  (_net_59, D);
and inst88  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SE, _net_57, _net_58, _net_59, RD, SE);
not inst89  (_net_60, B2);
not inst90  (_net_61, B1);
and inst91  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_SE, _net_60, _net_61, D, RD, SE);

specify
if (B1==1'b0 && B2==1'b0 && CK==1'b0 && D==1'b0 && SE==1'b0 || B1==1'b0 && B2==1'b0 && CK==1'b0 && SE==1'b1 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (B1==1'b0 && B2==1'b0 && CK==1'b0 && D==1'b1 && SE==1'b0 || B1==1'b0 && B2==1'b0 && CK==1'b0 && SE==1'b1 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (B1==1'b0 && B2==1'b0 && CK==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
(negedge RD => (Q : 1'b0))=(0, 0);
if (B1==1'b0 && CK==1'b0 && RD==1'b1) (posedge B2 => (Q:B2))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge B1 &&&  ENABLE_NOT_B2_AND_RD==1'b1 , 0 ,0, viol_0);
$width(posedge B2 &&&  ENABLE_NOT_B1_AND_RD==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_RD_AND_NOT_SE==1'b1 , posedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_RD_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_RD_AND_NOT_SE==1'b1 , negedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_RD_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge RD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SE==1'b1 , posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$width(negedge RD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_CK==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
  $setuphold(posedge CK &&&  ENABLE_NOT_B2_AND_RD==1'b1, negedge B1 &&&  ENABLE_NOT_B2_AND_RD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(negedge CK &&&  ENABLE_NOT_B2_AND_RD==1'b1, posedge B1 &&&  ENABLE_NOT_B2_AND_RD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_RD==1'b1, negedge B2 &&&  ENABLE_NOT_B1_AND_RD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
  $setuphold(negedge CK &&&  ENABLE_NOT_B1_AND_RD==1'b1, posedge B2 &&&  ENABLE_NOT_B1_AND_RD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
  $setuphold(negedge B1, negedge RD, 0, 0, viol_0, , , delayed_B1, delayed_RD);
endspecify
  `endif
endmodule
`endcelldefine

//%END UDPUHT28_FSB2DPRBQ_PV2NR_4

//%BEGIN UDPUHT28_FSB2DPSBQ_PV2NR_1

`celldefine
module UDPUHT28_FSB2DPSBQ_PV2NR_1 (Q, CK, D, SI, SE, SD, B1, B2);
  input CK, D, SI, SE, SD, B1, B2;
  output Q;
  reg viol_0;
    wire xcr_11;
     wire viol_x;
  wire int_4, int_5, int_6, int_7, int_8, int_9, iq, lq, int_res_iq;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_B1, B1);
    buf inst5  (delayed_B2, B2);
    buf inst6  (delayed_SD, SD);
  `endif


    and inst7  (int_4, delayed_B2, lq);
    not inst8  (int_5, delayed_SD);
    or inst9  (int_6, int_5, int_4);
    not inst10  (int_7, delayed_B2);
    or inst11  (int_8, int_7, lq);
    not inst12  (int_9, int_8);
  `ifndef SNPS_MASK_ERR_UDP
    snps_dff_sr_err inst13  (xcr_11, delayed_CK, int_res_iq, int_6, int_9);
  `else
    assign xcr_11=1'bz;
  `endif
    snps_dff_sr_0 insts0  (iq, viol_0, delayed_CK, int_res_iq, int_6, int_9, xcr_11);
    snps_latch insts1  (lq, viol_x, delayed_B1, iq);
    snps_mux2 inst14  (int_res_iq, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst15  (_net_0, B2);
and inst16  (ENABLE_NOT_B2_AND_SD, SD, _net_0);
not inst17  (_net_1, B1);
and inst18  (ENABLE_NOT_B1_AND_SD, SD, _net_1);
not inst19  (_net_2, B2);
not inst20  (_net_3, B1);
not inst21  (_net_4, SI);
and inst22  (_net_5, _net_2, _net_3, SD, SE, _net_4);
not inst23  (_net_6, B2);
not inst24  (_net_7, B1);
not inst25  (_net_8, D);
not inst26  (_net_9, SE);
and inst27  (_net_10, _net_6, _net_7, _net_8, SD, _net_9);
or inst28  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_NOT_SI, _net_5, _net_10);
not inst29  (_net_11, B2);
not inst30  (_net_12, B1);
and inst31  (_net_13, _net_11, _net_12, SD, SE, SI);
not inst32  (_net_14, B2);
not inst33  (_net_15, B1);
not inst34  (_net_16, SE);
and inst35  (_net_17, _net_14, _net_15, D, SD, _net_16);
or inst36  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_SI, _net_13, _net_17);
not inst37  (_net_18, B2);
not inst38  (_net_19, B1);
not inst39  (_net_20, SE);
and inst40  (ENABLE_NOT_B1_AND_NOT_B2_AND_SD_AND_NOT_SE, _net_18, _net_19, SD, _net_20);
not inst41  (_net_21, B2);
not inst42  (_net_22, B1);
not inst43  (_net_23, D);
not inst44  (_net_24, SE);
and inst45  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE, _net_21, _net_22, _net_23, _net_24);
not inst46  (_net_25, B2);
not inst47  (_net_26, B1);
not inst48  (_net_27, D);
not inst49  (_net_28, SI);
and inst50  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE_AND_NOT_SI, _net_25, _net_26, _net_27, SE, _net_28);
not inst51  (_net_29, B2);
not inst52  (_net_30, B1);
not inst53  (_net_31, SI);
and inst54  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE_AND_NOT_SI, _net_29, _net_30, D, SE, _net_31);
not inst55  (_net_32, B2);
not inst56  (_net_33, B1);
not inst57  (_net_34, CK);
not inst58  (_net_35, SI);
and inst59  (_net_36, _net_32, _net_33, _net_34, SE, _net_35);
not inst60  (_net_37, B2);
not inst61  (_net_38, B1);
not inst62  (_net_39, CK);
not inst63  (_net_40, D);
not inst64  (_net_41, SE);
and inst65  (_net_42, _net_37, _net_38, _net_39, _net_40, _net_41);
or inst66  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_NOT_SI, _net_36, _net_42);
not inst67  (_net_43, B2);
not inst68  (_net_44, B1);
not inst69  (_net_45, CK);
and inst70  (_net_46, _net_43, _net_44, _net_45, SE, SI);
not inst71  (_net_47, B2);
not inst72  (_net_48, B1);
not inst73  (_net_49, CK);
not inst74  (_net_50, SE);
and inst75  (_net_51, _net_47, _net_48, _net_49, D, _net_50);
or inst76  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_SI, _net_46, _net_51);
not inst77  (_net_52, B2);
not inst78  (_net_53, B1);
and inst79  (ENABLE_NOT_B1_AND_NOT_B2_AND_CK, _net_52, _net_53, CK);
not inst80  (_net_54, B2);
not inst81  (_net_55, B1);
not inst82  (_net_56, D);
and inst83  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SI, _net_54, _net_55, _net_56, SD, SI);
not inst84  (_net_57, B2);
not inst85  (_net_58, B1);
not inst86  (_net_59, SI);
and inst87  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SI, _net_57, _net_58, D, SD, _net_59);
not inst88  (_net_60, B2);
not inst89  (_net_61, B1);
not inst90  (_net_62, D);
and inst91  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SE, _net_60, _net_61, _net_62, SD, SE);
not inst92  (_net_63, B2);
not inst93  (_net_64, B1);
and inst94  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_SE, _net_63, _net_64, D, SD, SE);

specify
if (B1==1'b0 && B2==1'b0 && CK==1'b0 && D==1'b0 && SE==1'b0 || B1==1'b0 && B2==1'b0 && CK==1'b0 && SE==1'b1 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (B1==1'b0 && B2==1'b0 && CK==1'b0 && D==1'b1 && SE==1'b0 || B1==1'b0 && B2==1'b0 && CK==1'b0 && SE==1'b1 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (B1==1'b0 && B2==1'b0 && CK==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
(negedge SD => (Q : 1'b1))=(0, 0);
if (B1==1'b0 && CK==1'b0 && SD==1'b1) (posedge B2 => (Q:B2))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge B1 &&&  ENABLE_NOT_B2_AND_SD==1'b1 , 0 ,0, viol_0);
$width(posedge B2 &&&  ENABLE_NOT_B1_AND_SD==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_SD_AND_NOT_SE==1'b1 , posedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_SD_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_SD_AND_NOT_SE==1'b1 , negedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_SD_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE==1'b1 , posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$width(negedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_CK==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
  $setuphold(posedge CK &&&  ENABLE_NOT_B2_AND_SD==1'b1, negedge B1 &&&  ENABLE_NOT_B2_AND_SD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(negedge CK &&&  ENABLE_NOT_B2_AND_SD==1'b1, posedge B1 &&&  ENABLE_NOT_B2_AND_SD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_SD==1'b1, negedge B2 &&&  ENABLE_NOT_B1_AND_SD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
  $setuphold(negedge CK &&&  ENABLE_NOT_B1_AND_SD==1'b1, posedge B2 &&&  ENABLE_NOT_B1_AND_SD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
  $setuphold(negedge B1, negedge SD, 0, 0, viol_0, , , delayed_B1, delayed_SD);
endspecify
  `endif
endmodule
`endcelldefine

//%END UDPUHT28_FSB2DPSBQ_PV2NR_1

//%BEGIN UDPUHT28_FSB2DPSBQ_PV2NR_2

`celldefine
module UDPUHT28_FSB2DPSBQ_PV2NR_2 (Q, CK, D, SI, SE, SD, B1, B2);
  input CK, D, SI, SE, SD, B1, B2;
  output Q;
  reg viol_0;
    wire xcr_11;
     wire viol_x;
  wire int_4, int_5, int_6, int_7, int_8, int_9, iq, lq, int_res_iq;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_B1, B1);
    buf inst5  (delayed_B2, B2);
    buf inst6  (delayed_SD, SD);
  `endif


    and inst7  (int_4, delayed_B2, lq);
    not inst8  (int_5, delayed_SD);
    or inst9  (int_6, int_5, int_4);
    not inst10  (int_7, delayed_B2);
    or inst11  (int_8, int_7, lq);
    not inst12  (int_9, int_8);
  `ifndef SNPS_MASK_ERR_UDP
    snps_dff_sr_err inst13  (xcr_11, delayed_CK, int_res_iq, int_6, int_9);
  `else
    assign xcr_11=1'bz;
  `endif
    snps_dff_sr_0 insts0  (iq, viol_0, delayed_CK, int_res_iq, int_6, int_9, xcr_11);
    snps_latch insts1  (lq, viol_x, delayed_B1, iq);
    snps_mux2 inst14  (int_res_iq, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst15  (_net_0, B2);
and inst16  (ENABLE_NOT_B2_AND_SD, SD, _net_0);
not inst17  (_net_1, B1);
and inst18  (ENABLE_NOT_B1_AND_SD, SD, _net_1);
not inst19  (_net_2, B2);
not inst20  (_net_3, B1);
not inst21  (_net_4, SI);
and inst22  (_net_5, _net_2, _net_3, SD, SE, _net_4);
not inst23  (_net_6, B2);
not inst24  (_net_7, B1);
not inst25  (_net_8, D);
not inst26  (_net_9, SE);
and inst27  (_net_10, _net_6, _net_7, _net_8, SD, _net_9);
or inst28  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_NOT_SI, _net_5, _net_10);
not inst29  (_net_11, B2);
not inst30  (_net_12, B1);
and inst31  (_net_13, _net_11, _net_12, SD, SE, SI);
not inst32  (_net_14, B2);
not inst33  (_net_15, B1);
not inst34  (_net_16, SE);
and inst35  (_net_17, _net_14, _net_15, D, SD, _net_16);
or inst36  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_SI, _net_13, _net_17);
not inst37  (_net_18, B2);
not inst38  (_net_19, B1);
not inst39  (_net_20, SE);
and inst40  (ENABLE_NOT_B1_AND_NOT_B2_AND_SD_AND_NOT_SE, _net_18, _net_19, SD, _net_20);
not inst41  (_net_21, B2);
not inst42  (_net_22, B1);
not inst43  (_net_23, D);
not inst44  (_net_24, SE);
and inst45  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE, _net_21, _net_22, _net_23, _net_24);
not inst46  (_net_25, B2);
not inst47  (_net_26, B1);
not inst48  (_net_27, D);
not inst49  (_net_28, SI);
and inst50  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE_AND_NOT_SI, _net_25, _net_26, _net_27, SE, _net_28);
not inst51  (_net_29, B2);
not inst52  (_net_30, B1);
not inst53  (_net_31, SI);
and inst54  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE_AND_NOT_SI, _net_29, _net_30, D, SE, _net_31);
not inst55  (_net_32, B2);
not inst56  (_net_33, B1);
not inst57  (_net_34, CK);
not inst58  (_net_35, SI);
and inst59  (_net_36, _net_32, _net_33, _net_34, SE, _net_35);
not inst60  (_net_37, B2);
not inst61  (_net_38, B1);
not inst62  (_net_39, CK);
not inst63  (_net_40, D);
not inst64  (_net_41, SE);
and inst65  (_net_42, _net_37, _net_38, _net_39, _net_40, _net_41);
or inst66  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_NOT_SI, _net_36, _net_42);
not inst67  (_net_43, B2);
not inst68  (_net_44, B1);
not inst69  (_net_45, CK);
and inst70  (_net_46, _net_43, _net_44, _net_45, SE, SI);
not inst71  (_net_47, B2);
not inst72  (_net_48, B1);
not inst73  (_net_49, CK);
not inst74  (_net_50, SE);
and inst75  (_net_51, _net_47, _net_48, _net_49, D, _net_50);
or inst76  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_SI, _net_46, _net_51);
not inst77  (_net_52, B2);
not inst78  (_net_53, B1);
and inst79  (ENABLE_NOT_B1_AND_NOT_B2_AND_CK, _net_52, _net_53, CK);
not inst80  (_net_54, B2);
not inst81  (_net_55, B1);
not inst82  (_net_56, D);
and inst83  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SI, _net_54, _net_55, _net_56, SD, SI);
not inst84  (_net_57, B2);
not inst85  (_net_58, B1);
not inst86  (_net_59, SI);
and inst87  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SI, _net_57, _net_58, D, SD, _net_59);
not inst88  (_net_60, B2);
not inst89  (_net_61, B1);
not inst90  (_net_62, D);
and inst91  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SE, _net_60, _net_61, _net_62, SD, SE);
not inst92  (_net_63, B2);
not inst93  (_net_64, B1);
and inst94  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_SE, _net_63, _net_64, D, SD, SE);

specify
if (B1==1'b0 && B2==1'b0 && CK==1'b0 && D==1'b0 && SE==1'b0 || B1==1'b0 && B2==1'b0 && CK==1'b0 && SE==1'b1 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (B1==1'b0 && B2==1'b0 && CK==1'b0 && D==1'b1 && SE==1'b0 || B1==1'b0 && B2==1'b0 && CK==1'b0 && SE==1'b1 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (B1==1'b0 && B2==1'b0 && CK==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
(negedge SD => (Q : 1'b1))=(0, 0);
if (B1==1'b0 && CK==1'b0 && SD==1'b1) (posedge B2 => (Q:B2))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge B1 &&&  ENABLE_NOT_B2_AND_SD==1'b1 , 0 ,0, viol_0);
$width(posedge B2 &&&  ENABLE_NOT_B1_AND_SD==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_SD_AND_NOT_SE==1'b1 , posedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_SD_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_SD_AND_NOT_SE==1'b1 , negedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_SD_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE==1'b1 , posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$width(negedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_CK==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
  $setuphold(posedge CK &&&  ENABLE_NOT_B2_AND_SD==1'b1, negedge B1 &&&  ENABLE_NOT_B2_AND_SD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(negedge CK &&&  ENABLE_NOT_B2_AND_SD==1'b1, posedge B1 &&&  ENABLE_NOT_B2_AND_SD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_SD==1'b1, negedge B2 &&&  ENABLE_NOT_B1_AND_SD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
  $setuphold(negedge CK &&&  ENABLE_NOT_B1_AND_SD==1'b1, posedge B2 &&&  ENABLE_NOT_B1_AND_SD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
  $setuphold(negedge B1, negedge SD, 0, 0, viol_0, , , delayed_B1, delayed_SD);
endspecify
  `endif
endmodule
`endcelldefine

//%END UDPUHT28_FSB2DPSBQ_PV2NR_2

//%BEGIN UDPUHT28_FSB2DPSBQ_PV2NR_4

`celldefine
module UDPUHT28_FSB2DPSBQ_PV2NR_4 (Q, CK, D, SI, SE, SD, B1, B2);
  input CK, D, SI, SE, SD, B1, B2;
  output Q;
  reg viol_0;
    wire xcr_11;
     wire viol_x;
  wire int_4, int_5, int_6, int_7, int_8, int_9, iq, lq, int_res_iq;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_B1, B1);
    buf inst5  (delayed_B2, B2);
    buf inst6  (delayed_SD, SD);
  `endif


    and inst7  (int_4, delayed_B2, lq);
    not inst8  (int_5, delayed_SD);
    or inst9  (int_6, int_5, int_4);
    not inst10  (int_7, delayed_B2);
    or inst11  (int_8, int_7, lq);
    not inst12  (int_9, int_8);
  `ifndef SNPS_MASK_ERR_UDP
    snps_dff_sr_err inst13  (xcr_11, delayed_CK, int_res_iq, int_6, int_9);
  `else
    assign xcr_11=1'bz;
  `endif
    snps_dff_sr_0 insts0  (iq, viol_0, delayed_CK, int_res_iq, int_6, int_9, xcr_11);
    snps_latch insts1  (lq, viol_x, delayed_B1, iq);
    snps_mux2 inst14  (int_res_iq, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst15  (_net_0, B2);
and inst16  (ENABLE_NOT_B2_AND_SD, SD, _net_0);
not inst17  (_net_1, B1);
and inst18  (ENABLE_NOT_B1_AND_SD, SD, _net_1);
not inst19  (_net_2, B2);
not inst20  (_net_3, B1);
not inst21  (_net_4, SI);
and inst22  (_net_5, _net_2, _net_3, SD, SE, _net_4);
not inst23  (_net_6, B2);
not inst24  (_net_7, B1);
not inst25  (_net_8, D);
not inst26  (_net_9, SE);
and inst27  (_net_10, _net_6, _net_7, _net_8, SD, _net_9);
or inst28  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_NOT_SI, _net_5, _net_10);
not inst29  (_net_11, B2);
not inst30  (_net_12, B1);
and inst31  (_net_13, _net_11, _net_12, SD, SE, SI);
not inst32  (_net_14, B2);
not inst33  (_net_15, B1);
not inst34  (_net_16, SE);
and inst35  (_net_17, _net_14, _net_15, D, SD, _net_16);
or inst36  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_SI, _net_13, _net_17);
not inst37  (_net_18, B2);
not inst38  (_net_19, B1);
not inst39  (_net_20, SE);
and inst40  (ENABLE_NOT_B1_AND_NOT_B2_AND_SD_AND_NOT_SE, _net_18, _net_19, SD, _net_20);
not inst41  (_net_21, B2);
not inst42  (_net_22, B1);
not inst43  (_net_23, D);
not inst44  (_net_24, SE);
and inst45  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE, _net_21, _net_22, _net_23, _net_24);
not inst46  (_net_25, B2);
not inst47  (_net_26, B1);
not inst48  (_net_27, D);
not inst49  (_net_28, SI);
and inst50  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE_AND_NOT_SI, _net_25, _net_26, _net_27, SE, _net_28);
not inst51  (_net_29, B2);
not inst52  (_net_30, B1);
not inst53  (_net_31, SI);
and inst54  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE_AND_NOT_SI, _net_29, _net_30, D, SE, _net_31);
not inst55  (_net_32, B2);
not inst56  (_net_33, B1);
not inst57  (_net_34, CK);
not inst58  (_net_35, SI);
and inst59  (_net_36, _net_32, _net_33, _net_34, SE, _net_35);
not inst60  (_net_37, B2);
not inst61  (_net_38, B1);
not inst62  (_net_39, CK);
not inst63  (_net_40, D);
not inst64  (_net_41, SE);
and inst65  (_net_42, _net_37, _net_38, _net_39, _net_40, _net_41);
or inst66  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_NOT_SI, _net_36, _net_42);
not inst67  (_net_43, B2);
not inst68  (_net_44, B1);
not inst69  (_net_45, CK);
and inst70  (_net_46, _net_43, _net_44, _net_45, SE, SI);
not inst71  (_net_47, B2);
not inst72  (_net_48, B1);
not inst73  (_net_49, CK);
not inst74  (_net_50, SE);
and inst75  (_net_51, _net_47, _net_48, _net_49, D, _net_50);
or inst76  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_SI, _net_46, _net_51);
not inst77  (_net_52, B2);
not inst78  (_net_53, B1);
and inst79  (ENABLE_NOT_B1_AND_NOT_B2_AND_CK, _net_52, _net_53, CK);
not inst80  (_net_54, B2);
not inst81  (_net_55, B1);
not inst82  (_net_56, D);
and inst83  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SI, _net_54, _net_55, _net_56, SD, SI);
not inst84  (_net_57, B2);
not inst85  (_net_58, B1);
not inst86  (_net_59, SI);
and inst87  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SI, _net_57, _net_58, D, SD, _net_59);
not inst88  (_net_60, B2);
not inst89  (_net_61, B1);
not inst90  (_net_62, D);
and inst91  (ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SE, _net_60, _net_61, _net_62, SD, SE);
not inst92  (_net_63, B2);
not inst93  (_net_64, B1);
and inst94  (ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_SE, _net_63, _net_64, D, SD, SE);

specify
if (B1==1'b0 && B2==1'b0 && CK==1'b0 && D==1'b0 && SE==1'b0 || B1==1'b0 && B2==1'b0 && CK==1'b0 && SE==1'b1 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (B1==1'b0 && B2==1'b0 && CK==1'b0 && D==1'b1 && SE==1'b0 || B1==1'b0 && B2==1'b0 && CK==1'b0 && SE==1'b1 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (B1==1'b0 && B2==1'b0 && CK==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
(negedge SD => (Q : 1'b1))=(0, 0);
if (B1==1'b0 && CK==1'b0 && SD==1'b1) (posedge B2 => (Q:B2))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge B1 &&&  ENABLE_NOT_B2_AND_SD==1'b1 , 0 ,0, viol_0);
$width(posedge B2 &&&  ENABLE_NOT_B1_AND_SD==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_SD_AND_NOT_SE==1'b1 , posedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_SD_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_SD_AND_NOT_SE==1'b1 , negedge D &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_SD_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE==1'b1 , posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$width(negedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_NOT_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_D_AND_NOT_SE_OR_NOT_B1_AND_NOT_B2_AND_NOT_CK_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_CK==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_NOT_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_B1_AND_NOT_B2_AND_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
  $setuphold(posedge CK &&&  ENABLE_NOT_B2_AND_SD==1'b1, negedge B1 &&&  ENABLE_NOT_B2_AND_SD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(negedge CK &&&  ENABLE_NOT_B2_AND_SD==1'b1, posedge B1 &&&  ENABLE_NOT_B2_AND_SD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B1);
  $setuphold(posedge CK &&&  ENABLE_NOT_B1_AND_SD==1'b1, negedge B2 &&&  ENABLE_NOT_B1_AND_SD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
  $setuphold(negedge CK &&&  ENABLE_NOT_B1_AND_SD==1'b1, posedge B2 &&&  ENABLE_NOT_B1_AND_SD==1'b1, 0, 0, viol_0, , , delayed_CK, delayed_B2);
  $setuphold(negedge B1, negedge SD, 0, 0, viol_0, , , delayed_B1, delayed_SD);
endspecify
  `endif
endmodule
`endcelldefine

//%END UDPUHT28_FSB2DPSBQ_PV2NR_4

//%BEGIN UDPUHT28_FSRBDPQ_PV2NR_1
`celldefine
module UDPUHT28_FSRBDPQ_PV2NR_1 (Q, CK, D, SI, SE, SR);
  input CK, D, SI, SE, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_6, int_7, int_8, int_9, lq2, lq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_SR, SR);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_9, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_8, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
    and inst7  (int_6, delayed_D, delayed_SI);
    or inst8  (int_7, mux_out, int_6);
    not inst9  (int_8, delayed_CK);
    and inst10  (int_9, delayed_SR, delayed_CK);
    snps_latch insts0  (lq2, viol_x, int_9, lq1);
    snps_latch insts1  (lq1, viol_x, int_8, int_7);
    snps_mux2 inst11  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst12   (_net_0, SI);
and inst13   (_net_1, _net_0, SE, SR);
not inst14   (_net_2, SE);
not inst15   (_net_3, D);
and inst16   (_net_4, _net_2, _net_3, SR);
or inst17   (ENABLE_NOT_D_AND_NOT_SE_AND_SR_OR_SE_AND_NOT_SI_AND_SR, _net_1, _net_4);
not inst18   (_net_5, D);
and inst19   (_net_6, SE, _net_5, SI, SR);
not inst20   (_net_7, SE);
not inst21   (_net_8, SI);
and inst22   (_net_9, _net_7, D, _net_8, SR);
or inst23   (ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR_OR_NOT_D_AND_SE_AND_SI_AND_SR, _net_6, _net_9);
not inst24   (_net_10, SI);
not inst25   (_net_11, SE);
and inst26   (ENABLE_NOT_SE_AND_NOT_SI_AND_SR, _net_10, _net_11, SR);
not inst27   (_net_12, SE);
and inst28   (ENABLE_NOT_SE_AND_SI_AND_SR, SI, _net_12, SR);
not inst29   (_net_13, D);
and inst30   (ENABLE_NOT_D_AND_SI_AND_SR, SI, _net_13, SR);
not inst31   (_net_14, SI);
and inst32   (ENABLE_D_AND_NOT_SI_AND_SR, _net_14, D, SR);
not inst33   (_net_15, D);
and inst34   (ENABLE_NOT_D_AND_SE_AND_SR, SE, _net_15, SR);
and inst35   (ENABLE_D_AND_SE_AND_SR, SE, D, SR);
not inst36   (_net_16, SE);
not inst37   (_net_17, D);
not inst38   (_net_18, SI);
and inst39   (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_16, _net_17, _net_18);
not inst40   (_net_19, SE);
not inst41   (_net_20, D);
and inst42   (ENABLE_NOT_D_AND_NOT_SE_AND_SI, _net_19, _net_20, SI);
not inst43   (_net_21, D);
not inst44   (_net_22, SI);
and inst45   (ENABLE_NOT_D_AND_SE_AND_NOT_SI, SE, _net_21, _net_22);
not inst46   (_net_23, D);
and inst47   (ENABLE_NOT_D_AND_SE_AND_SI, SE, _net_23, SI);
not inst48   (_net_24, SE);
not inst49   (_net_25, SI);
and inst50   (ENABLE_D_AND_NOT_SE_AND_NOT_SI, _net_24, D, _net_25);
not inst51   (_net_26, SE);
and inst52   (ENABLE_D_AND_NOT_SE_AND_SI, _net_26, D, SI);
not inst53   (_net_27, SI);
and inst54   (ENABLE_D_AND_SE_AND_NOT_SI, SE, D, _net_27);
and inst55   (ENABLE_D_AND_SE_AND_SI, SE, D, SI);
not inst56   (_net_28, D);
not inst57   (_net_29, SE);
not inst58   (_net_30, SI);
and inst59   (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_28, CK, _net_29, _net_30);
not inst60   (_net_31, D);
not inst61   (_net_32, SE);
and inst62   (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_31, CK, _net_32, SI);
not inst63   (_net_33, D);
not inst64   (_net_34, SI);
and inst65   (ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_33, CK, SE, _net_34);
not inst66   (_net_35, D);
and inst67   (ENABLE_CK_AND_NOT_D_AND_SE_AND_SI, _net_35, CK, SE, SI);
not inst68   (_net_36, SE);
not inst69   (_net_37, SI);
and inst70   (ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, CK, _net_36, _net_37);
not inst71   (_net_38, SE);
and inst72   (ENABLE_CK_AND_D_AND_NOT_SE_AND_SI, D, CK, _net_38, SI);
not inst73   (_net_39, SI);
and inst74   (ENABLE_CK_AND_D_AND_SE_AND_NOT_SI, D, CK, SE, _net_39);
and inst75   (ENABLE_CK_AND_D_AND_SE_AND_SI, D, CK, SE, SI);
specify
if (D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SR_OR_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SR_OR_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR_OR_NOT_D_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR_OR_NOT_D_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPUHT28_FSRBDPQ_PV2NR_1

//%BEGIN UDPUHT28_FSRBDPQ_PV2NR_2
`celldefine
module UDPUHT28_FSRBDPQ_PV2NR_2 (Q, CK, D, SI, SE, SR);
  input CK, D, SI, SE, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_6, int_7, int_8, int_9, lq2, lq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_SR, SR);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_9, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_8, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
    and inst7  (int_6, delayed_D, delayed_SI);
    or inst8  (int_7, mux_out, int_6);
    not inst9  (int_8, delayed_CK);
    and inst10  (int_9, delayed_SR, delayed_CK);
    snps_latch insts0  (lq2, viol_x, int_9, lq1);
    snps_latch insts1  (lq1, viol_x, int_8, int_7);
    snps_mux2 inst11  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst12   (_net_0, SI);
and inst13   (_net_1, _net_0, SE, SR);
not inst14   (_net_2, SE);
not inst15   (_net_3, D);
and inst16   (_net_4, _net_2, _net_3, SR);
or inst17   (ENABLE_NOT_D_AND_NOT_SE_AND_SR_OR_SE_AND_NOT_SI_AND_SR, _net_1, _net_4);
not inst18   (_net_5, D);
and inst19   (_net_6, SE, _net_5, SI, SR);
not inst20   (_net_7, SE);
not inst21   (_net_8, SI);
and inst22   (_net_9, _net_7, D, _net_8, SR);
or inst23   (ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR_OR_NOT_D_AND_SE_AND_SI_AND_SR, _net_6, _net_9);
not inst24   (_net_10, SI);
not inst25   (_net_11, SE);
and inst26   (ENABLE_NOT_SE_AND_NOT_SI_AND_SR, _net_10, _net_11, SR);
not inst27   (_net_12, SE);
and inst28   (ENABLE_NOT_SE_AND_SI_AND_SR, SI, _net_12, SR);
not inst29   (_net_13, D);
and inst30   (ENABLE_NOT_D_AND_SI_AND_SR, SI, _net_13, SR);
not inst31   (_net_14, SI);
and inst32   (ENABLE_D_AND_NOT_SI_AND_SR, _net_14, D, SR);
not inst33   (_net_15, D);
and inst34   (ENABLE_NOT_D_AND_SE_AND_SR, SE, _net_15, SR);
and inst35   (ENABLE_D_AND_SE_AND_SR, SE, D, SR);
not inst36   (_net_16, SE);
not inst37   (_net_17, D);
not inst38   (_net_18, SI);
and inst39   (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_16, _net_17, _net_18);
not inst40   (_net_19, SE);
not inst41   (_net_20, D);
and inst42   (ENABLE_NOT_D_AND_NOT_SE_AND_SI, _net_19, _net_20, SI);
not inst43   (_net_21, D);
not inst44   (_net_22, SI);
and inst45   (ENABLE_NOT_D_AND_SE_AND_NOT_SI, SE, _net_21, _net_22);
not inst46   (_net_23, D);
and inst47   (ENABLE_NOT_D_AND_SE_AND_SI, SE, _net_23, SI);
not inst48   (_net_24, SE);
not inst49   (_net_25, SI);
and inst50   (ENABLE_D_AND_NOT_SE_AND_NOT_SI, _net_24, D, _net_25);
not inst51   (_net_26, SE);
and inst52   (ENABLE_D_AND_NOT_SE_AND_SI, _net_26, D, SI);
not inst53   (_net_27, SI);
and inst54   (ENABLE_D_AND_SE_AND_NOT_SI, SE, D, _net_27);
and inst55   (ENABLE_D_AND_SE_AND_SI, SE, D, SI);
not inst56   (_net_28, D);
not inst57   (_net_29, SE);
not inst58   (_net_30, SI);
and inst59   (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_28, CK, _net_29, _net_30);
not inst60   (_net_31, D);
not inst61   (_net_32, SE);
and inst62   (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_31, CK, _net_32, SI);
not inst63   (_net_33, D);
not inst64   (_net_34, SI);
and inst65   (ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_33, CK, SE, _net_34);
not inst66   (_net_35, D);
and inst67   (ENABLE_CK_AND_NOT_D_AND_SE_AND_SI, _net_35, CK, SE, SI);
not inst68   (_net_36, SE);
not inst69   (_net_37, SI);
and inst70   (ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, CK, _net_36, _net_37);
not inst71   (_net_38, SE);
and inst72   (ENABLE_CK_AND_D_AND_NOT_SE_AND_SI, D, CK, _net_38, SI);
not inst73   (_net_39, SI);
and inst74   (ENABLE_CK_AND_D_AND_SE_AND_NOT_SI, D, CK, SE, _net_39);
and inst75   (ENABLE_CK_AND_D_AND_SE_AND_SI, D, CK, SE, SI);
specify
if (D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SR_OR_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SR_OR_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR_OR_NOT_D_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR_OR_NOT_D_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPUHT28_FSRBDPQ_PV2NR_2

//%BEGIN UDPUHT28_FSRBDPQ_PV2NR_4
`celldefine
module UDPUHT28_FSRBDPQ_PV2NR_4 (Q, CK, D, SI, SE, SR);
  input CK, D, SI, SE, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_6, int_7, int_8, int_9, lq2, lq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_SR, SR);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_9, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_8, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
    and inst7  (int_6, delayed_D, delayed_SI);
    or inst8  (int_7, mux_out, int_6);
    not inst9  (int_8, delayed_CK);
    and inst10  (int_9, delayed_SR, delayed_CK);
    snps_latch insts0  (lq2, viol_x, int_9, lq1);
    snps_latch insts1  (lq1, viol_x, int_8, int_7);
    snps_mux2 inst11  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst12   (_net_0, SI);
and inst13   (_net_1, _net_0, SE, SR);
not inst14   (_net_2, SE);
not inst15   (_net_3, D);
and inst16   (_net_4, _net_2, _net_3, SR);
or inst17   (ENABLE_NOT_D_AND_NOT_SE_AND_SR_OR_SE_AND_NOT_SI_AND_SR, _net_1, _net_4);
not inst18   (_net_5, D);
and inst19   (_net_6, SE, _net_5, SI, SR);
not inst20   (_net_7, SE);
not inst21   (_net_8, SI);
and inst22   (_net_9, _net_7, D, _net_8, SR);
or inst23   (ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR_OR_NOT_D_AND_SE_AND_SI_AND_SR, _net_6, _net_9);
not inst24   (_net_10, SI);
not inst25   (_net_11, SE);
and inst26   (ENABLE_NOT_SE_AND_NOT_SI_AND_SR, _net_10, _net_11, SR);
not inst27   (_net_12, SE);
and inst28   (ENABLE_NOT_SE_AND_SI_AND_SR, SI, _net_12, SR);
not inst29   (_net_13, D);
and inst30   (ENABLE_NOT_D_AND_SI_AND_SR, SI, _net_13, SR);
not inst31   (_net_14, SI);
and inst32   (ENABLE_D_AND_NOT_SI_AND_SR, _net_14, D, SR);
not inst33   (_net_15, D);
and inst34   (ENABLE_NOT_D_AND_SE_AND_SR, SE, _net_15, SR);
and inst35   (ENABLE_D_AND_SE_AND_SR, SE, D, SR);
not inst36   (_net_16, SE);
not inst37   (_net_17, D);
not inst38   (_net_18, SI);
and inst39   (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_16, _net_17, _net_18);
not inst40   (_net_19, SE);
not inst41   (_net_20, D);
and inst42   (ENABLE_NOT_D_AND_NOT_SE_AND_SI, _net_19, _net_20, SI);
not inst43   (_net_21, D);
not inst44   (_net_22, SI);
and inst45   (ENABLE_NOT_D_AND_SE_AND_NOT_SI, SE, _net_21, _net_22);
not inst46   (_net_23, D);
and inst47   (ENABLE_NOT_D_AND_SE_AND_SI, SE, _net_23, SI);
not inst48   (_net_24, SE);
not inst49   (_net_25, SI);
and inst50   (ENABLE_D_AND_NOT_SE_AND_NOT_SI, _net_24, D, _net_25);
not inst51   (_net_26, SE);
and inst52   (ENABLE_D_AND_NOT_SE_AND_SI, _net_26, D, SI);
not inst53   (_net_27, SI);
and inst54   (ENABLE_D_AND_SE_AND_NOT_SI, SE, D, _net_27);
and inst55   (ENABLE_D_AND_SE_AND_SI, SE, D, SI);
not inst56   (_net_28, D);
not inst57   (_net_29, SE);
not inst58   (_net_30, SI);
and inst59   (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_28, CK, _net_29, _net_30);
not inst60   (_net_31, D);
not inst61   (_net_32, SE);
and inst62   (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_31, CK, _net_32, SI);
not inst63   (_net_33, D);
not inst64   (_net_34, SI);
and inst65   (ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_33, CK, SE, _net_34);
not inst66   (_net_35, D);
and inst67   (ENABLE_CK_AND_NOT_D_AND_SE_AND_SI, _net_35, CK, SE, SI);
not inst68   (_net_36, SE);
not inst69   (_net_37, SI);
and inst70   (ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, CK, _net_36, _net_37);
not inst71   (_net_38, SE);
and inst72   (ENABLE_CK_AND_D_AND_NOT_SE_AND_SI, D, CK, _net_38, SI);
not inst73   (_net_39, SI);
and inst74   (ENABLE_CK_AND_D_AND_SE_AND_NOT_SI, D, CK, SE, _net_39);
and inst75   (ENABLE_CK_AND_D_AND_SE_AND_SI, D, CK, SE, SI);
specify
if (D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SR_OR_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SR_OR_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR_OR_NOT_D_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR_OR_NOT_D_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPUHT28_FSRBDPQ_PV2NR_4

//%BEGIN UDPUHT28_FSRBDPRBQ_PV2NR_1
`celldefine
module UDPUHT28_FSRBDPRBQ_PV2NR_1 (Q, CK, D, SI, SE, RD, SR);
  input CK, D, SI, SE, RD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_10, int_11, int_12, int_13, int_15, lq2, lq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_SR, SR);  
    buf inst5  (delayed_RD, RD);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_15, 1'b1, int_10);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst7  (viol_x, viol_0, int_13, 1'b1, int_10);
 `else
    assign viol_x=1'bz;
  `endif
    not inst8  (int_10, delayed_RD);
    and inst9  (int_11, delayed_D, delayed_SI);
    or inst10  (int_12, mux_out, int_11);
    not inst11  (int_13, delayed_CK);
    and inst12  (int_15, delayed_SR, delayed_CK);
    snps_latch_r insts0  (lq2, viol_x, int_15, lq1, int_10);
    snps_latch_r insts1  (lq1, viol_x, int_13, int_12, int_10);
    snps_mux2 inst13  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst14   (_net_0, SI);
and inst15   (_net_1, SE, RD, _net_0, SR);
not inst16   (_net_2, D);
not inst17   (_net_3, SE);
and inst18   (_net_4, RD, _net_2, _net_3, SR);
or inst19   (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_NOT_SI_AND_SR, _net_1, _net_4);
and inst20   (_net_5, SE, RD, SI, SR);
not inst21   (_net_6, SE);
and inst22   (_net_7, RD, D, _net_6, SR);
or inst23   (ENABLE_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_SI_AND_SR, _net_5, _net_7);
not inst24   (_net_8, SE);
not inst25   (_net_9, SI);
and inst26   (ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_SR, _net_8, RD, _net_9, SR);
not inst27   (_net_10, SE);
and inst28   (ENABLE_RD_AND_NOT_SE_AND_SI_AND_SR, _net_10, RD, SI, SR);
not inst29   (_net_11, D);
and inst30   (ENABLE_NOT_D_AND_SE_AND_SI_AND_SR, SE, _net_11, SI, SR);
not inst31   (_net_12, SE);
not inst32   (_net_13, SI);
and inst33   (ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR, _net_12, D, _net_13, SR);
not inst34   (_net_14, SE);
and inst35   (ENABLE_D_AND_NOT_SE_AND_SI_AND_SR, _net_14, D, SI, SR);
and inst36   (ENABLE_D_AND_SE_AND_SI_AND_SR, SE, D, SI, SR);
not inst37   (_net_15, CK);
not inst38   (_net_16, SI);
and inst39   (_net_17, SE, _net_15, _net_16, SR);
not inst40   (_net_18, D);
not inst41   (_net_19, CK);
not inst42   (_net_20, SE);
and inst43   (_net_21, _net_18, _net_19, _net_20, SR);
or inst44   (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_SR, _net_17, _net_21);
not inst45   (_net_22, CK);
and inst46   (_net_23, SE, _net_22, SI, SR);
not inst47   (_net_24, CK);
not inst48   (_net_25, SE);
and inst49   (_net_26, D, _net_24, _net_25, SR);
or inst50   (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_SI_AND_SR, _net_23, _net_26);
and inst51   (ENABLE_CK_AND_SR, SR, CK);
not inst52   (_net_27, D);
and inst53   (ENABLE_NOT_D_AND_RD_AND_SI_AND_SR, RD, _net_27, SI, SR);
not inst54   (_net_28, SI);
and inst55   (ENABLE_D_AND_RD_AND_NOT_SI_AND_SR, RD, D, _net_28, SR);
not inst56   (_net_29, D);
and inst57   (ENABLE_NOT_D_AND_RD_AND_SE_AND_SR, RD, _net_29, SE, SR);
and inst58   (ENABLE_D_AND_RD_AND_SE_AND_SR, RD, D, SE, SR);
not inst59   (_net_30, D);
not inst60   (_net_31, SE);
not inst61   (_net_32, SI);
and inst62   (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, _net_30, _net_31, _net_32);
not inst63   (_net_33, D);
not inst64   (_net_34, SE);
and inst65   (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI, RD, _net_33, _net_34, SI);
not inst66   (_net_35, D);
not inst67   (_net_36, SI);
and inst68   (ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI, RD, _net_35, SE, _net_36);
not inst69   (_net_37, D);
and inst70   (ENABLE_NOT_D_AND_RD_AND_SE_AND_SI, RD, _net_37, SE, SI);
not inst71   (_net_38, SE);
not inst72   (_net_39, SI);
and inst73   (ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, D, _net_38, _net_39);
not inst74   (_net_40, SE);
and inst75   (ENABLE_D_AND_RD_AND_NOT_SE_AND_SI, RD, D, _net_40, SI);
not inst76   (_net_41, SI);
and inst77   (ENABLE_D_AND_RD_AND_SE_AND_NOT_SI, RD, D, SE, _net_41);
and inst78   (ENABLE_D_AND_RD_AND_SE_AND_SI, RD, D, SE, SI);
not inst79   (_net_42, D);
not inst80   (_net_43, SE);
not inst81   (_net_44, SI);
and inst82   (ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI, _net_42, CK, RD, _net_43, _net_44);
not inst83   (_net_45, D);
not inst84   (_net_46, SE);
and inst85   (ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_SI, _net_45, CK, RD, _net_46, SI);
not inst86   (_net_47, D);
not inst87   (_net_48, SI);
and inst88   (ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_NOT_SI, _net_47, CK, RD, SE, _net_48);
not inst89   (_net_49, D);
and inst90   (ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_SI, _net_49, CK, RD, SE, SI);
not inst91   (_net_50, SE);
not inst92   (_net_51, SI);
and inst93   (ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_NOT_SI, D, CK, RD, _net_50, _net_51);
not inst94   (_net_52, SE);
and inst95   (ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_SI, D, CK, RD, _net_52, SI);
not inst96   (_net_53, SI);
and inst97   (ENABLE_CK_AND_D_AND_RD_AND_SE_AND_NOT_SI, D, CK, RD, SE, _net_53);
and inst98   (ENABLE_CK_AND_D_AND_RD_AND_SE_AND_SI, D, CK, RD, SE, SI);
specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
(negedge RD => (Q : 1'b0))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge RD &&&  ENABLE_NOT_D_AND_SE_AND_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_SE_AND_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_RD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_RD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPUHT28_FSRBDPRBQ_PV2NR_1

//%BEGIN UDPUHT28_FSRBDPRBQ_PV2NR_2
`celldefine
module UDPUHT28_FSRBDPRBQ_PV2NR_2 (Q, CK, D, SI, SE, RD, SR);
  input CK, D, SI, SE, RD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_10, int_11, int_12, int_13, int_15, lq2, lq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_SR, SR);  
    buf inst5  (delayed_RD, RD);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_15, 1'b1, int_10);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst7  (viol_x, viol_0, int_13, 1'b1, int_10);
 `else
    assign viol_x=1'bz;
  `endif
    not inst8  (int_10, delayed_RD);
    and inst9  (int_11, delayed_D, delayed_SI);
    or inst10  (int_12, mux_out, int_11);
    not inst11  (int_13, delayed_CK);
    and inst12  (int_15, delayed_SR, delayed_CK);
    snps_latch_r insts0  (lq2, viol_x, int_15, lq1, int_10);
    snps_latch_r insts1  (lq1, viol_x, int_13, int_12, int_10);
    snps_mux2 inst13  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst14   (_net_0, SI);
and inst15   (_net_1, SE, RD, _net_0, SR);
not inst16   (_net_2, D);
not inst17   (_net_3, SE);
and inst18   (_net_4, RD, _net_2, _net_3, SR);
or inst19   (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_NOT_SI_AND_SR, _net_1, _net_4);
and inst20   (_net_5, SE, RD, SI, SR);
not inst21   (_net_6, SE);
and inst22   (_net_7, RD, D, _net_6, SR);
or inst23   (ENABLE_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_SI_AND_SR, _net_5, _net_7);
not inst24   (_net_8, SE);
not inst25   (_net_9, SI);
and inst26   (ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_SR, _net_8, RD, _net_9, SR);
not inst27   (_net_10, SE);
and inst28   (ENABLE_RD_AND_NOT_SE_AND_SI_AND_SR, _net_10, RD, SI, SR);
not inst29   (_net_11, D);
and inst30   (ENABLE_NOT_D_AND_SE_AND_SI_AND_SR, SE, _net_11, SI, SR);
not inst31   (_net_12, SE);
not inst32   (_net_13, SI);
and inst33   (ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR, _net_12, D, _net_13, SR);
not inst34   (_net_14, SE);
and inst35   (ENABLE_D_AND_NOT_SE_AND_SI_AND_SR, _net_14, D, SI, SR);
and inst36   (ENABLE_D_AND_SE_AND_SI_AND_SR, SE, D, SI, SR);
not inst37   (_net_15, CK);
not inst38   (_net_16, SI);
and inst39   (_net_17, SE, _net_15, _net_16, SR);
not inst40   (_net_18, D);
not inst41   (_net_19, CK);
not inst42   (_net_20, SE);
and inst43   (_net_21, _net_18, _net_19, _net_20, SR);
or inst44   (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_SR, _net_17, _net_21);
not inst45   (_net_22, CK);
and inst46   (_net_23, SE, _net_22, SI, SR);
not inst47   (_net_24, CK);
not inst48   (_net_25, SE);
and inst49   (_net_26, D, _net_24, _net_25, SR);
or inst50   (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_SI_AND_SR, _net_23, _net_26);
and inst51   (ENABLE_CK_AND_SR, SR, CK);
not inst52   (_net_27, D);
and inst53   (ENABLE_NOT_D_AND_RD_AND_SI_AND_SR, RD, _net_27, SI, SR);
not inst54   (_net_28, SI);
and inst55   (ENABLE_D_AND_RD_AND_NOT_SI_AND_SR, RD, D, _net_28, SR);
not inst56   (_net_29, D);
and inst57   (ENABLE_NOT_D_AND_RD_AND_SE_AND_SR, RD, _net_29, SE, SR);
and inst58   (ENABLE_D_AND_RD_AND_SE_AND_SR, RD, D, SE, SR);
not inst59   (_net_30, D);
not inst60   (_net_31, SE);
not inst61   (_net_32, SI);
and inst62   (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, _net_30, _net_31, _net_32);
not inst63   (_net_33, D);
not inst64   (_net_34, SE);
and inst65   (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI, RD, _net_33, _net_34, SI);
not inst66   (_net_35, D);
not inst67   (_net_36, SI);
and inst68   (ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI, RD, _net_35, SE, _net_36);
not inst69   (_net_37, D);
and inst70   (ENABLE_NOT_D_AND_RD_AND_SE_AND_SI, RD, _net_37, SE, SI);
not inst71   (_net_38, SE);
not inst72   (_net_39, SI);
and inst73   (ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, D, _net_38, _net_39);
not inst74   (_net_40, SE);
and inst75   (ENABLE_D_AND_RD_AND_NOT_SE_AND_SI, RD, D, _net_40, SI);
not inst76   (_net_41, SI);
and inst77   (ENABLE_D_AND_RD_AND_SE_AND_NOT_SI, RD, D, SE, _net_41);
and inst78   (ENABLE_D_AND_RD_AND_SE_AND_SI, RD, D, SE, SI);
not inst79   (_net_42, D);
not inst80   (_net_43, SE);
not inst81   (_net_44, SI);
and inst82   (ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI, _net_42, CK, RD, _net_43, _net_44);
not inst83   (_net_45, D);
not inst84   (_net_46, SE);
and inst85   (ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_SI, _net_45, CK, RD, _net_46, SI);
not inst86   (_net_47, D);
not inst87   (_net_48, SI);
and inst88   (ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_NOT_SI, _net_47, CK, RD, SE, _net_48);
not inst89   (_net_49, D);
and inst90   (ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_SI, _net_49, CK, RD, SE, SI);
not inst91   (_net_50, SE);
not inst92   (_net_51, SI);
and inst93   (ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_NOT_SI, D, CK, RD, _net_50, _net_51);
not inst94   (_net_52, SE);
and inst95   (ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_SI, D, CK, RD, _net_52, SI);
not inst96   (_net_53, SI);
and inst97   (ENABLE_CK_AND_D_AND_RD_AND_SE_AND_NOT_SI, D, CK, RD, SE, _net_53);
and inst98   (ENABLE_CK_AND_D_AND_RD_AND_SE_AND_SI, D, CK, RD, SE, SI);
specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
(negedge RD => (Q : 1'b0))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge RD &&&  ENABLE_NOT_D_AND_SE_AND_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_SE_AND_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_RD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_RD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPUHT28_FSRBDPRBQ_PV2NR_2

//%BEGIN UDPUHT28_FSRBDPRBQ_PV2NR_4
`celldefine
module UDPUHT28_FSRBDPRBQ_PV2NR_4 (Q, CK, D, SI, SE, RD, SR);
  input CK, D, SI, SE, RD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_10, int_11, int_12, int_13, int_15, lq2, lq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_SR, SR);  
    buf inst5  (delayed_RD, RD);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_15, 1'b1, int_10);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst7  (viol_x, viol_0, int_13, 1'b1, int_10);
 `else
    assign viol_x=1'bz;
  `endif
    not inst8  (int_10, delayed_RD);
    and inst9  (int_11, delayed_D, delayed_SI);
    or inst10  (int_12, mux_out, int_11);
    not inst11  (int_13, delayed_CK);
    and inst12  (int_15, delayed_SR, delayed_CK);
    snps_latch_r insts0  (lq2, viol_x, int_15, lq1, int_10);
    snps_latch_r insts1  (lq1, viol_x, int_13, int_12, int_10);
    snps_mux2 inst13  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst14   (_net_0, SI);
and inst15   (_net_1, SE, RD, _net_0, SR);
not inst16   (_net_2, D);
not inst17   (_net_3, SE);
and inst18   (_net_4, RD, _net_2, _net_3, SR);
or inst19   (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_NOT_SI_AND_SR, _net_1, _net_4);
and inst20   (_net_5, SE, RD, SI, SR);
not inst21   (_net_6, SE);
and inst22   (_net_7, RD, D, _net_6, SR);
or inst23   (ENABLE_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_SI_AND_SR, _net_5, _net_7);
not inst24   (_net_8, SE);
not inst25   (_net_9, SI);
and inst26   (ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_SR, _net_8, RD, _net_9, SR);
not inst27   (_net_10, SE);
and inst28   (ENABLE_RD_AND_NOT_SE_AND_SI_AND_SR, _net_10, RD, SI, SR);
not inst29   (_net_11, D);
and inst30   (ENABLE_NOT_D_AND_SE_AND_SI_AND_SR, SE, _net_11, SI, SR);
not inst31   (_net_12, SE);
not inst32   (_net_13, SI);
and inst33   (ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR, _net_12, D, _net_13, SR);
not inst34   (_net_14, SE);
and inst35   (ENABLE_D_AND_NOT_SE_AND_SI_AND_SR, _net_14, D, SI, SR);
and inst36   (ENABLE_D_AND_SE_AND_SI_AND_SR, SE, D, SI, SR);
not inst37   (_net_15, CK);
not inst38   (_net_16, SI);
and inst39   (_net_17, SE, _net_15, _net_16, SR);
not inst40   (_net_18, D);
not inst41   (_net_19, CK);
not inst42   (_net_20, SE);
and inst43   (_net_21, _net_18, _net_19, _net_20, SR);
or inst44   (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_SR, _net_17, _net_21);
not inst45   (_net_22, CK);
and inst46   (_net_23, SE, _net_22, SI, SR);
not inst47   (_net_24, CK);
not inst48   (_net_25, SE);
and inst49   (_net_26, D, _net_24, _net_25, SR);
or inst50   (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_SI_AND_SR, _net_23, _net_26);
and inst51   (ENABLE_CK_AND_SR, SR, CK);
not inst52   (_net_27, D);
and inst53   (ENABLE_NOT_D_AND_RD_AND_SI_AND_SR, RD, _net_27, SI, SR);
not inst54   (_net_28, SI);
and inst55   (ENABLE_D_AND_RD_AND_NOT_SI_AND_SR, RD, D, _net_28, SR);
not inst56   (_net_29, D);
and inst57   (ENABLE_NOT_D_AND_RD_AND_SE_AND_SR, RD, _net_29, SE, SR);
and inst58   (ENABLE_D_AND_RD_AND_SE_AND_SR, RD, D, SE, SR);
not inst59   (_net_30, D);
not inst60   (_net_31, SE);
not inst61   (_net_32, SI);
and inst62   (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, _net_30, _net_31, _net_32);
not inst63   (_net_33, D);
not inst64   (_net_34, SE);
and inst65   (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI, RD, _net_33, _net_34, SI);
not inst66   (_net_35, D);
not inst67   (_net_36, SI);
and inst68   (ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI, RD, _net_35, SE, _net_36);
not inst69   (_net_37, D);
and inst70   (ENABLE_NOT_D_AND_RD_AND_SE_AND_SI, RD, _net_37, SE, SI);
not inst71   (_net_38, SE);
not inst72   (_net_39, SI);
and inst73   (ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, D, _net_38, _net_39);
not inst74   (_net_40, SE);
and inst75   (ENABLE_D_AND_RD_AND_NOT_SE_AND_SI, RD, D, _net_40, SI);
not inst76   (_net_41, SI);
and inst77   (ENABLE_D_AND_RD_AND_SE_AND_NOT_SI, RD, D, SE, _net_41);
and inst78   (ENABLE_D_AND_RD_AND_SE_AND_SI, RD, D, SE, SI);
not inst79   (_net_42, D);
not inst80   (_net_43, SE);
not inst81   (_net_44, SI);
and inst82   (ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI, _net_42, CK, RD, _net_43, _net_44);
not inst83   (_net_45, D);
not inst84   (_net_46, SE);
and inst85   (ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_SI, _net_45, CK, RD, _net_46, SI);
not inst86   (_net_47, D);
not inst87   (_net_48, SI);
and inst88   (ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_NOT_SI, _net_47, CK, RD, SE, _net_48);
not inst89   (_net_49, D);
and inst90   (ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_SI, _net_49, CK, RD, SE, SI);
not inst91   (_net_50, SE);
not inst92   (_net_51, SI);
and inst93   (ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_NOT_SI, D, CK, RD, _net_50, _net_51);
not inst94   (_net_52, SE);
and inst95   (ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_SI, D, CK, RD, _net_52, SI);
not inst96   (_net_53, SI);
and inst97   (ENABLE_CK_AND_D_AND_RD_AND_SE_AND_NOT_SI, D, CK, RD, SE, _net_53);
and inst98   (ENABLE_CK_AND_D_AND_RD_AND_SE_AND_SI, D, CK, RD, SE, SI);
specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
(negedge RD => (Q : 1'b0))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SR_OR_RD_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge RD &&&  ENABLE_NOT_D_AND_SE_AND_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_SE_AND_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_RD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_RD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPUHT28_FSRBDPRBQ_PV2NR_4

//%BEGIN UDPUHT28_FSRBDPSBQ_PV2NR_1
`celldefine
module UDPUHT28_FSRBDPSBQ_PV2NR_1 (Q, CK, D, SI, SE, SD, SR);
  input CK, D, SI, SE, SD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_10, int_11, int_12, int_13, int_15, lq2, lq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_SR, SR);  
    buf inst5  (delayed_SD, SD);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_15, 1'b1, int_10);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst7  (viol_x, viol_0, int_13, 1'b1, int_10);
 `else
    assign viol_x=1'bz;
  `endif
    not inst8  (int_10, delayed_SD);
    and inst9  (int_11, delayed_D, delayed_SI);
    or inst10  (int_12, mux_out, int_11);
    not inst11  (int_13, delayed_CK);
    and inst12  (int_15, delayed_SR, delayed_CK);
    snps_latch_s insts0  (lq2, viol_x, int_15, lq1, int_10);
    snps_latch_s insts1  (lq1, viol_x, int_13, int_12, int_10);
    snps_mux2 inst13  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst14   (_net_0, SI);
and inst15   (_net_1, SE, SD, _net_0, SR);
not inst16   (_net_2, D);
not inst17   (_net_3, SE);
and inst18   (_net_4, SD, _net_2, _net_3, SR);
or inst19   (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_NOT_SI_AND_SR, _net_1, _net_4);
and inst20   (_net_5, SE, SD, SI, SR);
not inst21   (_net_6, SE);
and inst22   (_net_7, SD, D, _net_6, SR);
or inst23   (ENABLE_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_SI_AND_SR, _net_5, _net_7);
not inst24   (_net_8, SE);
not inst25   (_net_9, SI);
and inst26   (ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_SR, _net_8, SD, _net_9, SR);
not inst27   (_net_10, SE);
and inst28   (ENABLE_SD_AND_NOT_SE_AND_SI_AND_SR, _net_10, SD, SI, SR);
not inst29   (_net_11, SE);
not inst30   (_net_12, D);
not inst31   (_net_13, SI);
and inst32   (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_SR, _net_11, _net_12, _net_13, SR);
not inst33   (_net_14, SE);
not inst34   (_net_15, D);
and inst35   (ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_SR, _net_14, _net_15, SI, SR);
not inst36   (_net_16, D);
not inst37   (_net_17, SI);
and inst38   (ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_SR, SE, _net_16, _net_17, SR);
not inst39   (_net_18, SI);
and inst40   (ENABLE_D_AND_SE_AND_NOT_SI_AND_SR, SE, D, _net_18, SR);
not inst41   (_net_19, CK);
not inst42   (_net_20, SI);
and inst43   (_net_21, SE, _net_19, _net_20, SR);
not inst44   (_net_22, D);
not inst45   (_net_23, CK);
not inst46   (_net_24, SE);
and inst47   (_net_25, _net_22, _net_23, _net_24, SR);
or inst48   (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_SR, _net_21, _net_25);
not inst49   (_net_26, CK);
and inst50   (_net_27, SE, _net_26, SI, SR);
not inst51   (_net_28, CK);
not inst52   (_net_29, SE);
and inst53   (_net_30, D, _net_28, _net_29, SR);
or inst54   (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_SI_AND_SR, _net_27, _net_30);
and inst55   (ENABLE_CK_AND_SR, SR, CK);
not inst56   (_net_31, D);
and inst57   (ENABLE_NOT_D_AND_SD_AND_SI_AND_SR, SD, _net_31, SI, SR);
not inst58   (_net_32, SI);
and inst59   (ENABLE_D_AND_SD_AND_NOT_SI_AND_SR, SD, D, _net_32, SR);
not inst60   (_net_33, D);
and inst61   (ENABLE_NOT_D_AND_SD_AND_SE_AND_SR, SD, _net_33, SE, SR);
and inst62   (ENABLE_D_AND_SD_AND_SE_AND_SR, SD, D, SE, SR);
not inst63   (_net_34, D);
not inst64   (_net_35, SE);
not inst65   (_net_36, SI);
and inst66   (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, _net_34, _net_35, _net_36);
not inst67   (_net_37, D);
not inst68   (_net_38, SE);
and inst69   (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI, SD, _net_37, _net_38, SI);
not inst70   (_net_39, D);
not inst71   (_net_40, SI);
and inst72   (ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI, SD, _net_39, SE, _net_40);
not inst73   (_net_41, D);
and inst74   (ENABLE_NOT_D_AND_SD_AND_SE_AND_SI, SD, _net_41, SE, SI);
not inst75   (_net_42, SE);
not inst76   (_net_43, SI);
and inst77   (ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, D, _net_42, _net_43);
not inst78   (_net_44, SE);
and inst79   (ENABLE_D_AND_SD_AND_NOT_SE_AND_SI, SD, D, _net_44, SI);
not inst80   (_net_45, SI);
and inst81   (ENABLE_D_AND_SD_AND_SE_AND_NOT_SI, SD, D, SE, _net_45);
and inst82   (ENABLE_D_AND_SD_AND_SE_AND_SI, SD, D, SE, SI);
not inst83   (_net_46, D);
not inst84   (_net_47, SE);
not inst85   (_net_48, SI);
and inst86   (ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI, _net_46, CK, SD, _net_47, _net_48);
not inst87   (_net_49, D);
not inst88   (_net_50, SE);
and inst89   (ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_SI, _net_49, CK, SD, _net_50, SI);
not inst90   (_net_51, D);
not inst91   (_net_52, SI);
and inst92   (ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_NOT_SI, _net_51, CK, SD, SE, _net_52);
not inst93   (_net_53, D);
and inst94   (ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_SI, _net_53, CK, SD, SE, SI);
not inst95   (_net_54, SE);
not inst96   (_net_55, SI);
and inst97   (ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_NOT_SI, D, CK, SD, _net_54, _net_55);
not inst98   (_net_56, SE);
and inst99   (ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_SI, D, CK, SD, _net_56, SI);
not inst100   (_net_57, SI);
and inst101   (ENABLE_CK_AND_D_AND_SD_AND_SE_AND_NOT_SI, D, CK, SD, SE, _net_57);
and inst102   (ENABLE_CK_AND_D_AND_SD_AND_SE_AND_SI, D, CK, SD, SE, SI);
specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
(negedge SD => (Q : 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_D_AND_SE_AND_NOT_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_SD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_SD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPUHT28_FSRBDPSBQ_PV2NR_1

//%BEGIN UDPUHT28_FSRBDPSBQ_PV2NR_2
`celldefine
module UDPUHT28_FSRBDPSBQ_PV2NR_2 (Q, CK, D, SI, SE, SD, SR);
  input CK, D, SI, SE, SD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_10, int_11, int_12, int_13, int_15, lq2, lq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_SR, SR);  
    buf inst5  (delayed_SD, SD);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_15, 1'b1, int_10);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst7  (viol_x, viol_0, int_13, 1'b1, int_10);
 `else
    assign viol_x=1'bz;
  `endif
    not inst8  (int_10, delayed_SD);
    and inst9  (int_11, delayed_D, delayed_SI);
    or inst10  (int_12, mux_out, int_11);
    not inst11  (int_13, delayed_CK);
    and inst12  (int_15, delayed_SR, delayed_CK);
    snps_latch_s insts0  (lq2, viol_x, int_15, lq1, int_10);
    snps_latch_s insts1  (lq1, viol_x, int_13, int_12, int_10);
    snps_mux2 inst13  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst14   (_net_0, SI);
and inst15   (_net_1, SE, SD, _net_0, SR);
not inst16   (_net_2, D);
not inst17   (_net_3, SE);
and inst18   (_net_4, SD, _net_2, _net_3, SR);
or inst19   (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_NOT_SI_AND_SR, _net_1, _net_4);
and inst20   (_net_5, SE, SD, SI, SR);
not inst21   (_net_6, SE);
and inst22   (_net_7, SD, D, _net_6, SR);
or inst23   (ENABLE_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_SI_AND_SR, _net_5, _net_7);
not inst24   (_net_8, SE);
not inst25   (_net_9, SI);
and inst26   (ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_SR, _net_8, SD, _net_9, SR);
not inst27   (_net_10, SE);
and inst28   (ENABLE_SD_AND_NOT_SE_AND_SI_AND_SR, _net_10, SD, SI, SR);
not inst29   (_net_11, SE);
not inst30   (_net_12, D);
not inst31   (_net_13, SI);
and inst32   (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_SR, _net_11, _net_12, _net_13, SR);
not inst33   (_net_14, SE);
not inst34   (_net_15, D);
and inst35   (ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_SR, _net_14, _net_15, SI, SR);
not inst36   (_net_16, D);
not inst37   (_net_17, SI);
and inst38   (ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_SR, SE, _net_16, _net_17, SR);
not inst39   (_net_18, SI);
and inst40   (ENABLE_D_AND_SE_AND_NOT_SI_AND_SR, SE, D, _net_18, SR);
not inst41   (_net_19, CK);
not inst42   (_net_20, SI);
and inst43   (_net_21, SE, _net_19, _net_20, SR);
not inst44   (_net_22, D);
not inst45   (_net_23, CK);
not inst46   (_net_24, SE);
and inst47   (_net_25, _net_22, _net_23, _net_24, SR);
or inst48   (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_SR, _net_21, _net_25);
not inst49   (_net_26, CK);
and inst50   (_net_27, SE, _net_26, SI, SR);
not inst51   (_net_28, CK);
not inst52   (_net_29, SE);
and inst53   (_net_30, D, _net_28, _net_29, SR);
or inst54   (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_SI_AND_SR, _net_27, _net_30);
and inst55   (ENABLE_CK_AND_SR, SR, CK);
not inst56   (_net_31, D);
and inst57   (ENABLE_NOT_D_AND_SD_AND_SI_AND_SR, SD, _net_31, SI, SR);
not inst58   (_net_32, SI);
and inst59   (ENABLE_D_AND_SD_AND_NOT_SI_AND_SR, SD, D, _net_32, SR);
not inst60   (_net_33, D);
and inst61   (ENABLE_NOT_D_AND_SD_AND_SE_AND_SR, SD, _net_33, SE, SR);
and inst62   (ENABLE_D_AND_SD_AND_SE_AND_SR, SD, D, SE, SR);
not inst63   (_net_34, D);
not inst64   (_net_35, SE);
not inst65   (_net_36, SI);
and inst66   (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, _net_34, _net_35, _net_36);
not inst67   (_net_37, D);
not inst68   (_net_38, SE);
and inst69   (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI, SD, _net_37, _net_38, SI);
not inst70   (_net_39, D);
not inst71   (_net_40, SI);
and inst72   (ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI, SD, _net_39, SE, _net_40);
not inst73   (_net_41, D);
and inst74   (ENABLE_NOT_D_AND_SD_AND_SE_AND_SI, SD, _net_41, SE, SI);
not inst75   (_net_42, SE);
not inst76   (_net_43, SI);
and inst77   (ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, D, _net_42, _net_43);
not inst78   (_net_44, SE);
and inst79   (ENABLE_D_AND_SD_AND_NOT_SE_AND_SI, SD, D, _net_44, SI);
not inst80   (_net_45, SI);
and inst81   (ENABLE_D_AND_SD_AND_SE_AND_NOT_SI, SD, D, SE, _net_45);
and inst82   (ENABLE_D_AND_SD_AND_SE_AND_SI, SD, D, SE, SI);
not inst83   (_net_46, D);
not inst84   (_net_47, SE);
not inst85   (_net_48, SI);
and inst86   (ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI, _net_46, CK, SD, _net_47, _net_48);
not inst87   (_net_49, D);
not inst88   (_net_50, SE);
and inst89   (ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_SI, _net_49, CK, SD, _net_50, SI);
not inst90   (_net_51, D);
not inst91   (_net_52, SI);
and inst92   (ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_NOT_SI, _net_51, CK, SD, SE, _net_52);
not inst93   (_net_53, D);
and inst94   (ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_SI, _net_53, CK, SD, SE, SI);
not inst95   (_net_54, SE);
not inst96   (_net_55, SI);
and inst97   (ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_NOT_SI, D, CK, SD, _net_54, _net_55);
not inst98   (_net_56, SE);
and inst99   (ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_SI, D, CK, SD, _net_56, SI);
not inst100   (_net_57, SI);
and inst101   (ENABLE_CK_AND_D_AND_SD_AND_SE_AND_NOT_SI, D, CK, SD, SE, _net_57);
and inst102   (ENABLE_CK_AND_D_AND_SD_AND_SE_AND_SI, D, CK, SD, SE, SI);
specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
(negedge SD => (Q : 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_D_AND_SE_AND_NOT_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_SD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_SD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPUHT28_FSRBDPSBQ_PV2NR_2

//%BEGIN UDPUHT28_FSRBDPSBQ_PV2NR_4
`celldefine
module UDPUHT28_FSRBDPSBQ_PV2NR_4 (Q, CK, D, SI, SE, SD, SR);
  input CK, D, SI, SE, SD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_10, int_11, int_12, int_13, int_15, lq2, lq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_SR, SR);  
    buf inst5  (delayed_SD, SD);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_15, 1'b1, int_10);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst7  (viol_x, viol_0, int_13, 1'b1, int_10);
 `else
    assign viol_x=1'bz;
  `endif
    not inst8  (int_10, delayed_SD);
    and inst9  (int_11, delayed_D, delayed_SI);
    or inst10  (int_12, mux_out, int_11);
    not inst11  (int_13, delayed_CK);
    and inst12  (int_15, delayed_SR, delayed_CK);
    snps_latch_s insts0  (lq2, viol_x, int_15, lq1, int_10);
    snps_latch_s insts1  (lq1, viol_x, int_13, int_12, int_10);
    snps_mux2 inst13  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst14   (_net_0, SI);
and inst15   (_net_1, SE, SD, _net_0, SR);
not inst16   (_net_2, D);
not inst17   (_net_3, SE);
and inst18   (_net_4, SD, _net_2, _net_3, SR);
or inst19   (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_NOT_SI_AND_SR, _net_1, _net_4);
and inst20   (_net_5, SE, SD, SI, SR);
not inst21   (_net_6, SE);
and inst22   (_net_7, SD, D, _net_6, SR);
or inst23   (ENABLE_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_SI_AND_SR, _net_5, _net_7);
not inst24   (_net_8, SE);
not inst25   (_net_9, SI);
and inst26   (ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_SR, _net_8, SD, _net_9, SR);
not inst27   (_net_10, SE);
and inst28   (ENABLE_SD_AND_NOT_SE_AND_SI_AND_SR, _net_10, SD, SI, SR);
not inst29   (_net_11, SE);
not inst30   (_net_12, D);
not inst31   (_net_13, SI);
and inst32   (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_SR, _net_11, _net_12, _net_13, SR);
not inst33   (_net_14, SE);
not inst34   (_net_15, D);
and inst35   (ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_SR, _net_14, _net_15, SI, SR);
not inst36   (_net_16, D);
not inst37   (_net_17, SI);
and inst38   (ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_SR, SE, _net_16, _net_17, SR);
not inst39   (_net_18, SI);
and inst40   (ENABLE_D_AND_SE_AND_NOT_SI_AND_SR, SE, D, _net_18, SR);
not inst41   (_net_19, CK);
not inst42   (_net_20, SI);
and inst43   (_net_21, SE, _net_19, _net_20, SR);
not inst44   (_net_22, D);
not inst45   (_net_23, CK);
not inst46   (_net_24, SE);
and inst47   (_net_25, _net_22, _net_23, _net_24, SR);
or inst48   (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_SR, _net_21, _net_25);
not inst49   (_net_26, CK);
and inst50   (_net_27, SE, _net_26, SI, SR);
not inst51   (_net_28, CK);
not inst52   (_net_29, SE);
and inst53   (_net_30, D, _net_28, _net_29, SR);
or inst54   (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_SI_AND_SR, _net_27, _net_30);
and inst55   (ENABLE_CK_AND_SR, SR, CK);
not inst56   (_net_31, D);
and inst57   (ENABLE_NOT_D_AND_SD_AND_SI_AND_SR, SD, _net_31, SI, SR);
not inst58   (_net_32, SI);
and inst59   (ENABLE_D_AND_SD_AND_NOT_SI_AND_SR, SD, D, _net_32, SR);
not inst60   (_net_33, D);
and inst61   (ENABLE_NOT_D_AND_SD_AND_SE_AND_SR, SD, _net_33, SE, SR);
and inst62   (ENABLE_D_AND_SD_AND_SE_AND_SR, SD, D, SE, SR);
not inst63   (_net_34, D);
not inst64   (_net_35, SE);
not inst65   (_net_36, SI);
and inst66   (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, _net_34, _net_35, _net_36);
not inst67   (_net_37, D);
not inst68   (_net_38, SE);
and inst69   (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI, SD, _net_37, _net_38, SI);
not inst70   (_net_39, D);
not inst71   (_net_40, SI);
and inst72   (ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI, SD, _net_39, SE, _net_40);
not inst73   (_net_41, D);
and inst74   (ENABLE_NOT_D_AND_SD_AND_SE_AND_SI, SD, _net_41, SE, SI);
not inst75   (_net_42, SE);
not inst76   (_net_43, SI);
and inst77   (ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, D, _net_42, _net_43);
not inst78   (_net_44, SE);
and inst79   (ENABLE_D_AND_SD_AND_NOT_SE_AND_SI, SD, D, _net_44, SI);
not inst80   (_net_45, SI);
and inst81   (ENABLE_D_AND_SD_AND_SE_AND_NOT_SI, SD, D, SE, _net_45);
and inst82   (ENABLE_D_AND_SD_AND_SE_AND_SI, SD, D, SE, SI);
not inst83   (_net_46, D);
not inst84   (_net_47, SE);
not inst85   (_net_48, SI);
and inst86   (ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI, _net_46, CK, SD, _net_47, _net_48);
not inst87   (_net_49, D);
not inst88   (_net_50, SE);
and inst89   (ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_SI, _net_49, CK, SD, _net_50, SI);
not inst90   (_net_51, D);
not inst91   (_net_52, SI);
and inst92   (ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_NOT_SI, _net_51, CK, SD, SE, _net_52);
not inst93   (_net_53, D);
and inst94   (ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_SI, _net_53, CK, SD, SE, SI);
not inst95   (_net_54, SE);
not inst96   (_net_55, SI);
and inst97   (ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_NOT_SI, D, CK, SD, _net_54, _net_55);
not inst98   (_net_56, SE);
and inst99   (ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_SI, D, CK, SD, _net_56, SI);
not inst100   (_net_57, SI);
and inst101   (ENABLE_CK_AND_D_AND_SD_AND_SE_AND_NOT_SI, D, CK, SD, SE, _net_57);
and inst102   (ENABLE_CK_AND_D_AND_SD_AND_SE_AND_SI, D, CK, SD, SE, SI);
specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
(negedge SD => (Q : 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SR_OR_SD_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_D_AND_SE_AND_NOT_SI_AND_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SR_OR_NOT_CK_AND_SE_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_SD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_SD_AND_SE_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPUHT28_FSRBDPSBQ_PV2NR_4

//%BEGIN UDPUHT28_INV_PNR_1

`celldefine
module UDPUHT28_INV_PNR_1 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
        not #`SNPS_COMBO_DELAY  instt0 (X, A);
    `else
        not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
//
//%END UDPUHT28_INV_PNR_1

//%BEGIN UDPUHT28_INV_PNR_16

`celldefine
module UDPUHT28_INV_PNR_16 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
        not #`SNPS_COMBO_DELAY  instt0 (X, A);
    `else
        not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
//
//%END UDPUHT28_INV_PNR_16

//%BEGIN UDPUHT28_INV_PNR_2

`celldefine
module UDPUHT28_INV_PNR_2 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
        not #`SNPS_COMBO_DELAY  instt0 (X, A);
    `else
        not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
//
//%END UDPUHT28_INV_PNR_2

//%BEGIN UDPUHT28_INV_PNR_4

`celldefine
module UDPUHT28_INV_PNR_4 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
        not #`SNPS_COMBO_DELAY  instt0 (X, A);
    `else
        not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
//
//%END UDPUHT28_INV_PNR_4

//%BEGIN UDPUHT28_INV_PNR_8

`celldefine
module UDPUHT28_INV_PNR_8 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
        not #`SNPS_COMBO_DELAY  instt0 (X, A);
    `else
        not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
//
//%END UDPUHT28_INV_PNR_8

//%BEGIN UDPUHT28_ISOS0CL1_1

`celldefine
module UDPUHT28_ISOS0CL1_1 (X, A, EN0);
   output X;
   input A, EN0;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN0);
   `else
       or instt0  (X, A, EN0);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN0==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN0 +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_ISOS0CL1_1

//%BEGIN UDPUHT28_ISOS0CL1_2

`celldefine
module UDPUHT28_ISOS0CL1_2 (X, A, EN0);
   output X;
   input A, EN0;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN0);
   `else
       or instt0  (X, A, EN0);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN0==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN0 +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_ISOS0CL1_2

//%BEGIN UDPUHT28_ISOS0CL1_4

`celldefine
module UDPUHT28_ISOS0CL1_4 (X, A, EN0);
   output X;
   input A, EN0;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN0);
   `else
       or instt0  (X, A, EN0);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN0==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN0 +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_ISOS0CL1_4

//%BEGIN UDPUHT28_ISOS0CL1_PNR_1

`celldefine
module UDPUHT28_ISOS0CL1_PNR_1 (X, A, EN0);
   output X;
   input A, EN0;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN0);
   `else
       or instt0  (X, A, EN0);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN0==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN0 +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_ISOS0CL1_PNR_1

//%BEGIN UDPUHT28_ISOS0CL1_PNR_2

`celldefine
module UDPUHT28_ISOS0CL1_PNR_2 (X, A, EN0);
   output X;
   input A, EN0;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN0);
   `else
       or instt0  (X, A, EN0);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN0==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN0 +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_ISOS0CL1_PNR_2

//%BEGIN UDPUHT28_ISOS0CL1_PNR_4

`celldefine
module UDPUHT28_ISOS0CL1_PNR_4 (X, A, EN0);
   output X;
   input A, EN0;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN0);
   `else
       or instt0  (X, A, EN0);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN0==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN0 +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_ISOS0CL1_PNR_4

//%BEGIN UDPUHT28_ISOS1CL0_1

`celldefine
module UDPUHT28_ISOS1CL0_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
     and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
     and instt0   (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_ISOS1CL0_1

//%BEGIN UDPUHT28_ISOS1CL0_2

`celldefine
module UDPUHT28_ISOS1CL0_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
     and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
     and instt0   (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_ISOS1CL0_2

//%BEGIN UDPUHT28_ISOS1CL0_4

`celldefine
module UDPUHT28_ISOS1CL0_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
     and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
     and instt0   (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_ISOS1CL0_4

//%BEGIN UDPUHT28_ISOS1CL0_PNR_1

`celldefine
module UDPUHT28_ISOS1CL0_PNR_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
     and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
     and instt0   (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_ISOS1CL0_PNR_1

//%BEGIN UDPUHT28_ISOS1CL0_PNR_2

`celldefine
module UDPUHT28_ISOS1CL0_PNR_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
     and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
     and instt0   (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_ISOS1CL0_PNR_2

//%BEGIN UDPUHT28_ISOS1CL0_PNR_4

`celldefine
module UDPUHT28_ISOS1CL0_PNR_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
     and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
     and instt0   (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_ISOS1CL0_PNR_4

//%BEGIN UDPUHT28_LVLDBUFE0M2_2
`celldefine
module UDPUHT28_LVLDBUFE0M2_2 (X0, X1, A0, A1, EN);
  input A0, A1, EN;
  output X0, X1;
  wire int_0, int_1;


    and inst0  (int_0, A1, EN);
    and inst1  (int_1, A0, EN);
  `ifdef VIRL_functiononly
    buf #`SNPS_COMBO_DELAY  instt0 (X1, int_0);
    buf #`SNPS_COMBO_DELAY  instt1 (X0, int_1);
  `else
    buf instt0  (X1, int_0);
    buf instt1  (X0, int_1);
  `endif
  `ifdef VIRL_functiononly
  `else

specify
if (A1==1'b0 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b1 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b0) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b1) (EN +=> X0)=(0, 0);
if (A0==1'b0 && A1==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b1 && A1==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b0 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && EN==1'b1) (A1 +=> X1)=(0, 0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPUHT28_LVLDBUFE0M2_2

//%BEGIN UDPUHT28_LVLDBUFE0M2_4
`celldefine
module UDPUHT28_LVLDBUFE0M2_4 (X0, X1, A0, A1, EN);
  input A0, A1, EN;
  output X0, X1;
  wire int_0, int_1;


    and inst0  (int_0, A1, EN);
    and inst1  (int_1, A0, EN);
  `ifdef VIRL_functiononly
    buf #`SNPS_COMBO_DELAY  instt0 (X1, int_0);
    buf #`SNPS_COMBO_DELAY  instt1 (X0, int_1);
  `else
    buf instt0  (X1, int_0);
    buf instt1  (X0, int_1);
  `endif
  `ifdef VIRL_functiononly
  `else

specify
if (A1==1'b0 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b1 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b0) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b1) (EN +=> X0)=(0, 0);
if (A0==1'b0 && A1==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b1 && A1==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b0 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && EN==1'b1) (A1 +=> X1)=(0, 0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPUHT28_LVLDBUFE0M2_4

//%BEGIN UDPUHT28_LVLDBUFE0M2_8
`celldefine
module UDPUHT28_LVLDBUFE0M2_8 (X0, X1, A0, A1, EN);
  input A0, A1, EN;
  output X0, X1;
  wire int_0, int_1;


    and inst0  (int_0, A1, EN);
    and inst1  (int_1, A0, EN);
  `ifdef VIRL_functiononly
    buf #`SNPS_COMBO_DELAY  instt0 (X1, int_0);
    buf #`SNPS_COMBO_DELAY  instt1 (X0, int_1);
  `else
    buf instt0  (X1, int_0);
    buf instt1  (X0, int_1);
  `endif
  `ifdef VIRL_functiononly
  `else

specify
if (A1==1'b0 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b1 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b0) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b1) (EN +=> X0)=(0, 0);
if (A0==1'b0 && A1==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b1 && A1==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b0 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && EN==1'b1) (A1 +=> X1)=(0, 0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPUHT28_LVLDBUFE0M2_8

//%BEGIN UDPUHT28_LVLDBUFE0M4_2
`celldefine
module UDPUHT28_LVLDBUFE0M4_2 (X0, X1, X2, X3, A0, A1, A2, A3, EN);
  input A0, A1, A2, A3, EN;
  output X0, X1, X2, X3;
  wire int_0, int_1, int_2, int_3;


    and inst0  (int_0, A3, EN);
    and inst1  (int_1, A2, EN);
    and inst2  (int_2, A1, EN);
    and inst3  (int_3, A0, EN);
  `ifdef VIRL_functiononly
    buf #`SNPS_COMBO_DELAY  instt0 (X3, int_0);
    buf #`SNPS_COMBO_DELAY  instt1 (X2, int_1);
    buf #`SNPS_COMBO_DELAY  instt2 (X1, int_2);
    buf #`SNPS_COMBO_DELAY  instt3 (X0, int_3);
  `else
    buf instt0  (X3, int_0);
    buf instt1  (X2, int_1);
    buf instt2  (X1, int_2);
    buf instt3  (X0, int_3);
  `endif
  `ifdef VIRL_functiononly
  `else

specify
if (A1==1'b0 && A2==1'b0 && A3==1'b0 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b0 && A2==1'b0 && A3==1'b1 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b0 && A2==1'b1 && A3==1'b0 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b0 && A2==1'b1 && A3==1'b1 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b1 && A2==1'b0 && A3==1'b0 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b1 && A2==1'b0 && A3==1'b1 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b1 && A2==1'b1 && A3==1'b0 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b1 && A2==1'b1 && A3==1'b1 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && A3==1'b0) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && A3==1'b1) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && A3==1'b0) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && A3==1'b1) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && A3==1'b0) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && A3==1'b1) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b0) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X0)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && A3==1'b0) (EN +=> X1)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && A3==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && A3==1'b0) (EN +=> X1)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && A3==1'b0) (EN +=> X1)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && A3==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b0) (EN +=> X1)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b0 && A3==1'b0 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b0 && A3==1'b1 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b1 && A3==1'b0 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b1 && A3==1'b1 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b0 && A3==1'b0 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b0 && A3==1'b1 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b1 && A3==1'b0 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b1 && A3==1'b1 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && A3==1'b0) (EN +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && A3==1'b1) (EN +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && A3==1'b0) (EN +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && A3==1'b0) (EN +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && A3==1'b1) (EN +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b0) (EN +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A3==1'b0 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A3==1'b1 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A3==1'b0 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A3==1'b1 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A3==1'b0 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A3==1'b1 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A3==1'b0 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A3==1'b1 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && EN==1'b1) (A3 +=> X3)=(0, 0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPUHT28_LVLDBUFE0M4_2

//%BEGIN UDPUHT28_LVLDBUFE0M4_4
`celldefine
module UDPUHT28_LVLDBUFE0M4_4 (X0, X1, X2, X3, A0, A1, A2, A3, EN);
  input A0, A1, A2, A3, EN;
  output X0, X1, X2, X3;
  wire int_0, int_1, int_2, int_3;


    and inst0  (int_0, A3, EN);
    and inst1  (int_1, A2, EN);
    and inst2  (int_2, A1, EN);
    and inst3  (int_3, A0, EN);
  `ifdef VIRL_functiononly
    buf #`SNPS_COMBO_DELAY  instt0 (X3, int_0);
    buf #`SNPS_COMBO_DELAY  instt1 (X2, int_1);
    buf #`SNPS_COMBO_DELAY  instt2 (X1, int_2);
    buf #`SNPS_COMBO_DELAY  instt3 (X0, int_3);
  `else
    buf instt0  (X3, int_0);
    buf instt1  (X2, int_1);
    buf instt2  (X1, int_2);
    buf instt3  (X0, int_3);
  `endif
  `ifdef VIRL_functiononly
  `else

specify
if (A1==1'b0 && A2==1'b0 && A3==1'b0 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b0 && A2==1'b0 && A3==1'b1 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b0 && A2==1'b1 && A3==1'b0 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b0 && A2==1'b1 && A3==1'b1 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b1 && A2==1'b0 && A3==1'b0 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b1 && A2==1'b0 && A3==1'b1 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b1 && A2==1'b1 && A3==1'b0 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b1 && A2==1'b1 && A3==1'b1 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && A3==1'b0) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && A3==1'b1) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && A3==1'b0) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && A3==1'b1) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && A3==1'b0) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && A3==1'b1) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b0) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X0)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && A3==1'b0) (EN +=> X1)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && A3==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && A3==1'b0) (EN +=> X1)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && A3==1'b0) (EN +=> X1)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && A3==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b0) (EN +=> X1)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b0 && A3==1'b0 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b0 && A3==1'b1 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b1 && A3==1'b0 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b1 && A3==1'b1 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b0 && A3==1'b0 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b0 && A3==1'b1 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b1 && A3==1'b0 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b1 && A3==1'b1 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && A3==1'b0) (EN +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && A3==1'b1) (EN +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && A3==1'b0) (EN +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && A3==1'b0) (EN +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && A3==1'b1) (EN +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b0) (EN +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A3==1'b0 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A3==1'b1 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A3==1'b0 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A3==1'b1 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A3==1'b0 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A3==1'b1 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A3==1'b0 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A3==1'b1 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && EN==1'b1) (A3 +=> X3)=(0, 0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPUHT28_LVLDBUFE0M4_4

//%BEGIN UDPUHT28_LVLDBUFE0M4_8
`celldefine
module UDPUHT28_LVLDBUFE0M4_8 (X0, X1, X2, X3, A0, A1, A2, A3, EN);
  input A0, A1, A2, A3, EN;
  output X0, X1, X2, X3;
  wire int_0, int_1, int_2, int_3;


    and inst0  (int_0, A3, EN);
    and inst1  (int_1, A2, EN);
    and inst2  (int_2, A1, EN);
    and inst3  (int_3, A0, EN);
  `ifdef VIRL_functiononly
    buf #`SNPS_COMBO_DELAY  instt0 (X3, int_0);
    buf #`SNPS_COMBO_DELAY  instt1 (X2, int_1);
    buf #`SNPS_COMBO_DELAY  instt2 (X1, int_2);
    buf #`SNPS_COMBO_DELAY  instt3 (X0, int_3);
  `else
    buf instt0  (X3, int_0);
    buf instt1  (X2, int_1);
    buf instt2  (X1, int_2);
    buf instt3  (X0, int_3);
  `endif
  `ifdef VIRL_functiononly
  `else

specify
if (A1==1'b0 && A2==1'b0 && A3==1'b0 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b0 && A2==1'b0 && A3==1'b1 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b0 && A2==1'b1 && A3==1'b0 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b0 && A2==1'b1 && A3==1'b1 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b1 && A2==1'b0 && A3==1'b0 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b1 && A2==1'b0 && A3==1'b1 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b1 && A2==1'b1 && A3==1'b0 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A1==1'b1 && A2==1'b1 && A3==1'b1 && EN==1'b1) (A0 +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && A3==1'b0) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && A3==1'b1) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && A3==1'b0) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && A3==1'b1) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && A3==1'b0) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && A3==1'b1) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b0) (EN +=> X0)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X0)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && A3==1'b0) (EN +=> X1)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && A3==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && A3==1'b0) (EN +=> X1)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && A3==1'b0) (EN +=> X1)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && A3==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b0) (EN +=> X1)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b0 && A3==1'b0 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b0 && A3==1'b1 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b1 && A3==1'b0 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b0 && A2==1'b1 && A3==1'b1 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b0 && A3==1'b0 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b0 && A3==1'b1 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b1 && A3==1'b0 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b1 && A2==1'b1 && A3==1'b1 && EN==1'b1) (A1 +=> X1)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && A3==1'b0) (EN +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && A3==1'b1) (EN +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && A3==1'b0) (EN +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && A3==1'b0) (EN +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && A3==1'b1) (EN +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b0) (EN +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A3==1'b0 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A3==1'b1 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A3==1'b0 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A3==1'b1 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A3==1'b0 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A3==1'b1 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A3==1'b0 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A3==1'b1 && EN==1'b1) (A2 +=> X2)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && A3==1'b1) (EN +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && EN==1'b1) (A3 +=> X3)=(0, 0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1 && EN==1'b1) (A3 +=> X3)=(0, 0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPUHT28_LVLDBUFE0M4_8

//%BEGIN UDPUHT28_LVLDBUFE0_1

`celldefine
module UDPUHT28_LVLDBUFE0_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_1

//%BEGIN UDPUHT28_LVLDBUFE0_2

`celldefine
module UDPUHT28_LVLDBUFE0_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_2

//%BEGIN UDPUHT28_LVLDBUFE0_4

`celldefine
module UDPUHT28_LVLDBUFE0_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_4

//%BEGIN UDPUHT28_LVLDBUFE0_8

`celldefine
module UDPUHT28_LVLDBUFE0_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_8

//%BEGIN UDPUHT28_LVLDBUFE0_DPNR_1

`celldefine
module UDPUHT28_LVLDBUFE0_DPNR_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_DPNR_1

//%BEGIN UDPUHT28_LVLDBUFE0_DPNR_2

`celldefine
module UDPUHT28_LVLDBUFE0_DPNR_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_DPNR_2

//%BEGIN UDPUHT28_LVLDBUFE0_DPNR_4

`celldefine
module UDPUHT28_LVLDBUFE0_DPNR_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_DPNR_4

//%BEGIN UDPUHT28_LVLDBUFE0_DPNR_8

`celldefine
module UDPUHT28_LVLDBUFE0_DPNR_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_DPNR_8

//%BEGIN UDPUHT28_LVLDBUFE0_D_1

`celldefine
module UDPUHT28_LVLDBUFE0_D_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_D_1

//%BEGIN UDPUHT28_LVLDBUFE0_D_2

`celldefine
module UDPUHT28_LVLDBUFE0_D_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_D_2

//%BEGIN UDPUHT28_LVLDBUFE0_D_4

`celldefine
module UDPUHT28_LVLDBUFE0_D_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_D_4

//%BEGIN UDPUHT28_LVLDBUFE0_D_8

`celldefine
module UDPUHT28_LVLDBUFE0_D_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_D_8

//%BEGIN UDPUHT28_LVLDBUFE0_O_1

`celldefine
module UDPUHT28_LVLDBUFE0_O_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_O_1

//%BEGIN UDPUHT28_LVLDBUFE0_O_2

`celldefine
module UDPUHT28_LVLDBUFE0_O_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_O_2

//%BEGIN UDPUHT28_LVLDBUFE0_O_4

`celldefine
module UDPUHT28_LVLDBUFE0_O_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_O_4

//%BEGIN UDPUHT28_LVLDBUFE0_O_8

`celldefine
module UDPUHT28_LVLDBUFE0_O_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_O_8

//%BEGIN UDPUHT28_LVLDBUFE0_PNR_1

`celldefine
module UDPUHT28_LVLDBUFE0_PNR_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_PNR_1

//%BEGIN UDPUHT28_LVLDBUFE0_PNR_2

`celldefine
module UDPUHT28_LVLDBUFE0_PNR_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_PNR_2

//%BEGIN UDPUHT28_LVLDBUFE0_PNR_4

`celldefine
module UDPUHT28_LVLDBUFE0_PNR_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_PNR_4

//%BEGIN UDPUHT28_LVLDBUFE0_PNR_8

`celldefine
module UDPUHT28_LVLDBUFE0_PNR_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_PNR_8

//%BEGIN UDPUHT28_LVLDBUFE0_PONR_1

`celldefine
module UDPUHT28_LVLDBUFE0_PONR_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_PONR_1

//%BEGIN UDPUHT28_LVLDBUFE0_PONR_2

`celldefine
module UDPUHT28_LVLDBUFE0_PONR_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_PONR_2

//%BEGIN UDPUHT28_LVLDBUFE0_PONR_4

`celldefine
module UDPUHT28_LVLDBUFE0_PONR_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_PONR_4

//%BEGIN UDPUHT28_LVLDBUFE0_PONR_8

`celldefine
module UDPUHT28_LVLDBUFE0_PONR_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
      and #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      and instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A +=> X)=(0, 0);
if (A==1'b1) (EN +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUFE0_PONR_8

//%BEGIN UDPUHT28_LVLDBUF_1

`celldefine
module UDPUHT28_LVLDBUF_1 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_1

//%BEGIN UDPUHT28_LVLDBUF_2

`celldefine
module UDPUHT28_LVLDBUF_2 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_2

//%BEGIN UDPUHT28_LVLDBUF_4

`celldefine
module UDPUHT28_LVLDBUF_4 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_4

//%BEGIN UDPUHT28_LVLDBUF_8

`celldefine
module UDPUHT28_LVLDBUF_8 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_8

//%BEGIN UDPUHT28_LVLDBUF_DPNR_1

`celldefine
module UDPUHT28_LVLDBUF_DPNR_1 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_DPNR_1

//%BEGIN UDPUHT28_LVLDBUF_DPNR_2

`celldefine
module UDPUHT28_LVLDBUF_DPNR_2 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_DPNR_2

//%BEGIN UDPUHT28_LVLDBUF_DPNR_4

`celldefine
module UDPUHT28_LVLDBUF_DPNR_4 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_DPNR_4

//%BEGIN UDPUHT28_LVLDBUF_DPNR_8

`celldefine
module UDPUHT28_LVLDBUF_DPNR_8 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_DPNR_8

//%BEGIN UDPUHT28_LVLDBUF_D_1

`celldefine
module UDPUHT28_LVLDBUF_D_1 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_D_1

//%BEGIN UDPUHT28_LVLDBUF_D_2

`celldefine
module UDPUHT28_LVLDBUF_D_2 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_D_2

//%BEGIN UDPUHT28_LVLDBUF_D_4

`celldefine
module UDPUHT28_LVLDBUF_D_4 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_D_4

//%BEGIN UDPUHT28_LVLDBUF_D_8

`celldefine
module UDPUHT28_LVLDBUF_D_8 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_D_8

//%BEGIN UDPUHT28_LVLDBUF_O_1

`celldefine
module UDPUHT28_LVLDBUF_O_1 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_O_1

//%BEGIN UDPUHT28_LVLDBUF_O_2

`celldefine
module UDPUHT28_LVLDBUF_O_2 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_O_2

//%BEGIN UDPUHT28_LVLDBUF_O_4

`celldefine
module UDPUHT28_LVLDBUF_O_4 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_O_4

//%BEGIN UDPUHT28_LVLDBUF_O_8

`celldefine
module UDPUHT28_LVLDBUF_O_8 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_O_8

//%BEGIN UDPUHT28_LVLDBUF_PNR_1

`celldefine
module UDPUHT28_LVLDBUF_PNR_1 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_PNR_1

//%BEGIN UDPUHT28_LVLDBUF_PNR_2

`celldefine
module UDPUHT28_LVLDBUF_PNR_2 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_PNR_2

//%BEGIN UDPUHT28_LVLDBUF_PNR_4

`celldefine
module UDPUHT28_LVLDBUF_PNR_4 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_PNR_4

//%BEGIN UDPUHT28_LVLDBUF_PNR_8

`celldefine
module UDPUHT28_LVLDBUF_PNR_8 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_PNR_8

//%BEGIN UDPUHT28_LVLDBUF_PONR_1

`celldefine
module UDPUHT28_LVLDBUF_PONR_1 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_PONR_1

//%BEGIN UDPUHT28_LVLDBUF_PONR_2

`celldefine
module UDPUHT28_LVLDBUF_PONR_2 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_PONR_2

//%BEGIN UDPUHT28_LVLDBUF_PONR_4

`celldefine
module UDPUHT28_LVLDBUF_PONR_4 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_PONR_4

//%BEGIN UDPUHT28_LVLDBUF_PONR_8

`celldefine
module UDPUHT28_LVLDBUF_PONR_8 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   `ifdef VIRL_functiononly
       buf #`SNPS_COMBO_DELAY  instt0 (X, A);    
   `else
       buf instt0  (X, A);         
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A +=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDBUF_PONR_8

//%BEGIN UDPUHT28_LVLDINVE1_1

`celldefine
module UDPUHT28_LVLDINVE1_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_1


//%BEGIN UDPUHT28_LVLDINVE1_2

`celldefine
module UDPUHT28_LVLDINVE1_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_2


//%BEGIN UDPUHT28_LVLDINVE1_4

`celldefine
module UDPUHT28_LVLDINVE1_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_4


//%BEGIN UDPUHT28_LVLDINVE1_8

`celldefine
module UDPUHT28_LVLDINVE1_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_8


//%BEGIN UDPUHT28_LVLDINVE1_DPNR_1

`celldefine
module UDPUHT28_LVLDINVE1_DPNR_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_DPNR_1


//%BEGIN UDPUHT28_LVLDINVE1_DPNR_2

`celldefine
module UDPUHT28_LVLDINVE1_DPNR_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_DPNR_2


//%BEGIN UDPUHT28_LVLDINVE1_DPNR_4

`celldefine
module UDPUHT28_LVLDINVE1_DPNR_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_DPNR_4


//%BEGIN UDPUHT28_LVLDINVE1_DPNR_8

`celldefine
module UDPUHT28_LVLDINVE1_DPNR_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_DPNR_8


//%BEGIN UDPUHT28_LVLDINVE1_D_1

`celldefine
module UDPUHT28_LVLDINVE1_D_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_D_1


//%BEGIN UDPUHT28_LVLDINVE1_D_2

`celldefine
module UDPUHT28_LVLDINVE1_D_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_D_2


//%BEGIN UDPUHT28_LVLDINVE1_D_4

`celldefine
module UDPUHT28_LVLDINVE1_D_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_D_4


//%BEGIN UDPUHT28_LVLDINVE1_D_8

`celldefine
module UDPUHT28_LVLDINVE1_D_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_D_8


//%BEGIN UDPUHT28_LVLDINVE1_O_1

`celldefine
module UDPUHT28_LVLDINVE1_O_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_O_1


//%BEGIN UDPUHT28_LVLDINVE1_O_2

`celldefine
module UDPUHT28_LVLDINVE1_O_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_O_2


//%BEGIN UDPUHT28_LVLDINVE1_O_4

`celldefine
module UDPUHT28_LVLDINVE1_O_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_O_4


//%BEGIN UDPUHT28_LVLDINVE1_O_8

`celldefine
module UDPUHT28_LVLDINVE1_O_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_O_8


//%BEGIN UDPUHT28_LVLDINVE1_PNR_1

`celldefine
module UDPUHT28_LVLDINVE1_PNR_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_PNR_1


//%BEGIN UDPUHT28_LVLDINVE1_PNR_2

`celldefine
module UDPUHT28_LVLDINVE1_PNR_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_PNR_2


//%BEGIN UDPUHT28_LVLDINVE1_PNR_4

`celldefine
module UDPUHT28_LVLDINVE1_PNR_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_PNR_4


//%BEGIN UDPUHT28_LVLDINVE1_PNR_8

`celldefine
module UDPUHT28_LVLDINVE1_PNR_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_PNR_8


//%BEGIN UDPUHT28_LVLDINVE1_PONR_1

`celldefine
module UDPUHT28_LVLDINVE1_PONR_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_PONR_1


//%BEGIN UDPUHT28_LVLDINVE1_PONR_2

`celldefine
module UDPUHT28_LVLDINVE1_PONR_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_PONR_2


//%BEGIN UDPUHT28_LVLDINVE1_PONR_4

`celldefine
module UDPUHT28_LVLDINVE1_PONR_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_PONR_4


//%BEGIN UDPUHT28_LVLDINVE1_PONR_8

`celldefine
module UDPUHT28_LVLDINVE1_PONR_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
      nand #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
      nand instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
if (EN==1'b1) (A -=> X)=(0, 0);
if (A==1'b1) (EN -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINVE1_PONR_8


//%BEGIN UDPUHT28_LVLDINV_1

`celldefine
module UDPUHT28_LVLDINV_1 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_1


//%BEGIN UDPUHT28_LVLDINV_2

`celldefine
module UDPUHT28_LVLDINV_2 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_2


//%BEGIN UDPUHT28_LVLDINV_4

`celldefine
module UDPUHT28_LVLDINV_4 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_4


//%BEGIN UDPUHT28_LVLDINV_8

`celldefine
module UDPUHT28_LVLDINV_8 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_8


//%BEGIN UDPUHT28_LVLDINV_DPNR_1

`celldefine
module UDPUHT28_LVLDINV_DPNR_1 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_DPNR_1


//%BEGIN UDPUHT28_LVLDINV_DPNR_2

`celldefine
module UDPUHT28_LVLDINV_DPNR_2 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_DPNR_2


//%BEGIN UDPUHT28_LVLDINV_DPNR_4

`celldefine
module UDPUHT28_LVLDINV_DPNR_4 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_DPNR_4


//%BEGIN UDPUHT28_LVLDINV_DPNR_8

`celldefine
module UDPUHT28_LVLDINV_DPNR_8 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_DPNR_8


//%BEGIN UDPUHT28_LVLDINV_D_1

`celldefine
module UDPUHT28_LVLDINV_D_1 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_D_1


//%BEGIN UDPUHT28_LVLDINV_D_2

`celldefine
module UDPUHT28_LVLDINV_D_2 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_D_2


//%BEGIN UDPUHT28_LVLDINV_D_4

`celldefine
module UDPUHT28_LVLDINV_D_4 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_D_4


//%BEGIN UDPUHT28_LVLDINV_D_8

`celldefine
module UDPUHT28_LVLDINV_D_8 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_D_8


//%BEGIN UDPUHT28_LVLDINV_O_1

`celldefine
module UDPUHT28_LVLDINV_O_1 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_O_1


//%BEGIN UDPUHT28_LVLDINV_O_2

`celldefine
module UDPUHT28_LVLDINV_O_2 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_O_2


//%BEGIN UDPUHT28_LVLDINV_O_4

`celldefine
module UDPUHT28_LVLDINV_O_4 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_O_4


//%BEGIN UDPUHT28_LVLDINV_O_8

`celldefine
module UDPUHT28_LVLDINV_O_8 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_O_8


//%BEGIN UDPUHT28_LVLDINV_PNR_1

`celldefine
module UDPUHT28_LVLDINV_PNR_1 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_PNR_1


//%BEGIN UDPUHT28_LVLDINV_PNR_2

`celldefine
module UDPUHT28_LVLDINV_PNR_2 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_PNR_2


//%BEGIN UDPUHT28_LVLDINV_PNR_4

`celldefine
module UDPUHT28_LVLDINV_PNR_4 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_PNR_4


//%BEGIN UDPUHT28_LVLDINV_PNR_8

`celldefine
module UDPUHT28_LVLDINV_PNR_8 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_PNR_8


//%BEGIN UDPUHT28_LVLDINV_PONR_1

`celldefine
module UDPUHT28_LVLDINV_PONR_1 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_PONR_1


//%BEGIN UDPUHT28_LVLDINV_PONR_2

`celldefine
module UDPUHT28_LVLDINV_PONR_2 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_PONR_2


//%BEGIN UDPUHT28_LVLDINV_PONR_4

`celldefine
module UDPUHT28_LVLDINV_PONR_4 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_PONR_4


//%BEGIN UDPUHT28_LVLDINV_PONR_8

`celldefine
module UDPUHT28_LVLDINV_PONR_8 (X, A);
   output X;
   input A;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
       not #`SNPS_COMBO_DELAY  instt0 (X, A);
   `else
       not instt0  (X, A);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (A -=> X)=(0, 0);
endspecify
   `endif
endmodule
`endcelldefine

//%END UDPUHT28_LVLDINV_PONR_8


//%BEGIN UDPUHT28_PGATBDRV_CONRY2_10

`celldefine
module UDPUHT28_PGATBDRV_CONRY2_10 (ENX, EN);
   output ENX;
   input EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        buf #`SNPS_COMBO_DELAY  instt0 (ENX, EN);
   `else
        buf instt0  (ENX, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (EN +=> ENX)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_PGATBDRV_CONRY2_10

//%BEGIN UDPUHT28_PGATBDRV_CONR_6

`celldefine
module UDPUHT28_PGATBDRV_CONR_6 (ENX, EN);
   output ENX;
   input EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        buf #`SNPS_COMBO_DELAY  instt0 (ENX, EN);
   `else
        buf instt0  (ENX, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (EN +=> ENX)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_PGATBDRV_CONR_6

//%BEGIN UDPUHT28_PGATBDRV_ONRY2_10

`celldefine
module UDPUHT28_PGATBDRV_ONRY2_10 (ENX, EN);
   output ENX;
   input EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        buf #`SNPS_COMBO_DELAY  instt0 (ENX, EN);
   `else
        buf instt0  (ENX, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (EN +=> ENX)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_PGATBDRV_ONRY2_10

//%BEGIN UDPUHT28_PGATBDRV_ONR_6

`celldefine
module UDPUHT28_PGATBDRV_ONR_6 (ENX, EN);
   output ENX;
   input EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        buf #`SNPS_COMBO_DELAY  instt0 (ENX, EN);
   `else
        buf instt0  (ENX, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (EN +=> ENX)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_PGATBDRV_ONR_6

//%BEGIN UDPUHT28_PGATBDRV_ORNRY2_10

`celldefine
module UDPUHT28_PGATBDRV_ORNRY2_10 (ENX, EN);
   output ENX;
   input EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        buf #`SNPS_COMBO_DELAY  instt0 (ENX, EN);
   `else
        buf instt0  (ENX, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (EN +=> ENX)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_PGATBDRV_ORNRY2_10

//%BEGIN UDPUHT28_PGATBDRV_ORNR_10

`celldefine
module UDPUHT28_PGATBDRV_ORNR_10 (ENX, EN);
   output ENX;
   input EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        buf #`SNPS_COMBO_DELAY  instt0 (ENX, EN);
   `else
        buf instt0  (ENX, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
ifnone (EN +=> ENX)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPUHT28_PGATBDRV_ORNR_10

//%BEGIN UDPUHT28_PGATBFILL_CONRY2_10

`celldefine
module UDPUHT28_PGATBFILL_CONRY2_10 (ENX, EN);
   output ENX;
   input EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   buf instt0  (ENX, EN);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
endspecify
endmodule
`endcelldefine

//%END UDPUHT28_PGATBFILL_CONRY2_10

//%BEGIN UDPUHT28_PGATBFILL_CONR_6

`celldefine
module UDPUHT28_PGATBFILL_CONR_6 (ENX, EN);
   output ENX;
   input EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   buf instt0  (ENX, EN);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
endspecify
endmodule
`endcelldefine

//%END UDPUHT28_PGATBFILL_CONR_6

//%BEGIN UDPUHT28_PGATBFILL_ONRY2_10

`celldefine
module UDPUHT28_PGATBFILL_ONRY2_10 (ENX, EN);
   output ENX;
   input EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   buf instt0  (ENX, EN);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
endspecify
endmodule
`endcelldefine

//%END UDPUHT28_PGATBFILL_ONRY2_10

//%BEGIN UDPUHT28_PGATBFILL_ONR_6

`celldefine
module UDPUHT28_PGATBFILL_ONR_6 (ENX, EN);
   output ENX;
   input EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   buf instt0  (ENX, EN);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////


specify
endspecify
endmodule
`endcelldefine

//%END UDPUHT28_PGATBFILL_ONR_6

//%BEGIN UDPUHT28_PGATDRV_CONRY2_10

`celldefine
module UDPUHT28_PGATDRV_CONRY2_10 (ENXB);
   input ENXB;

endmodule
`endcelldefine

//%END UDPUHT28_PGATDRV_CONRY2_10

//%BEGIN UDPUHT28_PGATDRV_CONR_6

`celldefine
module UDPUHT28_PGATDRV_CONR_6 (ENXB);
   input ENXB;

endmodule
`endcelldefine

//%END UDPUHT28_PGATDRV_CONR_6

//%BEGIN UDPUHT28_PGATDRV_ONRY2_10

`celldefine
module UDPUHT28_PGATDRV_ONRY2_10 (ENXB);
   input ENXB;

endmodule
`endcelldefine

//%END UDPUHT28_PGATDRV_ONRY2_10

//%BEGIN UDPUHT28_PGATDRV_ONR_6

`celldefine
module UDPUHT28_PGATDRV_ONR_6 (ENXB);
   input ENXB;

endmodule
`endcelldefine

//%END UDPUHT28_PGATDRV_ONR_6

//%BEGIN UDPUHT28_PGATDRV_ORNRY2_10

`celldefine
module UDPUHT28_PGATDRV_ORNRY2_10 (ENXB);
   input ENXB;

endmodule
`endcelldefine

//%END UDPUHT28_PGATDRV_ORNRY2_10

//%BEGIN UDPUHT28_PGATDRV_ORNR_10

`celldefine
module UDPUHT28_PGATDRV_ORNR_10 (ENXB);
   input ENXB;

endmodule
`endcelldefine

//%END UDPUHT28_PGATDRV_ORNR_10

//%BEGIN UDPUHT28_PGATFILL_CONRY2_10

`celldefine
module UDPUHT28_PGATFILL_CONRY2_10 (ENXB);
   input ENXB;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


endmodule
`endcelldefine

//%END UDPUHT28_PGATFILL_CONRY2_10

//%BEGIN UDPUHT28_PGATFILL_CONR_6

`celldefine
module UDPUHT28_PGATFILL_CONR_6 (ENXB);
   input ENXB;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


endmodule
`endcelldefine

//%END UDPUHT28_PGATFILL_CONR_6

//%BEGIN UDPUHT28_PGATFILL_ONRY2_10

`celldefine
module UDPUHT28_PGATFILL_ONRY2_10 (ENXB);
   input ENXB;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


endmodule
`endcelldefine

//%END UDPUHT28_PGATFILL_ONRY2_10

//%BEGIN UDPUHT28_PGATFILL_ONR_6

`celldefine
module UDPUHT28_PGATFILL_ONR_6 (ENXB);
   input ENXB;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


endmodule
`endcelldefine

//%END UDPUHT28_PGATFILL_ONR_6

//%BEGIN UDPUHT28_TAPPN_DN

`celldefine
module UDPUHT28_TAPPN_DN ();
endmodule
`endcelldefine

//%END UDPUHT28_TAPPN_DN

//%BEGIN UDPUHT28_TAPSS

`celldefine
module UDPUHT28_TAPSS ();
endmodule
`endcelldefine

//%END UDPUHT28_TAPSS

