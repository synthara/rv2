//----------------------------------------------------------------------------
// Date		: $Date: 2023/05/29 10:49:37 $
// Copyright	: 1997-2023 by Synopsys, Inc., All Rights Reserved.
// Revision	: $Revision: 1.1 $
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

//%BEGIN UDPLVT32_BUF_PNR_1

`celldefine
module UDPLVT32_BUF_PNR_1 (X, A);
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

//%END UDPLVT32_BUF_PNR_1

//%BEGIN UDPLVT32_BUF_PNR_16

`celldefine
module UDPLVT32_BUF_PNR_16 (X, A);
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

//%END UDPLVT32_BUF_PNR_16

//%BEGIN UDPLVT32_BUF_PNR_2

`celldefine
module UDPLVT32_BUF_PNR_2 (X, A);
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

//%END UDPLVT32_BUF_PNR_2

//%BEGIN UDPLVT32_BUF_PNR_3

`celldefine
module UDPLVT32_BUF_PNR_3 (X, A);
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

//%END UDPLVT32_BUF_PNR_3

//%BEGIN UDPLVT32_BUF_PNR_4

`celldefine
module UDPLVT32_BUF_PNR_4 (X, A);
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

//%END UDPLVT32_BUF_PNR_4

//%BEGIN UDPLVT32_BUF_PNR_6

`celldefine
module UDPLVT32_BUF_PNR_6 (X, A);
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

//%END UDPLVT32_BUF_PNR_6

//%BEGIN UDPLVT32_BUF_PNR_8

`celldefine
module UDPLVT32_BUF_PNR_8 (X, A);
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

//%END UDPLVT32_BUF_PNR_8

//%BEGIN UDPLVT32_BUF_PSNR_1

`celldefine
module UDPLVT32_BUF_PSNR_1 (X, A);
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

//%END UDPLVT32_BUF_PSNR_1

//%BEGIN UDPLVT32_BUF_PSNR_12

`celldefine
module UDPLVT32_BUF_PSNR_12 (X, A);
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

//%END UDPLVT32_BUF_PSNR_12

//%BEGIN UDPLVT32_BUF_PSNR_16

`celldefine
module UDPLVT32_BUF_PSNR_16 (X, A);
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

//%END UDPLVT32_BUF_PSNR_16

//%BEGIN UDPLVT32_BUF_PSNR_1P5

`celldefine
module UDPLVT32_BUF_PSNR_1P5 (X, A);
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

//%END UDPLVT32_BUF_PSNR_1P5

//%BEGIN UDPLVT32_BUF_PSNR_2

`celldefine
module UDPLVT32_BUF_PSNR_2 (X, A);
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

//%END UDPLVT32_BUF_PSNR_2

//%BEGIN UDPLVT32_BUF_PSNR_3

`celldefine
module UDPLVT32_BUF_PSNR_3 (X, A);
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

//%END UDPLVT32_BUF_PSNR_3

//%BEGIN UDPLVT32_BUF_PSNR_4

`celldefine
module UDPLVT32_BUF_PSNR_4 (X, A);
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

//%END UDPLVT32_BUF_PSNR_4

//%BEGIN UDPLVT32_BUF_PSNR_5

`celldefine
module UDPLVT32_BUF_PSNR_5 (X, A);
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

//%END UDPLVT32_BUF_PSNR_5

//%BEGIN UDPLVT32_BUF_PSNR_6

`celldefine
module UDPLVT32_BUF_PSNR_6 (X, A);
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

//%END UDPLVT32_BUF_PSNR_6

//%BEGIN UDPLVT32_BUF_PSNR_8

`celldefine
module UDPLVT32_BUF_PSNR_8 (X, A);
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

//%END UDPLVT32_BUF_PSNR_8

//%BEGIN UDPLVT32_CKGTNLT_PNR_12

`celldefine
module UDPLVT32_CKGTNLT_PNR_12 (Q, CK, EN, SE);
   output Q;
   input CK, EN, SE;

   reg viol_0;
     wire viol_x;
   wire delayed_CK, delayed_EN, delayed_SE;

   wire int_res__prectrl, int_res_iq, iq_y;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_EN, EN);
   buf inst2  (delayed_SE, SE);
`endif

   or inst3  (int_res__prectrl, delayed_EN, delayed_SE);
   snps_latch insts0  (int_res_iq, viol_x, delayed_CK, int_res__prectrl);
   not inst4  (iq_y, int_res_iq);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, delayed_CK, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
   `ifdef VIRL_functiononly
       or #`SNPS_CKGTLT_DELAY  instt0 (Q, iq_y, CK);
   `else
       or instt0  (Q, iq_y, CK);
   `endif

   `ifdef VIRL_functiononly

   `else
not inst6  (_net_0, SE);
not inst7  (_net_1, EN);
and inst8  (ENABLE_NOT_EN_AND_NOT_SE, _net_0, _net_1);
not inst9  (_net_2, EN);
and inst10  (ENABLE_NOT_EN_AND_SE, SE, _net_2);
not inst11  (_net_3, SE);
and inst12  (ENABLE_EN_AND_NOT_SE, _net_3, EN);
and inst13  (ENABLE_EN_AND_SE, SE, EN);
not inst14  (ENABLE_NOT_SE, SE);
not inst15  (ENABLE_NOT_EN, EN);

specify
if (EN==1'b0 && SE==1'b1) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b0) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b1) (CK +=> Q)=(0, 0);
`ifdef SNPS_CKGT_NOEDGE
 if (EN==1'b0 && SE==1'b0) (CK +=> Q)=(0, 0); 
`else 
 if (EN==1'b0 && SE==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
`endif

$width(posedge CK &&&  ENABLE_NOT_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$setuphold(negedge CK &&&  ENABLE_NOT_SE==1'b1 , posedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(negedge CK &&&  ENABLE_NOT_SE==1'b1 , negedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(negedge CK &&&  ENABLE_NOT_EN==1'b1 , posedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(negedge CK &&&  ENABLE_NOT_EN==1'b1 , negedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_CKGTNLT_PNR_12

//%BEGIN UDPLVT32_CKGTNLT_PNR_16

`celldefine
module UDPLVT32_CKGTNLT_PNR_16 (Q, CK, EN, SE);
   output Q;
   input CK, EN, SE;

   reg viol_0;
     wire viol_x;
   wire delayed_CK, delayed_EN, delayed_SE;

   wire int_res__prectrl, int_res_iq, iq_y;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_EN, EN);
   buf inst2  (delayed_SE, SE);
`endif

   or inst3  (int_res__prectrl, delayed_EN, delayed_SE);
   snps_latch insts0  (int_res_iq, viol_x, delayed_CK, int_res__prectrl);
   not inst4  (iq_y, int_res_iq);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, delayed_CK, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
   `ifdef VIRL_functiononly
       or #`SNPS_CKGTLT_DELAY  instt0 (Q, iq_y, CK);
   `else
       or instt0  (Q, iq_y, CK);
   `endif

   `ifdef VIRL_functiononly

   `else
not inst6  (_net_0, SE);
not inst7  (_net_1, EN);
and inst8  (ENABLE_NOT_EN_AND_NOT_SE, _net_0, _net_1);
not inst9  (_net_2, EN);
and inst10  (ENABLE_NOT_EN_AND_SE, SE, _net_2);
not inst11  (_net_3, SE);
and inst12  (ENABLE_EN_AND_NOT_SE, _net_3, EN);
and inst13  (ENABLE_EN_AND_SE, SE, EN);
not inst14  (ENABLE_NOT_SE, SE);
not inst15  (ENABLE_NOT_EN, EN);

specify
if (EN==1'b0 && SE==1'b1) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b0) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b1) (CK +=> Q)=(0, 0);
`ifdef SNPS_CKGT_NOEDGE
 if (EN==1'b0 && SE==1'b0) (CK +=> Q)=(0, 0); 
`else 
 if (EN==1'b0 && SE==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
`endif

$width(posedge CK &&&  ENABLE_NOT_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$setuphold(negedge CK &&&  ENABLE_NOT_SE==1'b1 , posedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(negedge CK &&&  ENABLE_NOT_SE==1'b1 , negedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(negedge CK &&&  ENABLE_NOT_EN==1'b1 , posedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(negedge CK &&&  ENABLE_NOT_EN==1'b1 , negedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_CKGTNLT_PNR_16

//%BEGIN UDPLVT32_CKGTNLT_PNR_24

`celldefine
module UDPLVT32_CKGTNLT_PNR_24 (Q, CK, EN, SE);
   output Q;
   input CK, EN, SE;

   reg viol_0;
     wire viol_x;
   wire delayed_CK, delayed_EN, delayed_SE;

   wire int_res__prectrl, int_res_iq, iq_y;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_EN, EN);
   buf inst2  (delayed_SE, SE);
`endif

   or inst3  (int_res__prectrl, delayed_EN, delayed_SE);
   snps_latch insts0  (int_res_iq, viol_x, delayed_CK, int_res__prectrl);
   not inst4  (iq_y, int_res_iq);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, delayed_CK, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
   `ifdef VIRL_functiononly
       or #`SNPS_CKGTLT_DELAY  instt0 (Q, iq_y, CK);
   `else
       or instt0  (Q, iq_y, CK);
   `endif

   `ifdef VIRL_functiononly

   `else
not inst6  (_net_0, SE);
not inst7  (_net_1, EN);
and inst8  (ENABLE_NOT_EN_AND_NOT_SE, _net_0, _net_1);
not inst9  (_net_2, EN);
and inst10  (ENABLE_NOT_EN_AND_SE, SE, _net_2);
not inst11  (_net_3, SE);
and inst12  (ENABLE_EN_AND_NOT_SE, _net_3, EN);
and inst13  (ENABLE_EN_AND_SE, SE, EN);
not inst14  (ENABLE_NOT_SE, SE);
not inst15  (ENABLE_NOT_EN, EN);

specify
if (EN==1'b0 && SE==1'b1) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b0) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b1) (CK +=> Q)=(0, 0);
`ifdef SNPS_CKGT_NOEDGE
 if (EN==1'b0 && SE==1'b0) (CK +=> Q)=(0, 0); 
`else 
 if (EN==1'b0 && SE==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
`endif

$width(posedge CK &&&  ENABLE_NOT_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$setuphold(negedge CK &&&  ENABLE_NOT_SE==1'b1 , posedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(negedge CK &&&  ENABLE_NOT_SE==1'b1 , negedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(negedge CK &&&  ENABLE_NOT_EN==1'b1 , posedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(negedge CK &&&  ENABLE_NOT_EN==1'b1 , negedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_CKGTNLT_PNR_24

//%BEGIN UDPLVT32_CKGTNLT_PNR_32

`celldefine
module UDPLVT32_CKGTNLT_PNR_32 (Q, CK, EN, SE);
   output Q;
   input CK, EN, SE;

   reg viol_0;
     wire viol_x;
   wire delayed_CK, delayed_EN, delayed_SE;

   wire int_res__prectrl, int_res_iq, iq_y;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_EN, EN);
   buf inst2  (delayed_SE, SE);
`endif

   or inst3  (int_res__prectrl, delayed_EN, delayed_SE);
   snps_latch insts0  (int_res_iq, viol_x, delayed_CK, int_res__prectrl);
   not inst4  (iq_y, int_res_iq);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, delayed_CK, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
   `ifdef VIRL_functiononly
       or #`SNPS_CKGTLT_DELAY  instt0 (Q, iq_y, CK);
   `else
       or instt0  (Q, iq_y, CK);
   `endif

   `ifdef VIRL_functiononly

   `else
not inst6  (_net_0, SE);
not inst7  (_net_1, EN);
and inst8  (ENABLE_NOT_EN_AND_NOT_SE, _net_0, _net_1);
not inst9  (_net_2, EN);
and inst10  (ENABLE_NOT_EN_AND_SE, SE, _net_2);
not inst11  (_net_3, SE);
and inst12  (ENABLE_EN_AND_NOT_SE, _net_3, EN);
and inst13  (ENABLE_EN_AND_SE, SE, EN);
not inst14  (ENABLE_NOT_SE, SE);
not inst15  (ENABLE_NOT_EN, EN);

specify
if (EN==1'b0 && SE==1'b1) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b0) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b1) (CK +=> Q)=(0, 0);
`ifdef SNPS_CKGT_NOEDGE
 if (EN==1'b0 && SE==1'b0) (CK +=> Q)=(0, 0); 
`else 
 if (EN==1'b0 && SE==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
`endif

$width(posedge CK &&&  ENABLE_NOT_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$setuphold(negedge CK &&&  ENABLE_NOT_SE==1'b1 , posedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(negedge CK &&&  ENABLE_NOT_SE==1'b1 , negedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(negedge CK &&&  ENABLE_NOT_EN==1'b1 , posedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(negedge CK &&&  ENABLE_NOT_EN==1'b1 , negedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_CKGTNLT_PNR_32

//%BEGIN UDPLVT32_CKGTNLT_PNR_4

`celldefine
module UDPLVT32_CKGTNLT_PNR_4 (Q, CK, EN, SE);
   output Q;
   input CK, EN, SE;

   reg viol_0;
     wire viol_x;
   wire delayed_CK, delayed_EN, delayed_SE;

   wire int_res__prectrl, int_res_iq, iq_y;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_EN, EN);
   buf inst2  (delayed_SE, SE);
`endif

   or inst3  (int_res__prectrl, delayed_EN, delayed_SE);
   snps_latch insts0  (int_res_iq, viol_x, delayed_CK, int_res__prectrl);
   not inst4  (iq_y, int_res_iq);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, delayed_CK, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
   `ifdef VIRL_functiononly
       or #`SNPS_CKGTLT_DELAY  instt0 (Q, iq_y, CK);
   `else
       or instt0  (Q, iq_y, CK);
   `endif

   `ifdef VIRL_functiononly

   `else
not inst6  (_net_0, SE);
not inst7  (_net_1, EN);
and inst8  (ENABLE_NOT_EN_AND_NOT_SE, _net_0, _net_1);
not inst9  (_net_2, EN);
and inst10  (ENABLE_NOT_EN_AND_SE, SE, _net_2);
not inst11  (_net_3, SE);
and inst12  (ENABLE_EN_AND_NOT_SE, _net_3, EN);
and inst13  (ENABLE_EN_AND_SE, SE, EN);
not inst14  (ENABLE_NOT_SE, SE);
not inst15  (ENABLE_NOT_EN, EN);

specify
if (EN==1'b0 && SE==1'b1) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b0) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b1) (CK +=> Q)=(0, 0);
`ifdef SNPS_CKGT_NOEDGE
 if (EN==1'b0 && SE==1'b0) (CK +=> Q)=(0, 0); 
`else 
 if (EN==1'b0 && SE==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
`endif

$width(posedge CK &&&  ENABLE_NOT_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$setuphold(negedge CK &&&  ENABLE_NOT_SE==1'b1 , posedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(negedge CK &&&  ENABLE_NOT_SE==1'b1 , negedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(negedge CK &&&  ENABLE_NOT_EN==1'b1 , posedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(negedge CK &&&  ENABLE_NOT_EN==1'b1 , negedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_CKGTNLT_PNR_4

//%BEGIN UDPLVT32_CKGTNLT_PNR_6

`celldefine
module UDPLVT32_CKGTNLT_PNR_6 (Q, CK, EN, SE);
   output Q;
   input CK, EN, SE;

   reg viol_0;
     wire viol_x;
   wire delayed_CK, delayed_EN, delayed_SE;

   wire int_res__prectrl, int_res_iq, iq_y;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_EN, EN);
   buf inst2  (delayed_SE, SE);
`endif

   or inst3  (int_res__prectrl, delayed_EN, delayed_SE);
   snps_latch insts0  (int_res_iq, viol_x, delayed_CK, int_res__prectrl);
   not inst4  (iq_y, int_res_iq);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, delayed_CK, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
   `ifdef VIRL_functiononly
       or #`SNPS_CKGTLT_DELAY  instt0 (Q, iq_y, CK);
   `else
       or instt0  (Q, iq_y, CK);
   `endif

   `ifdef VIRL_functiononly

   `else
not inst6  (_net_0, SE);
not inst7  (_net_1, EN);
and inst8  (ENABLE_NOT_EN_AND_NOT_SE, _net_0, _net_1);
not inst9  (_net_2, EN);
and inst10  (ENABLE_NOT_EN_AND_SE, SE, _net_2);
not inst11  (_net_3, SE);
and inst12  (ENABLE_EN_AND_NOT_SE, _net_3, EN);
and inst13  (ENABLE_EN_AND_SE, SE, EN);
not inst14  (ENABLE_NOT_SE, SE);
not inst15  (ENABLE_NOT_EN, EN);

specify
if (EN==1'b0 && SE==1'b1) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b0) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b1) (CK +=> Q)=(0, 0);
`ifdef SNPS_CKGT_NOEDGE
 if (EN==1'b0 && SE==1'b0) (CK +=> Q)=(0, 0); 
`else 
 if (EN==1'b0 && SE==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
`endif

$width(posedge CK &&&  ENABLE_NOT_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$setuphold(negedge CK &&&  ENABLE_NOT_SE==1'b1 , posedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(negedge CK &&&  ENABLE_NOT_SE==1'b1 , negedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(negedge CK &&&  ENABLE_NOT_EN==1'b1 , posedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(negedge CK &&&  ENABLE_NOT_EN==1'b1 , negedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_CKGTNLT_PNR_6

//%BEGIN UDPLVT32_CKGTNLT_PNR_8

`celldefine
module UDPLVT32_CKGTNLT_PNR_8 (Q, CK, EN, SE);
   output Q;
   input CK, EN, SE;

   reg viol_0;
     wire viol_x;
   wire delayed_CK, delayed_EN, delayed_SE;

   wire int_res__prectrl, int_res_iq, iq_y;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_EN, EN);
   buf inst2  (delayed_SE, SE);
`endif

   or inst3  (int_res__prectrl, delayed_EN, delayed_SE);
   snps_latch insts0  (int_res_iq, viol_x, delayed_CK, int_res__prectrl);
   not inst4  (iq_y, int_res_iq);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, delayed_CK, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
   `ifdef VIRL_functiononly
       or #`SNPS_CKGTLT_DELAY  instt0 (Q, iq_y, CK);
   `else
       or instt0  (Q, iq_y, CK);
   `endif

   `ifdef VIRL_functiononly

   `else
not inst6  (_net_0, SE);
not inst7  (_net_1, EN);
and inst8  (ENABLE_NOT_EN_AND_NOT_SE, _net_0, _net_1);
not inst9  (_net_2, EN);
and inst10  (ENABLE_NOT_EN_AND_SE, SE, _net_2);
not inst11  (_net_3, SE);
and inst12  (ENABLE_EN_AND_NOT_SE, _net_3, EN);
and inst13  (ENABLE_EN_AND_SE, SE, EN);
not inst14  (ENABLE_NOT_SE, SE);
not inst15  (ENABLE_NOT_EN, EN);

specify
if (EN==1'b0 && SE==1'b1) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b0) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b1) (CK +=> Q)=(0, 0);
`ifdef SNPS_CKGT_NOEDGE
 if (EN==1'b0 && SE==1'b0) (CK +=> Q)=(0, 0); 
`else 
 if (EN==1'b0 && SE==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
`endif

$width(posedge CK &&&  ENABLE_NOT_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$setuphold(negedge CK &&&  ENABLE_NOT_SE==1'b1 , posedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(negedge CK &&&  ENABLE_NOT_SE==1'b1 , negedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(negedge CK &&&  ENABLE_NOT_EN==1'b1 , posedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(negedge CK &&&  ENABLE_NOT_EN==1'b1 , negedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_CKGTNLT_PNR_8

//%BEGIN UDPLVT32_CKGTPLT_PNR_12

`celldefine
module UDPLVT32_CKGTPLT_PNR_12 (Q, CK, EN, SE);
   output Q;
   input CK, EN, SE;

   reg viol_0;
     wire viol_x;
   wire delayed_CK, delayed_EN, delayed_SE;

   wire int_res__CK, int_res__prectrl, int_res_iq;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_EN, EN);
   buf inst2  (delayed_SE, SE);
`endif

   not inst3  (int_res__CK, delayed_CK);
   or inst4  (int_res__prectrl, delayed_EN, delayed_SE);
   snps_latch insts0  (int_res_iq, viol_x, int_res__CK, int_res__prectrl);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_res__CK, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
   `ifdef VIRL_functiononly
       and #`SNPS_CKGTLT_DELAY  instt0 (Q, int_res_iq, CK);
   `else
       and instt0  (Q, int_res_iq, CK);
   `endif

   `ifdef VIRL_functiononly

   `else

not inst6  (_net_0, SE);
not inst7  (_net_1, EN);
and inst8  (ENABLE_NOT_EN_AND_NOT_SE, _net_0, _net_1);
not inst9  (_net_2, EN);
and inst10  (ENABLE_NOT_EN_AND_SE, SE, _net_2);
not inst11  (_net_3, SE);
and inst12  (ENABLE_EN_AND_NOT_SE, _net_3, EN);
and inst13  (ENABLE_EN_AND_SE, SE, EN);
not inst14  (ENABLE_NOT_SE, SE);
not inst15  (ENABLE_NOT_EN, EN);

specify
if (EN==1'b0 && SE==1'b1) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b0) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b1) (CK +=> Q)=(0, 0);
`ifdef SNPS_CKGT_NOEDGE
 if (EN==1'b0 && SE==1'b0) (CK +=> Q)=(0, 0); 
`else 
 if (EN==1'b0 && SE==1'b0) (negedge CK => (Q +: 1'b1))=(0, 0);
`endif

$width(negedge CK &&&  ENABLE_NOT_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE==1'b1 , posedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(posedge CK &&&  ENABLE_NOT_SE==1'b1 , negedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(posedge CK &&&  ENABLE_NOT_EN==1'b1 , posedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_EN==1'b1 , negedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_CKGTPLT_PNR_12

//%BEGIN UDPLVT32_CKGTPLT_PNR_16

`celldefine
module UDPLVT32_CKGTPLT_PNR_16 (Q, CK, EN, SE);
   output Q;
   input CK, EN, SE;

   reg viol_0;
     wire viol_x;
   wire delayed_CK, delayed_EN, delayed_SE;

   wire int_res__CK, int_res__prectrl, int_res_iq;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_EN, EN);
   buf inst2  (delayed_SE, SE);
`endif

   not inst3  (int_res__CK, delayed_CK);
   or inst4  (int_res__prectrl, delayed_EN, delayed_SE);
   snps_latch insts0  (int_res_iq, viol_x, int_res__CK, int_res__prectrl);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_res__CK, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
   `ifdef VIRL_functiononly
       and #`SNPS_CKGTLT_DELAY  instt0 (Q, int_res_iq, CK);
   `else
       and instt0  (Q, int_res_iq, CK);
   `endif

   `ifdef VIRL_functiononly

   `else

not inst6  (_net_0, SE);
not inst7  (_net_1, EN);
and inst8  (ENABLE_NOT_EN_AND_NOT_SE, _net_0, _net_1);
not inst9  (_net_2, EN);
and inst10  (ENABLE_NOT_EN_AND_SE, SE, _net_2);
not inst11  (_net_3, SE);
and inst12  (ENABLE_EN_AND_NOT_SE, _net_3, EN);
and inst13  (ENABLE_EN_AND_SE, SE, EN);
not inst14  (ENABLE_NOT_SE, SE);
not inst15  (ENABLE_NOT_EN, EN);

specify
if (EN==1'b0 && SE==1'b1) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b0) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b1) (CK +=> Q)=(0, 0);
`ifdef SNPS_CKGT_NOEDGE
 if (EN==1'b0 && SE==1'b0) (CK +=> Q)=(0, 0); 
`else 
 if (EN==1'b0 && SE==1'b0) (negedge CK => (Q +: 1'b1))=(0, 0);
`endif

$width(negedge CK &&&  ENABLE_NOT_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE==1'b1 , posedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(posedge CK &&&  ENABLE_NOT_SE==1'b1 , negedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(posedge CK &&&  ENABLE_NOT_EN==1'b1 , posedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_EN==1'b1 , negedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_CKGTPLT_PNR_16

//%BEGIN UDPLVT32_CKGTPLT_PNR_24

`celldefine
module UDPLVT32_CKGTPLT_PNR_24 (Q, CK, EN, SE);
   output Q;
   input CK, EN, SE;

   reg viol_0;
     wire viol_x;
   wire delayed_CK, delayed_EN, delayed_SE;

   wire int_res__CK, int_res__prectrl, int_res_iq;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_EN, EN);
   buf inst2  (delayed_SE, SE);
`endif

   not inst3  (int_res__CK, delayed_CK);
   or inst4  (int_res__prectrl, delayed_EN, delayed_SE);
   snps_latch insts0  (int_res_iq, viol_x, int_res__CK, int_res__prectrl);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_res__CK, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
   `ifdef VIRL_functiononly
       and #`SNPS_CKGTLT_DELAY  instt0 (Q, int_res_iq, CK);
   `else
       and instt0  (Q, int_res_iq, CK);
   `endif

   `ifdef VIRL_functiononly

   `else

not inst6  (_net_0, SE);
not inst7  (_net_1, EN);
and inst8  (ENABLE_NOT_EN_AND_NOT_SE, _net_0, _net_1);
not inst9  (_net_2, EN);
and inst10  (ENABLE_NOT_EN_AND_SE, SE, _net_2);
not inst11  (_net_3, SE);
and inst12  (ENABLE_EN_AND_NOT_SE, _net_3, EN);
and inst13  (ENABLE_EN_AND_SE, SE, EN);
not inst14  (ENABLE_NOT_SE, SE);
not inst15  (ENABLE_NOT_EN, EN);

specify
if (EN==1'b0 && SE==1'b1) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b0) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b1) (CK +=> Q)=(0, 0);
`ifdef SNPS_CKGT_NOEDGE
 if (EN==1'b0 && SE==1'b0) (CK +=> Q)=(0, 0); 
`else 
 if (EN==1'b0 && SE==1'b0) (negedge CK => (Q +: 1'b1))=(0, 0);
`endif

$width(negedge CK &&&  ENABLE_NOT_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE==1'b1 , posedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(posedge CK &&&  ENABLE_NOT_SE==1'b1 , negedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(posedge CK &&&  ENABLE_NOT_EN==1'b1 , posedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_EN==1'b1 , negedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_CKGTPLT_PNR_24

//%BEGIN UDPLVT32_CKGTPLT_PNR_32

`celldefine
module UDPLVT32_CKGTPLT_PNR_32 (Q, CK, EN, SE);
   output Q;
   input CK, EN, SE;

   reg viol_0;
     wire viol_x;
   wire delayed_CK, delayed_EN, delayed_SE;

   wire int_res__CK, int_res__prectrl, int_res_iq;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_EN, EN);
   buf inst2  (delayed_SE, SE);
`endif

   not inst3  (int_res__CK, delayed_CK);
   or inst4  (int_res__prectrl, delayed_EN, delayed_SE);
   snps_latch insts0  (int_res_iq, viol_x, int_res__CK, int_res__prectrl);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_res__CK, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
   `ifdef VIRL_functiononly
       and #`SNPS_CKGTLT_DELAY  instt0 (Q, int_res_iq, CK);
   `else
       and instt0  (Q, int_res_iq, CK);
   `endif

   `ifdef VIRL_functiononly

   `else

not inst6  (_net_0, SE);
not inst7  (_net_1, EN);
and inst8  (ENABLE_NOT_EN_AND_NOT_SE, _net_0, _net_1);
not inst9  (_net_2, EN);
and inst10  (ENABLE_NOT_EN_AND_SE, SE, _net_2);
not inst11  (_net_3, SE);
and inst12  (ENABLE_EN_AND_NOT_SE, _net_3, EN);
and inst13  (ENABLE_EN_AND_SE, SE, EN);
not inst14  (ENABLE_NOT_SE, SE);
not inst15  (ENABLE_NOT_EN, EN);

specify
if (EN==1'b0 && SE==1'b1) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b0) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b1) (CK +=> Q)=(0, 0);
`ifdef SNPS_CKGT_NOEDGE
 if (EN==1'b0 && SE==1'b0) (CK +=> Q)=(0, 0); 
`else 
 if (EN==1'b0 && SE==1'b0) (negedge CK => (Q +: 1'b1))=(0, 0);
`endif

$width(negedge CK &&&  ENABLE_NOT_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE==1'b1 , posedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(posedge CK &&&  ENABLE_NOT_SE==1'b1 , negedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(posedge CK &&&  ENABLE_NOT_EN==1'b1 , posedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_EN==1'b1 , negedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_CKGTPLT_PNR_32

//%BEGIN UDPLVT32_CKGTPLT_PNR_4

`celldefine
module UDPLVT32_CKGTPLT_PNR_4 (Q, CK, EN, SE);
   output Q;
   input CK, EN, SE;

   reg viol_0;
     wire viol_x;
   wire delayed_CK, delayed_EN, delayed_SE;

   wire int_res__CK, int_res__prectrl, int_res_iq;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_EN, EN);
   buf inst2  (delayed_SE, SE);
`endif

   not inst3  (int_res__CK, delayed_CK);
   or inst4  (int_res__prectrl, delayed_EN, delayed_SE);
   snps_latch insts0  (int_res_iq, viol_x, int_res__CK, int_res__prectrl);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_res__CK, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
   `ifdef VIRL_functiononly
       and #`SNPS_CKGTLT_DELAY  instt0 (Q, int_res_iq, CK);
   `else
       and instt0  (Q, int_res_iq, CK);
   `endif

   `ifdef VIRL_functiononly

   `else

not inst6  (_net_0, SE);
not inst7  (_net_1, EN);
and inst8  (ENABLE_NOT_EN_AND_NOT_SE, _net_0, _net_1);
not inst9  (_net_2, EN);
and inst10  (ENABLE_NOT_EN_AND_SE, SE, _net_2);
not inst11  (_net_3, SE);
and inst12  (ENABLE_EN_AND_NOT_SE, _net_3, EN);
and inst13  (ENABLE_EN_AND_SE, SE, EN);
not inst14  (ENABLE_NOT_SE, SE);
not inst15  (ENABLE_NOT_EN, EN);

specify
if (EN==1'b0 && SE==1'b1) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b0) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b1) (CK +=> Q)=(0, 0);
`ifdef SNPS_CKGT_NOEDGE
 if (EN==1'b0 && SE==1'b0) (CK +=> Q)=(0, 0); 
`else 
 if (EN==1'b0 && SE==1'b0) (negedge CK => (Q +: 1'b1))=(0, 0);
`endif

$width(negedge CK &&&  ENABLE_NOT_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE==1'b1 , posedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(posedge CK &&&  ENABLE_NOT_SE==1'b1 , negedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(posedge CK &&&  ENABLE_NOT_EN==1'b1 , posedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_EN==1'b1 , negedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_CKGTPLT_PNR_4

//%BEGIN UDPLVT32_CKGTPLT_PNR_6

`celldefine
module UDPLVT32_CKGTPLT_PNR_6 (Q, CK, EN, SE);
   output Q;
   input CK, EN, SE;

   reg viol_0;
     wire viol_x;
   wire delayed_CK, delayed_EN, delayed_SE;

   wire int_res__CK, int_res__prectrl, int_res_iq;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_EN, EN);
   buf inst2  (delayed_SE, SE);
`endif

   not inst3  (int_res__CK, delayed_CK);
   or inst4  (int_res__prectrl, delayed_EN, delayed_SE);
   snps_latch insts0  (int_res_iq, viol_x, int_res__CK, int_res__prectrl);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_res__CK, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
   `ifdef VIRL_functiononly
       and #`SNPS_CKGTLT_DELAY  instt0 (Q, int_res_iq, CK);
   `else
       and instt0  (Q, int_res_iq, CK);
   `endif

   `ifdef VIRL_functiononly

   `else

not inst6  (_net_0, SE);
not inst7  (_net_1, EN);
and inst8  (ENABLE_NOT_EN_AND_NOT_SE, _net_0, _net_1);
not inst9  (_net_2, EN);
and inst10  (ENABLE_NOT_EN_AND_SE, SE, _net_2);
not inst11  (_net_3, SE);
and inst12  (ENABLE_EN_AND_NOT_SE, _net_3, EN);
and inst13  (ENABLE_EN_AND_SE, SE, EN);
not inst14  (ENABLE_NOT_SE, SE);
not inst15  (ENABLE_NOT_EN, EN);

specify
if (EN==1'b0 && SE==1'b1) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b0) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b1) (CK +=> Q)=(0, 0);
`ifdef SNPS_CKGT_NOEDGE
 if (EN==1'b0 && SE==1'b0) (CK +=> Q)=(0, 0); 
`else 
 if (EN==1'b0 && SE==1'b0) (negedge CK => (Q +: 1'b1))=(0, 0);
`endif

$width(negedge CK &&&  ENABLE_NOT_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE==1'b1 , posedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(posedge CK &&&  ENABLE_NOT_SE==1'b1 , negedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(posedge CK &&&  ENABLE_NOT_EN==1'b1 , posedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_EN==1'b1 , negedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_CKGTPLT_PNR_6

//%BEGIN UDPLVT32_CKGTPLT_PNR_8

`celldefine
module UDPLVT32_CKGTPLT_PNR_8 (Q, CK, EN, SE);
   output Q;
   input CK, EN, SE;

   reg viol_0;
     wire viol_x;
   wire delayed_CK, delayed_EN, delayed_SE;

   wire int_res__CK, int_res__prectrl, int_res_iq;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_EN, EN);
   buf inst2  (delayed_SE, SE);
`endif

   not inst3  (int_res__CK, delayed_CK);
   or inst4  (int_res__prectrl, delayed_EN, delayed_SE);
   snps_latch insts0  (int_res_iq, viol_x, int_res__CK, int_res__prectrl);

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_res__CK, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
   `ifdef VIRL_functiononly
       and #`SNPS_CKGTLT_DELAY  instt0 (Q, int_res_iq, CK);
   `else
       and instt0  (Q, int_res_iq, CK);
   `endif

   `ifdef VIRL_functiononly

   `else

not inst6  (_net_0, SE);
not inst7  (_net_1, EN);
and inst8  (ENABLE_NOT_EN_AND_NOT_SE, _net_0, _net_1);
not inst9  (_net_2, EN);
and inst10  (ENABLE_NOT_EN_AND_SE, SE, _net_2);
not inst11  (_net_3, SE);
and inst12  (ENABLE_EN_AND_NOT_SE, _net_3, EN);
and inst13  (ENABLE_EN_AND_SE, SE, EN);
not inst14  (ENABLE_NOT_SE, SE);
not inst15  (ENABLE_NOT_EN, EN);

specify
if (EN==1'b0 && SE==1'b1) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b0) (CK +=> Q)=(0, 0);
if (EN==1'b1 && SE==1'b1) (CK +=> Q)=(0, 0);
`ifdef SNPS_CKGT_NOEDGE
 if (EN==1'b0 && SE==1'b0) (CK +=> Q)=(0, 0); 
`else 
 if (EN==1'b0 && SE==1'b0) (negedge CK => (Q +: 1'b1))=(0, 0);
`endif

$width(negedge CK &&&  ENABLE_NOT_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_EN_AND_NOT_SE==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_EN_AND_SE==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE==1'b1 , posedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(posedge CK &&&  ENABLE_NOT_SE==1'b1 , negedge EN &&&  ENABLE_NOT_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_EN);
$setuphold(posedge CK &&&  ENABLE_NOT_EN==1'b1 , posedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_EN==1'b1 , negedge SE &&&  ENABLE_NOT_EN==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_CKGTPLT_PNR_8

`celldefine
module UDPLVT32_CLAMPB_DY8_2 (X, A);
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
module UDPLVT32_CLAMPB_SY8_2 (X, A);
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


//%BEGIN UDPLVT32_FRBDPQ_PV2NR_1
`celldefine
module UDPLVT32_FRBDPQ_PV2NR_1 (Q, CK, D, SR);
  input CK, D, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_4, int_5, lq2, lq1;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SR, SR);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst3  (viol_x, viol_0, int_5, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst4  (viol_x, viol_0, int_4, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
    not inst5  (int_4, delayed_CK);
    and inst6  (int_5, delayed_SR, delayed_CK);
    snps_latch insts0  (lq2, viol_x, int_5, lq1);
    snps_latch insts1  (lq1, viol_x, int_4, delayed_D);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst7   (_net_0, D);
and inst8   (ENABLE_NOT_D_AND_SR, SR, _net_0);
and inst9   (ENABLE_D_AND_SR, SR, D);
buf inst10   (ENABLE_SR, SR);
not inst11   (ENABLE_NOT_D, D);
buf inst12   (ENABLE_D, D);
not inst13   (_net_1, D);
and inst14   (ENABLE_CK_AND_NOT_D, _net_1, CK);
and inst15   (ENABLE_CK_AND_D, D, CK);
specify
if (D==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_SR==1'b1 , posedge D &&&  ENABLE_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SR==1'b1 , negedge D &&&  ENABLE_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SR &&&  ENABLE_NOT_D==1'b1 , negedge CK &&&  ENABLE_NOT_D==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D==1'b1 , negedge CK &&&  ENABLE_D==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D==1'b1 , posedge CK &&&  ENABLE_NOT_D==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D==1'b1 , posedge CK &&&  ENABLE_D==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FRBDPQ_PV2NR_1

//%BEGIN UDPLVT32_FRBDPQ_PV2NR_2
`celldefine
module UDPLVT32_FRBDPQ_PV2NR_2 (Q, CK, D, SR);
  input CK, D, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_4, int_5, lq2, lq1;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SR, SR);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst3  (viol_x, viol_0, int_5, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst4  (viol_x, viol_0, int_4, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
    not inst5  (int_4, delayed_CK);
    and inst6  (int_5, delayed_SR, delayed_CK);
    snps_latch insts0  (lq2, viol_x, int_5, lq1);
    snps_latch insts1  (lq1, viol_x, int_4, delayed_D);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst7   (_net_0, D);
and inst8   (ENABLE_NOT_D_AND_SR, SR, _net_0);
and inst9   (ENABLE_D_AND_SR, SR, D);
buf inst10   (ENABLE_SR, SR);
not inst11   (ENABLE_NOT_D, D);
buf inst12   (ENABLE_D, D);
not inst13   (_net_1, D);
and inst14   (ENABLE_CK_AND_NOT_D, _net_1, CK);
and inst15   (ENABLE_CK_AND_D, D, CK);
specify
if (D==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_SR==1'b1 , posedge D &&&  ENABLE_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SR==1'b1 , negedge D &&&  ENABLE_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SR &&&  ENABLE_NOT_D==1'b1 , negedge CK &&&  ENABLE_NOT_D==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D==1'b1 , negedge CK &&&  ENABLE_D==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D==1'b1 , posedge CK &&&  ENABLE_NOT_D==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D==1'b1 , posedge CK &&&  ENABLE_D==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FRBDPQ_PV2NR_2

//%BEGIN UDPLVT32_FRBDPQ_PV2NR_4
`celldefine
module UDPLVT32_FRBDPQ_PV2NR_4 (Q, CK, D, SR);
  input CK, D, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_4, int_5, lq2, lq1;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SR, SR);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst3  (viol_x, viol_0, int_5, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst4  (viol_x, viol_0, int_4, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
    not inst5  (int_4, delayed_CK);
    and inst6  (int_5, delayed_SR, delayed_CK);
    snps_latch insts0  (lq2, viol_x, int_5, lq1);
    snps_latch insts1  (lq1, viol_x, int_4, delayed_D);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst7   (_net_0, D);
and inst8   (ENABLE_NOT_D_AND_SR, SR, _net_0);
and inst9   (ENABLE_D_AND_SR, SR, D);
buf inst10   (ENABLE_SR, SR);
not inst11   (ENABLE_NOT_D, D);
buf inst12   (ENABLE_D, D);
not inst13   (_net_1, D);
and inst14   (ENABLE_CK_AND_NOT_D, _net_1, CK);
and inst15   (ENABLE_CK_AND_D, D, CK);
specify
if (D==1'b0 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_SR==1'b1 , posedge D &&&  ENABLE_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SR==1'b1 , negedge D &&&  ENABLE_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SR &&&  ENABLE_NOT_D==1'b1 , negedge CK &&&  ENABLE_NOT_D==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D==1'b1 , negedge CK &&&  ENABLE_D==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D==1'b1 , posedge CK &&&  ENABLE_NOT_D==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D==1'b1 , posedge CK &&&  ENABLE_D==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FRBDPQ_PV2NR_4

//%BEGIN UDPLVT32_FRBDPRBQ_PV2NR_1
`celldefine
module UDPLVT32_FRBDPRBQ_PV2NR_1 (Q, CK, D, RD, SR);
  input CK, D, RD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_8, int_9, int_11, lq2, lq1;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SR, SR);
    buf inst3  (delayed_RD, RD);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst4  (viol_x, viol_0, int_11, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_9, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
    not inst6  (int_8, delayed_RD);
    not inst7  (int_9, delayed_CK);
    and inst8  (int_11, delayed_SR, delayed_CK);
    snps_latch_r insts0  (lq2, viol_x, int_11, lq1, int_8);
    snps_latch_r insts1  (lq1, viol_x, int_9, delayed_D, int_8);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst9   (_net_0, D);
and inst10   (ENABLE_NOT_D_AND_RD_AND_SR, RD, _net_0, SR);
and inst11   (ENABLE_D_AND_RD_AND_SR, RD, D, SR);
and inst12   (ENABLE_RD_AND_SR, SR, RD);
buf inst13   (ENABLE_SR, SR);
not inst14   (_net_1, D);
not inst15   (_net_2, CK);
and inst16   (ENABLE_NOT_CK_AND_NOT_D_AND_SR, _net_1, _net_2, SR);
not inst17   (_net_3, CK);
and inst18   (ENABLE_NOT_CK_AND_D_AND_SR, D, _net_3, SR);
not inst19   (_net_4, D);
and inst20   (ENABLE_CK_AND_NOT_D_AND_SR, _net_4, CK, SR);
and inst21   (ENABLE_CK_AND_D_AND_SR, D, CK, SR);
not inst22   (_net_5, D);
and inst23   (ENABLE_NOT_D_AND_RD, RD, _net_5);
and inst24   (ENABLE_D_AND_RD, RD, D);
not inst25   (_net_6, D);
and inst26   (ENABLE_CK_AND_NOT_D_AND_RD, _net_6, CK, RD);
and inst27   (ENABLE_CK_AND_D_AND_RD, D, CK, RD);
specify
if (CK==1'b0 && D==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (D==1'b0 && RD==1'b1 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(negedge RD => (Q : 1'b0))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_RD_AND_SR==1'b1 , posedge D &&&  ENABLE_RD_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_SR==1'b1 , negedge D &&&  ENABLE_RD_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge RD &&&  ENABLE_SR==1'b1 , posedge CK &&&  ENABLE_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_D_AND_SR==1'b1 , 0 ,0, viol_0);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD==1'b1 , negedge CK &&&  ENABLE_D_AND_RD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD==1'b1 , posedge CK &&&  ENABLE_D_AND_RD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_RD==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FRBDPRBQ_PV2NR_1

//%BEGIN UDPLVT32_FRBDPRBQ_PV2NR_2
`celldefine
module UDPLVT32_FRBDPRBQ_PV2NR_2 (Q, CK, D, RD, SR);
  input CK, D, RD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_8, int_9, int_11, lq2, lq1;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SR, SR);
    buf inst3  (delayed_RD, RD);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst4  (viol_x, viol_0, int_11, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_9, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
    not inst6  (int_8, delayed_RD);
    not inst7  (int_9, delayed_CK);
    and inst8  (int_11, delayed_SR, delayed_CK);
    snps_latch_r insts0  (lq2, viol_x, int_11, lq1, int_8);
    snps_latch_r insts1  (lq1, viol_x, int_9, delayed_D, int_8);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst9   (_net_0, D);
and inst10   (ENABLE_NOT_D_AND_RD_AND_SR, RD, _net_0, SR);
and inst11   (ENABLE_D_AND_RD_AND_SR, RD, D, SR);
and inst12   (ENABLE_RD_AND_SR, SR, RD);
buf inst13   (ENABLE_SR, SR);
not inst14   (_net_1, D);
not inst15   (_net_2, CK);
and inst16   (ENABLE_NOT_CK_AND_NOT_D_AND_SR, _net_1, _net_2, SR);
not inst17   (_net_3, CK);
and inst18   (ENABLE_NOT_CK_AND_D_AND_SR, D, _net_3, SR);
not inst19   (_net_4, D);
and inst20   (ENABLE_CK_AND_NOT_D_AND_SR, _net_4, CK, SR);
and inst21   (ENABLE_CK_AND_D_AND_SR, D, CK, SR);
not inst22   (_net_5, D);
and inst23   (ENABLE_NOT_D_AND_RD, RD, _net_5);
and inst24   (ENABLE_D_AND_RD, RD, D);
not inst25   (_net_6, D);
and inst26   (ENABLE_CK_AND_NOT_D_AND_RD, _net_6, CK, RD);
and inst27   (ENABLE_CK_AND_D_AND_RD, D, CK, RD);
specify
if (CK==1'b0 && D==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (D==1'b0 && RD==1'b1 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(negedge RD => (Q : 1'b0))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_RD_AND_SR==1'b1 , posedge D &&&  ENABLE_RD_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_SR==1'b1 , negedge D &&&  ENABLE_RD_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge RD &&&  ENABLE_SR==1'b1 , posedge CK &&&  ENABLE_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_D_AND_SR==1'b1 , 0 ,0, viol_0);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD==1'b1 , negedge CK &&&  ENABLE_D_AND_RD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD==1'b1 , posedge CK &&&  ENABLE_D_AND_RD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_RD==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FRBDPRBQ_PV2NR_2

//%BEGIN UDPLVT32_FRBDPRBQ_PV2NR_4
`celldefine
module UDPLVT32_FRBDPRBQ_PV2NR_4 (Q, CK, D, RD, SR);
  input CK, D, RD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_8, int_9, int_11, lq2, lq1;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SR, SR);
    buf inst3  (delayed_RD, RD);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst4  (viol_x, viol_0, int_11, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_9, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
    not inst6  (int_8, delayed_RD);
    not inst7  (int_9, delayed_CK);
    and inst8  (int_11, delayed_SR, delayed_CK);
    snps_latch_r insts0  (lq2, viol_x, int_11, lq1, int_8);
    snps_latch_r insts1  (lq1, viol_x, int_9, delayed_D, int_8);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst9   (_net_0, D);
and inst10   (ENABLE_NOT_D_AND_RD_AND_SR, RD, _net_0, SR);
and inst11   (ENABLE_D_AND_RD_AND_SR, RD, D, SR);
and inst12   (ENABLE_RD_AND_SR, SR, RD);
buf inst13   (ENABLE_SR, SR);
not inst14   (_net_1, D);
not inst15   (_net_2, CK);
and inst16   (ENABLE_NOT_CK_AND_NOT_D_AND_SR, _net_1, _net_2, SR);
not inst17   (_net_3, CK);
and inst18   (ENABLE_NOT_CK_AND_D_AND_SR, D, _net_3, SR);
not inst19   (_net_4, D);
and inst20   (ENABLE_CK_AND_NOT_D_AND_SR, _net_4, CK, SR);
and inst21   (ENABLE_CK_AND_D_AND_SR, D, CK, SR);
not inst22   (_net_5, D);
and inst23   (ENABLE_NOT_D_AND_RD, RD, _net_5);
and inst24   (ENABLE_D_AND_RD, RD, D);
not inst25   (_net_6, D);
and inst26   (ENABLE_CK_AND_NOT_D_AND_RD, _net_6, CK, RD);
and inst27   (ENABLE_CK_AND_D_AND_RD, D, CK, RD);
specify
if (CK==1'b0 && D==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SR==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (D==1'b0 && RD==1'b1 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(negedge RD => (Q : 1'b0))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_RD_AND_SR==1'b1 , posedge D &&&  ENABLE_RD_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_SR==1'b1 , negedge D &&&  ENABLE_RD_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge RD &&&  ENABLE_SR==1'b1 , posedge CK &&&  ENABLE_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_D_AND_SR==1'b1 , 0 ,0, viol_0);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD==1'b1 , negedge CK &&&  ENABLE_D_AND_RD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD==1'b1 , posedge CK &&&  ENABLE_D_AND_RD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_RD==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FRBDPRBQ_PV2NR_4

//%BEGIN UDPLVT32_FRBDPSBQ_PV2NR_1
`celldefine
module UDPLVT32_FRBDPSBQ_PV2NR_1 (Q, CK, D, SD, SR);
  input CK, D, SD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_8, int_9, int_11, lq2, lq1;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SR, SR);  
    buf inst3  (delayed_SD, SD);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst4  (viol_x, viol_0, int_11, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_9, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
    not inst6  (int_8, delayed_SD);
    not inst7  (int_9, delayed_CK);
    and inst8  (int_11, delayed_SR, delayed_CK);
    snps_latch_s insts0  (lq2, viol_x, int_11, lq1, int_8);
    snps_latch_s insts1  (lq1, viol_x, int_9, delayed_D, int_8);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst9   (_net_0, D);
and inst10   (ENABLE_NOT_D_AND_SD_AND_SR, SD, _net_0, SR);
and inst11   (ENABLE_D_AND_SD_AND_SR, SD, D, SR);
and inst12   (ENABLE_SD_AND_SR, SR, SD);
buf inst13   (ENABLE_SR, SR);
not inst14   (_net_1, D);
not inst15   (_net_2, CK);
and inst16   (ENABLE_NOT_CK_AND_NOT_D_AND_SR, _net_1, _net_2, SR);
not inst17   (_net_3, CK);
and inst18   (ENABLE_NOT_CK_AND_D_AND_SR, D, _net_3, SR);
not inst19   (_net_4, D);
and inst20   (ENABLE_CK_AND_NOT_D_AND_SR, _net_4, CK, SR);
and inst21   (ENABLE_CK_AND_D_AND_SR, D, CK, SR);
not inst22   (_net_5, D);
and inst23   (ENABLE_NOT_D_AND_SD, SD, _net_5);
and inst24   (ENABLE_D_AND_SD, SD, D);
not inst25   (_net_6, D);
and inst26   (ENABLE_CK_AND_NOT_D_AND_SD, _net_6, CK, SD);
and inst27   (ENABLE_CK_AND_D_AND_SD, D, CK, SD);
specify
if (CK==1'b0 && D==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(negedge SD => (Q : 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_SD_AND_SR==1'b1 , posedge D &&&  ENABLE_SD_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_SR==1'b1 , negedge D &&&  ENABLE_SD_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SD &&&  ENABLE_SR==1'b1 , posedge CK &&&  ENABLE_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_D_AND_SR==1'b1 , 0 ,0, viol_0);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD==1'b1 , negedge CK &&&  ENABLE_D_AND_SD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD==1'b1 , posedge CK &&&  ENABLE_D_AND_SD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SD==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FRBDPSBQ_PV2NR_1

//%BEGIN UDPLVT32_FRBDPSBQ_PV2NR_2
`celldefine
module UDPLVT32_FRBDPSBQ_PV2NR_2 (Q, CK, D, SD, SR);
  input CK, D, SD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_8, int_9, int_11, lq2, lq1;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SR, SR);  
    buf inst3  (delayed_SD, SD);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst4  (viol_x, viol_0, int_11, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_9, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
    not inst6  (int_8, delayed_SD);
    not inst7  (int_9, delayed_CK);
    and inst8  (int_11, delayed_SR, delayed_CK);
    snps_latch_s insts0  (lq2, viol_x, int_11, lq1, int_8);
    snps_latch_s insts1  (lq1, viol_x, int_9, delayed_D, int_8);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst9   (_net_0, D);
and inst10   (ENABLE_NOT_D_AND_SD_AND_SR, SD, _net_0, SR);
and inst11   (ENABLE_D_AND_SD_AND_SR, SD, D, SR);
and inst12   (ENABLE_SD_AND_SR, SR, SD);
buf inst13   (ENABLE_SR, SR);
not inst14   (_net_1, D);
not inst15   (_net_2, CK);
and inst16   (ENABLE_NOT_CK_AND_NOT_D_AND_SR, _net_1, _net_2, SR);
not inst17   (_net_3, CK);
and inst18   (ENABLE_NOT_CK_AND_D_AND_SR, D, _net_3, SR);
not inst19   (_net_4, D);
and inst20   (ENABLE_CK_AND_NOT_D_AND_SR, _net_4, CK, SR);
and inst21   (ENABLE_CK_AND_D_AND_SR, D, CK, SR);
not inst22   (_net_5, D);
and inst23   (ENABLE_NOT_D_AND_SD, SD, _net_5);
and inst24   (ENABLE_D_AND_SD, SD, D);
not inst25   (_net_6, D);
and inst26   (ENABLE_CK_AND_NOT_D_AND_SD, _net_6, CK, SD);
and inst27   (ENABLE_CK_AND_D_AND_SD, D, CK, SD);
specify
if (CK==1'b0 && D==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(negedge SD => (Q : 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_SD_AND_SR==1'b1 , posedge D &&&  ENABLE_SD_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_SR==1'b1 , negedge D &&&  ENABLE_SD_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SD &&&  ENABLE_SR==1'b1 , posedge CK &&&  ENABLE_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_D_AND_SR==1'b1 , 0 ,0, viol_0);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD==1'b1 , negedge CK &&&  ENABLE_D_AND_SD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD==1'b1 , posedge CK &&&  ENABLE_D_AND_SD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SD==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FRBDPSBQ_PV2NR_2

//%BEGIN UDPLVT32_FRBDPSBQ_PV2NR_4
`celldefine
module UDPLVT32_FRBDPSBQ_PV2NR_4 (Q, CK, D, SD, SR);
  input CK, D, SD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_8, int_9, int_11, lq2, lq1;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SR, SR);  
    buf inst3  (delayed_SD, SD);
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst4  (viol_x, viol_0, int_11, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_9, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
    not inst6  (int_8, delayed_SD);
    not inst7  (int_9, delayed_CK);
    and inst8  (int_11, delayed_SR, delayed_CK);
    snps_latch_s insts0  (lq2, viol_x, int_11, lq1, int_8);
    snps_latch_s insts1  (lq1, viol_x, int_9, delayed_D, int_8);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, lq2);
  `else
    buf instt0  (Q, lq2);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst9   (_net_0, D);
and inst10   (ENABLE_NOT_D_AND_SD_AND_SR, SD, _net_0, SR);
and inst11   (ENABLE_D_AND_SD_AND_SR, SD, D, SR);
and inst12   (ENABLE_SD_AND_SR, SR, SD);
buf inst13   (ENABLE_SR, SR);
not inst14   (_net_1, D);
not inst15   (_net_2, CK);
and inst16   (ENABLE_NOT_CK_AND_NOT_D_AND_SR, _net_1, _net_2, SR);
not inst17   (_net_3, CK);
and inst18   (ENABLE_NOT_CK_AND_D_AND_SR, D, _net_3, SR);
not inst19   (_net_4, D);
and inst20   (ENABLE_CK_AND_NOT_D_AND_SR, _net_4, CK, SR);
and inst21   (ENABLE_CK_AND_D_AND_SR, D, CK, SR);
not inst22   (_net_5, D);
and inst23   (ENABLE_NOT_D_AND_SD, SD, _net_5);
and inst24   (ENABLE_D_AND_SD, SD, D);
not inst25   (_net_6, D);
and inst26   (ENABLE_CK_AND_NOT_D_AND_SD, _net_6, CK, SD);
and inst27   (ENABLE_CK_AND_D_AND_SD, D, CK, SD);
specify
if (CK==1'b0 && D==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SR==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SR==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SR==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(negedge SD => (Q : 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_SD_AND_SR==1'b1 , posedge D &&&  ENABLE_SD_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_SR==1'b1 , negedge D &&&  ENABLE_SD_AND_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SD &&&  ENABLE_SR==1'b1 , posedge CK &&&  ENABLE_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_D_AND_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_D_AND_SR==1'b1 , 0 ,0, viol_0);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD==1'b1 , negedge CK &&&  ENABLE_D_AND_SD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD==1'b1 , posedge CK &&&  ENABLE_D_AND_SD==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(posedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD==1'b1 , 0 ,0, viol_0);
$width(posedge SR &&&  ENABLE_CK_AND_D_AND_SD==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FRBDPSBQ_PV2NR_4

//%BEGIN UDPLVT32_FSB2DPQ_PV2NR_1

`celldefine
module UDPLVT32_FSB2DPQ_PV2NR_1 (Q, CK, D, SI, SE, B1, B2);
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

//%END UDPLVT32_FSB2DPQ_PV2NR_1

//%BEGIN UDPLVT32_FSB2DPQ_PV2NR_2

`celldefine
module UDPLVT32_FSB2DPQ_PV2NR_2 (Q, CK, D, SI, SE, B1, B2);
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

//%END UDPLVT32_FSB2DPQ_PV2NR_2

//%BEGIN UDPLVT32_FSB2DPQ_PV2NR_4

`celldefine
module UDPLVT32_FSB2DPQ_PV2NR_4 (Q, CK, D, SI, SE, B1, B2);
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

//%END UDPLVT32_FSB2DPQ_PV2NR_4

//%BEGIN UDPLVT32_FSB2DPRBQ_PV2NR_1

`celldefine
module UDPLVT32_FSB2DPRBQ_PV2NR_1 (Q, CK, D, SI, SE, RD, B1, B2);
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

//%END UDPLVT32_FSB2DPRBQ_PV2NR_1

//%BEGIN UDPLVT32_FSB2DPRBQ_PV2NR_2

`celldefine
module UDPLVT32_FSB2DPRBQ_PV2NR_2 (Q, CK, D, SI, SE, RD, B1, B2);
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

//%END UDPLVT32_FSB2DPRBQ_PV2NR_2

//%BEGIN UDPLVT32_FSB2DPRBQ_PV2NR_4

`celldefine
module UDPLVT32_FSB2DPRBQ_PV2NR_4 (Q, CK, D, SI, SE, RD, B1, B2);
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

//%END UDPLVT32_FSB2DPRBQ_PV2NR_4

//%BEGIN UDPLVT32_FSB2DPSBQ_PV2NR_1

`celldefine
module UDPLVT32_FSB2DPSBQ_PV2NR_1 (Q, CK, D, SI, SE, SD, B1, B2);
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

//%END UDPLVT32_FSB2DPSBQ_PV2NR_1

//%BEGIN UDPLVT32_FSB2DPSBQ_PV2NR_2

`celldefine
module UDPLVT32_FSB2DPSBQ_PV2NR_2 (Q, CK, D, SI, SE, SD, B1, B2);
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

//%END UDPLVT32_FSB2DPSBQ_PV2NR_2

//%BEGIN UDPLVT32_FSB2DPSBQ_PV2NR_4

`celldefine
module UDPLVT32_FSB2DPSBQ_PV2NR_4 (Q, CK, D, SI, SE, SD, B1, B2);
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

//%END UDPLVT32_FSB2DPSBQ_PV2NR_4

//%BEGIN UDPLVT32_FSDPQ_PV2NR_1

`celldefine
module UDPLVT32_FSDPQ_PV2NR_1 (Q, CK, D, SI, SE);
   output Q;
   input CK, D, SI, SE;

   reg viol_0;
   wire delayed_CK, delayed_D,
	delayed_SI, delayed_SE;

   wire int_res__D, xcr_0;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_D, D);
   buf inst2  (delayed_SI, SI);
   buf inst3  (delayed_SE, SE);
`endif

   snps_mux2 inst4  (int_res__D, delayed_SI, delayed_D, delayed_SE);
  `ifndef SNPS_MASK_ERR_UDP
   snps_dff_err inst5  (xcr_0, delayed_CK, int_res__D);
  `else
    assign xcr_0=1'bz;
  `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        snps_dff #`SNPS_SEQ_DELAY  insts0 (Q, viol_0, delayed_CK, int_res__D, xcr_0);
   `else
        snps_dff insts0  (Q, viol_0, delayed_CK, int_res__D, xcr_0);
   `endif

   `ifdef VIRL_functiononly

   `else

not inst6  (_net_0, SE);
not inst7  (_net_1, D);
not inst8  (_net_2, SI);
and inst9  (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_0, _net_1, _net_2);
not inst10  (_net_3, SE);
not inst11  (_net_4, D);
and inst12  (ENABLE_NOT_D_AND_NOT_SE_AND_SI, _net_3, _net_4, SI);
not inst13  (_net_5, D);
not inst14  (_net_6, SI);
and inst15  (ENABLE_NOT_D_AND_SE_AND_NOT_SI, SE, _net_5, _net_6);
not inst16  (_net_7, D);
and inst17  (ENABLE_NOT_D_AND_SE_AND_SI, SE, _net_7, SI);
not inst18  (_net_8, SE);
not inst19  (_net_9, SI);
and inst20  (ENABLE_D_AND_NOT_SE_AND_NOT_SI, _net_8, D, _net_9);
not inst21  (_net_10, SE);
and inst22  (ENABLE_D_AND_NOT_SE_AND_SI, _net_10, D, SI);
not inst23  (_net_11, SI);
and inst24  (ENABLE_D_AND_SE_AND_NOT_SI, SE, D, _net_11);
and inst25  (ENABLE_D_AND_SE_AND_SI, SE, D, SI);
not inst26  (_net_12, SI);
not inst27  (_net_13, SE);
and inst28  (ENABLE_NOT_SE_AND_NOT_SI, _net_12, _net_13);
not inst29  (_net_14, SE);
and inst30  (ENABLE_NOT_SE_AND_SI, SI, _net_14);
not inst31  (_net_15, D);
and inst32  (ENABLE_NOT_D_AND_SI, SI, _net_15);
not inst33  (_net_16, SI);
and inst34  (ENABLE_D_AND_NOT_SI, _net_16, D);
not inst35  (_net_17, D);
and inst36  (ENABLE_NOT_D_AND_SE, SE, _net_17);
and inst37  (ENABLE_D_AND_SE, SE, D);

specify
if (D==1'b0 && SE==1'b0 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b0 && SI==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_D_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_D_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE==1'b1 , posedge SI &&&  ENABLE_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE==1'b1 , negedge SI &&&  ENABLE_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_FSDPQ_PV2NR_1

//%BEGIN UDPLVT32_FSDPQ_PV2NR_2

`celldefine
module UDPLVT32_FSDPQ_PV2NR_2 (Q, CK, D, SI, SE);
   output Q;
   input CK, D, SI, SE;

   reg viol_0;
   wire delayed_CK, delayed_D,
	delayed_SI, delayed_SE;

   wire int_res__D, xcr_0;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_D, D);
   buf inst2  (delayed_SI, SI);
   buf inst3  (delayed_SE, SE);
`endif

   snps_mux2 inst4  (int_res__D, delayed_SI, delayed_D, delayed_SE);
  `ifndef SNPS_MASK_ERR_UDP
   snps_dff_err inst5  (xcr_0, delayed_CK, int_res__D);
  `else
    assign xcr_0=1'bz;
  `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        snps_dff #`SNPS_SEQ_DELAY  insts0 (Q, viol_0, delayed_CK, int_res__D, xcr_0);
   `else
        snps_dff insts0  (Q, viol_0, delayed_CK, int_res__D, xcr_0);
   `endif

   `ifdef VIRL_functiononly

   `else

not inst6  (_net_0, SE);
not inst7  (_net_1, D);
not inst8  (_net_2, SI);
and inst9  (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_0, _net_1, _net_2);
not inst10  (_net_3, SE);
not inst11  (_net_4, D);
and inst12  (ENABLE_NOT_D_AND_NOT_SE_AND_SI, _net_3, _net_4, SI);
not inst13  (_net_5, D);
not inst14  (_net_6, SI);
and inst15  (ENABLE_NOT_D_AND_SE_AND_NOT_SI, SE, _net_5, _net_6);
not inst16  (_net_7, D);
and inst17  (ENABLE_NOT_D_AND_SE_AND_SI, SE, _net_7, SI);
not inst18  (_net_8, SE);
not inst19  (_net_9, SI);
and inst20  (ENABLE_D_AND_NOT_SE_AND_NOT_SI, _net_8, D, _net_9);
not inst21  (_net_10, SE);
and inst22  (ENABLE_D_AND_NOT_SE_AND_SI, _net_10, D, SI);
not inst23  (_net_11, SI);
and inst24  (ENABLE_D_AND_SE_AND_NOT_SI, SE, D, _net_11);
and inst25  (ENABLE_D_AND_SE_AND_SI, SE, D, SI);
not inst26  (_net_12, SI);
not inst27  (_net_13, SE);
and inst28  (ENABLE_NOT_SE_AND_NOT_SI, _net_12, _net_13);
not inst29  (_net_14, SE);
and inst30  (ENABLE_NOT_SE_AND_SI, SI, _net_14);
not inst31  (_net_15, D);
and inst32  (ENABLE_NOT_D_AND_SI, SI, _net_15);
not inst33  (_net_16, SI);
and inst34  (ENABLE_D_AND_NOT_SI, _net_16, D);
not inst35  (_net_17, D);
and inst36  (ENABLE_NOT_D_AND_SE, SE, _net_17);
and inst37  (ENABLE_D_AND_SE, SE, D);

specify
if (D==1'b0 && SE==1'b0 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b0 && SI==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_D_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_D_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE==1'b1 , posedge SI &&&  ENABLE_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE==1'b1 , negedge SI &&&  ENABLE_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_FSDPQ_PV2NR_2

//%BEGIN UDPLVT32_FSDPQ_PV2NR_4

`celldefine
module UDPLVT32_FSDPQ_PV2NR_4 (Q, CK, D, SI, SE);
   output Q;
   input CK, D, SI, SE;

   reg viol_0;
   wire delayed_CK, delayed_D,
	delayed_SI, delayed_SE;

   wire int_res__D, xcr_0;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_D, D);
   buf inst2  (delayed_SI, SI);
   buf inst3  (delayed_SE, SE);
`endif

   snps_mux2 inst4  (int_res__D, delayed_SI, delayed_D, delayed_SE);
  `ifndef SNPS_MASK_ERR_UDP
   snps_dff_err inst5  (xcr_0, delayed_CK, int_res__D);
  `else
    assign xcr_0=1'bz;
  `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        snps_dff #`SNPS_SEQ_DELAY  insts0 (Q, viol_0, delayed_CK, int_res__D, xcr_0);
   `else
        snps_dff insts0  (Q, viol_0, delayed_CK, int_res__D, xcr_0);
   `endif

   `ifdef VIRL_functiononly

   `else

not inst6  (_net_0, SE);
not inst7  (_net_1, D);
not inst8  (_net_2, SI);
and inst9  (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_0, _net_1, _net_2);
not inst10  (_net_3, SE);
not inst11  (_net_4, D);
and inst12  (ENABLE_NOT_D_AND_NOT_SE_AND_SI, _net_3, _net_4, SI);
not inst13  (_net_5, D);
not inst14  (_net_6, SI);
and inst15  (ENABLE_NOT_D_AND_SE_AND_NOT_SI, SE, _net_5, _net_6);
not inst16  (_net_7, D);
and inst17  (ENABLE_NOT_D_AND_SE_AND_SI, SE, _net_7, SI);
not inst18  (_net_8, SE);
not inst19  (_net_9, SI);
and inst20  (ENABLE_D_AND_NOT_SE_AND_NOT_SI, _net_8, D, _net_9);
not inst21  (_net_10, SE);
and inst22  (ENABLE_D_AND_NOT_SE_AND_SI, _net_10, D, SI);
not inst23  (_net_11, SI);
and inst24  (ENABLE_D_AND_SE_AND_NOT_SI, SE, D, _net_11);
and inst25  (ENABLE_D_AND_SE_AND_SI, SE, D, SI);
not inst26  (_net_12, SI);
not inst27  (_net_13, SE);
and inst28  (ENABLE_NOT_SE_AND_NOT_SI, _net_12, _net_13);
not inst29  (_net_14, SE);
and inst30  (ENABLE_NOT_SE_AND_SI, SI, _net_14);
not inst31  (_net_15, D);
and inst32  (ENABLE_NOT_D_AND_SI, SI, _net_15);
not inst33  (_net_16, SI);
and inst34  (ENABLE_D_AND_NOT_SI, _net_16, D);
not inst35  (_net_17, D);
and inst36  (ENABLE_NOT_D_AND_SE, SE, _net_17);
and inst37  (ENABLE_D_AND_SE, SE, D);

specify
if (D==1'b0 && SE==1'b0 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b0 && SI==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_D_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_D_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE==1'b1 , posedge SI &&&  ENABLE_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE==1'b1 , negedge SI &&&  ENABLE_D_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_FSDPQ_PV2NR_4

//%BEGIN UDPLVT32_FSDPRBQ_PV2NR_1

`celldefine
module UDPLVT32_FSDPRBQ_PV2NR_1 (Q, CK, D, SI, SE, RD);
   output Q;
   input CK, D, SI, SE, RD;

   reg viol_0;
   wire delayed_CK, delayed_D, delayed_SI,
	delayed_SE, delayed_RD;

   wire int_res__D, int_res__RD, xcr_0;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_D, D);
   buf inst2  (delayed_SI, SI);
   buf inst3  (delayed_SE, SE);
   buf inst4  (delayed_RD, RD);
`endif

   snps_mux2 inst5  (int_res__D, delayed_SI, delayed_D, delayed_SE);
   not inst6  (int_res__RD, delayed_RD);
  `ifndef SNPS_MASK_ERR_UDP
   snps_dff_r_err inst7  (xcr_0, delayed_CK, int_res__D, int_res__RD);
  `else
    assign xcr_0=1'bz;
  `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        snps_dff_r #`SNPS_SEQ_DELAY  insts0 (Q, viol_0, delayed_CK, int_res__D, int_res__RD, xcr_0);

   `else
        snps_dff_r insts0  (Q, viol_0, delayed_CK, int_res__D, int_res__RD, xcr_0);

   `endif

   `ifdef VIRL_functiononly

   `else

not inst8  (_net_0, D);
not inst9  (_net_1, SE);
not inst10  (_net_2, SI);
and inst11  (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, _net_0, _net_1, _net_2);
not inst12  (_net_3, D);
not inst13  (_net_4, SE);
and inst14  (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI, RD, _net_3, _net_4, SI);
not inst15  (_net_5, D);
not inst16  (_net_6, SI);
and inst17  (ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI, RD, _net_5, SE, _net_6);
not inst18  (_net_7, D);
and inst19  (ENABLE_NOT_D_AND_RD_AND_SE_AND_SI, RD, _net_7, SE, SI);
not inst20  (_net_8, SE);
not inst21  (_net_9, SI);
and inst22  (ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, D, _net_8, _net_9);
not inst23  (_net_10, SE);
and inst24  (ENABLE_D_AND_RD_AND_NOT_SE_AND_SI, RD, D, _net_10, SI);
not inst25  (_net_11, SI);
and inst26  (ENABLE_D_AND_RD_AND_SE_AND_NOT_SI, RD, D, SE, _net_11);
and inst27  (ENABLE_D_AND_RD_AND_SE_AND_SI, RD, D, SE, SI);
not inst28  (_net_12, SE);
not inst29  (_net_13, SI);
and inst30  (ENABLE_RD_AND_NOT_SE_AND_NOT_SI, _net_12, RD, _net_13);
not inst31  (_net_14, SE);
and inst32  (ENABLE_RD_AND_NOT_SE_AND_SI, _net_14, RD, SI);
not inst33  (_net_15, D);
and inst34  (ENABLE_NOT_D_AND_SE_AND_SI, SE, _net_15, SI);
not inst35  (_net_16, SE);
not inst36  (_net_17, SI);
and inst37  (ENABLE_D_AND_NOT_SE_AND_NOT_SI, _net_16, D, _net_17);
not inst38  (_net_18, SE);
and inst39  (ENABLE_D_AND_NOT_SE_AND_SI, _net_18, D, SI);
and inst40  (ENABLE_D_AND_SE_AND_SI, SE, D, SI);
not inst41  (_net_19, D);
not inst42  (_net_20, CK);
not inst43  (_net_21, SE);
not inst44  (_net_22, SI);
and inst45  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_19, _net_20, _net_21, _net_22);
not inst46  (_net_23, D);
not inst47  (_net_24, CK);
not inst48  (_net_25, SE);
and inst49  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_23, _net_24, _net_25, SI);
not inst50  (_net_26, D);
not inst51  (_net_27, CK);
not inst52  (_net_28, SI);
and inst53  (ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_26, _net_27, SE, _net_28);
not inst54  (_net_29, D);
not inst55  (_net_30, CK);
and inst56  (ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_SI, _net_29, _net_30, SE, SI);
not inst57  (_net_31, CK);
not inst58  (_net_32, SE);
not inst59  (_net_33, SI);
and inst60  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, _net_31, _net_32, _net_33);
not inst61  (_net_34, CK);
not inst62  (_net_35, SE);
and inst63  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SI, D, _net_34, _net_35, SI);
not inst64  (_net_36, CK);
not inst65  (_net_37, SI);
and inst66  (ENABLE_NOT_CK_AND_D_AND_SE_AND_NOT_SI, D, _net_36, SE, _net_37);
not inst67  (_net_38, CK);
and inst68  (ENABLE_NOT_CK_AND_D_AND_SE_AND_SI, D, _net_38, SE, SI);
not inst69  (_net_39, D);
not inst70  (_net_40, SE);
not inst71  (_net_41, SI);
and inst72  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_39, CK, _net_40, _net_41);
not inst73  (_net_42, D);
not inst74  (_net_43, SE);
and inst75  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_42, CK, _net_43, SI);
not inst76  (_net_44, D);
not inst77  (_net_45, SI);
and inst78  (ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_44, CK, SE, _net_45);
not inst79  (_net_46, D);
and inst80  (ENABLE_CK_AND_NOT_D_AND_SE_AND_SI, _net_46, CK, SE, SI);
not inst81  (_net_47, SE);
not inst82  (_net_48, SI);
and inst83  (ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, CK, _net_47, _net_48);
not inst84  (_net_49, SE);
and inst85  (ENABLE_CK_AND_D_AND_NOT_SE_AND_SI, D, CK, _net_49, SI);
not inst86  (_net_50, SI);
and inst87  (ENABLE_CK_AND_D_AND_SE_AND_NOT_SI, D, CK, SE, _net_50);
and inst88  (ENABLE_CK_AND_D_AND_SE_AND_SI, D, CK, SE, SI);
not inst89  (_net_51, D);
and inst90  (ENABLE_NOT_D_AND_RD_AND_SI, RD, _net_51, SI);
not inst91  (_net_52, SI);
and inst92  (ENABLE_D_AND_RD_AND_NOT_SI, RD, D, _net_52);
not inst93  (_net_53, D);
and inst94  (ENABLE_NOT_D_AND_RD_AND_SE, RD, _net_53, SE);
and inst95  (ENABLE_D_AND_RD_AND_SE, RD, D, SE);

specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
(negedge RD => (Q : 1'b0))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge RD &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE==1'b1 , posedge SI &&&  ENABLE_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE==1'b1 , negedge SI &&&  ENABLE_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_FSDPRBQ_PV2NR_1

//%BEGIN UDPLVT32_FSDPRBQ_PV2NR_2

`celldefine
module UDPLVT32_FSDPRBQ_PV2NR_2 (Q, CK, D, SI, SE, RD);
   output Q;
   input CK, D, SI, SE, RD;

   reg viol_0;
   wire delayed_CK, delayed_D, delayed_SI,
	delayed_SE, delayed_RD;

   wire int_res__D, int_res__RD, xcr_0;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_D, D);
   buf inst2  (delayed_SI, SI);
   buf inst3  (delayed_SE, SE);
   buf inst4  (delayed_RD, RD);
`endif

   snps_mux2 inst5  (int_res__D, delayed_SI, delayed_D, delayed_SE);
   not inst6  (int_res__RD, delayed_RD);
  `ifndef SNPS_MASK_ERR_UDP
   snps_dff_r_err inst7  (xcr_0, delayed_CK, int_res__D, int_res__RD);
  `else
    assign xcr_0=1'bz;
  `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        snps_dff_r #`SNPS_SEQ_DELAY  insts0 (Q, viol_0, delayed_CK, int_res__D, int_res__RD, xcr_0);

   `else
        snps_dff_r insts0  (Q, viol_0, delayed_CK, int_res__D, int_res__RD, xcr_0);

   `endif

   `ifdef VIRL_functiononly

   `else

not inst8  (_net_0, D);
not inst9  (_net_1, SE);
not inst10  (_net_2, SI);
and inst11  (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, _net_0, _net_1, _net_2);
not inst12  (_net_3, D);
not inst13  (_net_4, SE);
and inst14  (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI, RD, _net_3, _net_4, SI);
not inst15  (_net_5, D);
not inst16  (_net_6, SI);
and inst17  (ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI, RD, _net_5, SE, _net_6);
not inst18  (_net_7, D);
and inst19  (ENABLE_NOT_D_AND_RD_AND_SE_AND_SI, RD, _net_7, SE, SI);
not inst20  (_net_8, SE);
not inst21  (_net_9, SI);
and inst22  (ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, D, _net_8, _net_9);
not inst23  (_net_10, SE);
and inst24  (ENABLE_D_AND_RD_AND_NOT_SE_AND_SI, RD, D, _net_10, SI);
not inst25  (_net_11, SI);
and inst26  (ENABLE_D_AND_RD_AND_SE_AND_NOT_SI, RD, D, SE, _net_11);
and inst27  (ENABLE_D_AND_RD_AND_SE_AND_SI, RD, D, SE, SI);
not inst28  (_net_12, SE);
not inst29  (_net_13, SI);
and inst30  (ENABLE_RD_AND_NOT_SE_AND_NOT_SI, _net_12, RD, _net_13);
not inst31  (_net_14, SE);
and inst32  (ENABLE_RD_AND_NOT_SE_AND_SI, _net_14, RD, SI);
not inst33  (_net_15, D);
and inst34  (ENABLE_NOT_D_AND_SE_AND_SI, SE, _net_15, SI);
not inst35  (_net_16, SE);
not inst36  (_net_17, SI);
and inst37  (ENABLE_D_AND_NOT_SE_AND_NOT_SI, _net_16, D, _net_17);
not inst38  (_net_18, SE);
and inst39  (ENABLE_D_AND_NOT_SE_AND_SI, _net_18, D, SI);
and inst40  (ENABLE_D_AND_SE_AND_SI, SE, D, SI);
not inst41  (_net_19, D);
not inst42  (_net_20, CK);
not inst43  (_net_21, SE);
not inst44  (_net_22, SI);
and inst45  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_19, _net_20, _net_21, _net_22);
not inst46  (_net_23, D);
not inst47  (_net_24, CK);
not inst48  (_net_25, SE);
and inst49  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_23, _net_24, _net_25, SI);
not inst50  (_net_26, D);
not inst51  (_net_27, CK);
not inst52  (_net_28, SI);
and inst53  (ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_26, _net_27, SE, _net_28);
not inst54  (_net_29, D);
not inst55  (_net_30, CK);
and inst56  (ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_SI, _net_29, _net_30, SE, SI);
not inst57  (_net_31, CK);
not inst58  (_net_32, SE);
not inst59  (_net_33, SI);
and inst60  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, _net_31, _net_32, _net_33);
not inst61  (_net_34, CK);
not inst62  (_net_35, SE);
and inst63  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SI, D, _net_34, _net_35, SI);
not inst64  (_net_36, CK);
not inst65  (_net_37, SI);
and inst66  (ENABLE_NOT_CK_AND_D_AND_SE_AND_NOT_SI, D, _net_36, SE, _net_37);
not inst67  (_net_38, CK);
and inst68  (ENABLE_NOT_CK_AND_D_AND_SE_AND_SI, D, _net_38, SE, SI);
not inst69  (_net_39, D);
not inst70  (_net_40, SE);
not inst71  (_net_41, SI);
and inst72  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_39, CK, _net_40, _net_41);
not inst73  (_net_42, D);
not inst74  (_net_43, SE);
and inst75  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_42, CK, _net_43, SI);
not inst76  (_net_44, D);
not inst77  (_net_45, SI);
and inst78  (ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_44, CK, SE, _net_45);
not inst79  (_net_46, D);
and inst80  (ENABLE_CK_AND_NOT_D_AND_SE_AND_SI, _net_46, CK, SE, SI);
not inst81  (_net_47, SE);
not inst82  (_net_48, SI);
and inst83  (ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, CK, _net_47, _net_48);
not inst84  (_net_49, SE);
and inst85  (ENABLE_CK_AND_D_AND_NOT_SE_AND_SI, D, CK, _net_49, SI);
not inst86  (_net_50, SI);
and inst87  (ENABLE_CK_AND_D_AND_SE_AND_NOT_SI, D, CK, SE, _net_50);
and inst88  (ENABLE_CK_AND_D_AND_SE_AND_SI, D, CK, SE, SI);
not inst89  (_net_51, D);
and inst90  (ENABLE_NOT_D_AND_RD_AND_SI, RD, _net_51, SI);
not inst91  (_net_52, SI);
and inst92  (ENABLE_D_AND_RD_AND_NOT_SI, RD, D, _net_52);
not inst93  (_net_53, D);
and inst94  (ENABLE_NOT_D_AND_RD_AND_SE, RD, _net_53, SE);
and inst95  (ENABLE_D_AND_RD_AND_SE, RD, D, SE);

specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
(negedge RD => (Q : 1'b0))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge RD &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE==1'b1 , posedge SI &&&  ENABLE_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE==1'b1 , negedge SI &&&  ENABLE_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_FSDPRBQ_PV2NR_2

//%BEGIN UDPLVT32_FSDPRBQ_PV2NR_4

`celldefine
module UDPLVT32_FSDPRBQ_PV2NR_4 (Q, CK, D, SI, SE, RD);
   output Q;
   input CK, D, SI, SE, RD;

   reg viol_0;
   wire delayed_CK, delayed_D, delayed_SI,
	delayed_SE, delayed_RD;

   wire int_res__D, int_res__RD, xcr_0;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_D, D);
   buf inst2  (delayed_SI, SI);
   buf inst3  (delayed_SE, SE);
   buf inst4  (delayed_RD, RD);
`endif

   snps_mux2 inst5  (int_res__D, delayed_SI, delayed_D, delayed_SE);
   not inst6  (int_res__RD, delayed_RD);
  `ifndef SNPS_MASK_ERR_UDP
   snps_dff_r_err inst7  (xcr_0, delayed_CK, int_res__D, int_res__RD);
  `else
    assign xcr_0=1'bz;
  `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        snps_dff_r #`SNPS_SEQ_DELAY  insts0 (Q, viol_0, delayed_CK, int_res__D, int_res__RD, xcr_0);

   `else
        snps_dff_r insts0  (Q, viol_0, delayed_CK, int_res__D, int_res__RD, xcr_0);

   `endif

   `ifdef VIRL_functiononly

   `else

not inst8  (_net_0, D);
not inst9  (_net_1, SE);
not inst10  (_net_2, SI);
and inst11  (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, _net_0, _net_1, _net_2);
not inst12  (_net_3, D);
not inst13  (_net_4, SE);
and inst14  (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI, RD, _net_3, _net_4, SI);
not inst15  (_net_5, D);
not inst16  (_net_6, SI);
and inst17  (ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI, RD, _net_5, SE, _net_6);
not inst18  (_net_7, D);
and inst19  (ENABLE_NOT_D_AND_RD_AND_SE_AND_SI, RD, _net_7, SE, SI);
not inst20  (_net_8, SE);
not inst21  (_net_9, SI);
and inst22  (ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, D, _net_8, _net_9);
not inst23  (_net_10, SE);
and inst24  (ENABLE_D_AND_RD_AND_NOT_SE_AND_SI, RD, D, _net_10, SI);
not inst25  (_net_11, SI);
and inst26  (ENABLE_D_AND_RD_AND_SE_AND_NOT_SI, RD, D, SE, _net_11);
and inst27  (ENABLE_D_AND_RD_AND_SE_AND_SI, RD, D, SE, SI);
not inst28  (_net_12, SE);
not inst29  (_net_13, SI);
and inst30  (ENABLE_RD_AND_NOT_SE_AND_NOT_SI, _net_12, RD, _net_13);
not inst31  (_net_14, SE);
and inst32  (ENABLE_RD_AND_NOT_SE_AND_SI, _net_14, RD, SI);
not inst33  (_net_15, D);
and inst34  (ENABLE_NOT_D_AND_SE_AND_SI, SE, _net_15, SI);
not inst35  (_net_16, SE);
not inst36  (_net_17, SI);
and inst37  (ENABLE_D_AND_NOT_SE_AND_NOT_SI, _net_16, D, _net_17);
not inst38  (_net_18, SE);
and inst39  (ENABLE_D_AND_NOT_SE_AND_SI, _net_18, D, SI);
and inst40  (ENABLE_D_AND_SE_AND_SI, SE, D, SI);
not inst41  (_net_19, D);
not inst42  (_net_20, CK);
not inst43  (_net_21, SE);
not inst44  (_net_22, SI);
and inst45  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_19, _net_20, _net_21, _net_22);
not inst46  (_net_23, D);
not inst47  (_net_24, CK);
not inst48  (_net_25, SE);
and inst49  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_23, _net_24, _net_25, SI);
not inst50  (_net_26, D);
not inst51  (_net_27, CK);
not inst52  (_net_28, SI);
and inst53  (ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_26, _net_27, SE, _net_28);
not inst54  (_net_29, D);
not inst55  (_net_30, CK);
and inst56  (ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_SI, _net_29, _net_30, SE, SI);
not inst57  (_net_31, CK);
not inst58  (_net_32, SE);
not inst59  (_net_33, SI);
and inst60  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, _net_31, _net_32, _net_33);
not inst61  (_net_34, CK);
not inst62  (_net_35, SE);
and inst63  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SI, D, _net_34, _net_35, SI);
not inst64  (_net_36, CK);
not inst65  (_net_37, SI);
and inst66  (ENABLE_NOT_CK_AND_D_AND_SE_AND_NOT_SI, D, _net_36, SE, _net_37);
not inst67  (_net_38, CK);
and inst68  (ENABLE_NOT_CK_AND_D_AND_SE_AND_SI, D, _net_38, SE, SI);
not inst69  (_net_39, D);
not inst70  (_net_40, SE);
not inst71  (_net_41, SI);
and inst72  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_39, CK, _net_40, _net_41);
not inst73  (_net_42, D);
not inst74  (_net_43, SE);
and inst75  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_42, CK, _net_43, SI);
not inst76  (_net_44, D);
not inst77  (_net_45, SI);
and inst78  (ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_44, CK, SE, _net_45);
not inst79  (_net_46, D);
and inst80  (ENABLE_CK_AND_NOT_D_AND_SE_AND_SI, _net_46, CK, SE, SI);
not inst81  (_net_47, SE);
not inst82  (_net_48, SI);
and inst83  (ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, CK, _net_47, _net_48);
not inst84  (_net_49, SE);
and inst85  (ENABLE_CK_AND_D_AND_NOT_SE_AND_SI, D, CK, _net_49, SI);
not inst86  (_net_50, SI);
and inst87  (ENABLE_CK_AND_D_AND_SE_AND_NOT_SI, D, CK, SE, _net_50);
and inst88  (ENABLE_CK_AND_D_AND_SE_AND_SI, D, CK, SE, SI);
not inst89  (_net_51, D);
and inst90  (ENABLE_NOT_D_AND_RD_AND_SI, RD, _net_51, SI);
not inst91  (_net_52, SI);
and inst92  (ENABLE_D_AND_RD_AND_NOT_SI, RD, D, _net_52);
not inst93  (_net_53, D);
and inst94  (ENABLE_NOT_D_AND_RD_AND_SE, RD, _net_53, SE);
and inst95  (ENABLE_D_AND_RD_AND_SE, RD, D, SE);

specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1) (negedge RD => (Q +: 1'b0))=(0, 0);
(negedge RD => (Q : 1'b0))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge RD &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE==1'b1 , posedge SI &&&  ENABLE_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE==1'b1 , negedge SI &&&  ENABLE_D_AND_RD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_FSDPRBQ_PV2NR_4

//%BEGIN UDPLVT32_FSDPSBQ_PV2NR_1

`celldefine
module UDPLVT32_FSDPSBQ_PV2NR_1 (Q, CK, D, SI, SE, SD);
   output Q;
   input CK, D, SI, SE, SD;

   reg viol_0;
   wire delayed_CK, delayed_D, delayed_SI,
	delayed_SE, delayed_SD;

   wire int_res__D, int_res__SD, xcr_0;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_D, D);
   buf inst2  (delayed_SI, SI);
   buf inst3  (delayed_SE, SE);
   buf inst4  (delayed_SD, SD);
`endif

   snps_mux2 inst5  (int_res__D, delayed_SI, delayed_D, delayed_SE);
   not inst6  (int_res__SD, delayed_SD);
  `ifndef SNPS_MASK_ERR_UDP
   snps_dff_s_err inst7  (xcr_0, delayed_CK, int_res__D, int_res__SD);
  `else
    assign xcr_0=1'bz;
  `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        snps_dff_s #`SNPS_SEQ_DELAY  insts0 (Q, viol_0, delayed_CK, int_res__D, int_res__SD, xcr_0);

    `else
        snps_dff_s insts0  (Q, viol_0, delayed_CK, int_res__D, int_res__SD, xcr_0);

    `endif

    `ifdef VIRL_functiononly

    `else

not inst8  (_net_0, D);
not inst9  (_net_1, SE);
not inst10  (_net_2, SI);
and inst11  (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, _net_0, _net_1, _net_2);
not inst12  (_net_3, D);
not inst13  (_net_4, SE);
and inst14  (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI, SD, _net_3, _net_4, SI);
not inst15  (_net_5, D);
not inst16  (_net_6, SI);
and inst17  (ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI, SD, _net_5, SE, _net_6);
not inst18  (_net_7, D);
and inst19  (ENABLE_NOT_D_AND_SD_AND_SE_AND_SI, SD, _net_7, SE, SI);
not inst20  (_net_8, SE);
not inst21  (_net_9, SI);
and inst22  (ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, D, _net_8, _net_9);
not inst23  (_net_10, SE);
and inst24  (ENABLE_D_AND_SD_AND_NOT_SE_AND_SI, SD, D, _net_10, SI);
not inst25  (_net_11, SI);
and inst26  (ENABLE_D_AND_SD_AND_SE_AND_NOT_SI, SD, D, SE, _net_11);
and inst27  (ENABLE_D_AND_SD_AND_SE_AND_SI, SD, D, SE, SI);
not inst28  (_net_12, SE);
not inst29  (_net_13, SI);
and inst30  (ENABLE_SD_AND_NOT_SE_AND_NOT_SI, _net_12, SD, _net_13);
not inst31  (_net_14, SE);
and inst32  (ENABLE_SD_AND_NOT_SE_AND_SI, _net_14, SD, SI);
not inst33  (_net_15, SE);
not inst34  (_net_16, D);
not inst35  (_net_17, SI);
and inst36  (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_15, _net_16, _net_17);
not inst37  (_net_18, SE);
not inst38  (_net_19, D);
and inst39  (ENABLE_NOT_D_AND_NOT_SE_AND_SI, _net_18, _net_19, SI);
not inst40  (_net_20, D);
not inst41  (_net_21, SI);
and inst42  (ENABLE_NOT_D_AND_SE_AND_NOT_SI, SE, _net_20, _net_21);
not inst43  (_net_22, SI);
and inst44  (ENABLE_D_AND_SE_AND_NOT_SI, SE, D, _net_22);
not inst45  (_net_23, D);
not inst46  (_net_24, CK);
not inst47  (_net_25, SE);
not inst48  (_net_26, SI);
and inst49  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_23, _net_24, _net_25, _net_26);
not inst50  (_net_27, D);
not inst51  (_net_28, CK);
not inst52  (_net_29, SE);
and inst53  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_27, _net_28, _net_29, SI);
not inst54  (_net_30, D);
not inst55  (_net_31, CK);
not inst56  (_net_32, SI);
and inst57  (ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_30, _net_31, SE, _net_32);
not inst58  (_net_33, D);
not inst59  (_net_34, CK);
and inst60  (ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_SI, _net_33, _net_34, SE, SI);
not inst61  (_net_35, CK);
not inst62  (_net_36, SE);
not inst63  (_net_37, SI);
and inst64  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, _net_35, _net_36, _net_37);
not inst65  (_net_38, CK);
not inst66  (_net_39, SE);
and inst67  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SI, D, _net_38, _net_39, SI);
not inst68  (_net_40, CK);
not inst69  (_net_41, SI);
and inst70  (ENABLE_NOT_CK_AND_D_AND_SE_AND_NOT_SI, D, _net_40, SE, _net_41);
not inst71  (_net_42, CK);
and inst72  (ENABLE_NOT_CK_AND_D_AND_SE_AND_SI, D, _net_42, SE, SI);
not inst73  (_net_43, D);
not inst74  (_net_44, SE);
not inst75  (_net_45, SI);
and inst76  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_43, CK, _net_44, _net_45);
not inst77  (_net_46, D);
not inst78  (_net_47, SE);
and inst79  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_46, CK, _net_47, SI);
not inst80  (_net_48, D);
not inst81  (_net_49, SI);
and inst82  (ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_48, CK, SE, _net_49);
not inst83  (_net_50, D);
and inst84  (ENABLE_CK_AND_NOT_D_AND_SE_AND_SI, _net_50, CK, SE, SI);
not inst85  (_net_51, SE);
not inst86  (_net_52, SI);
and inst87  (ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, CK, _net_51, _net_52);
not inst88  (_net_53, SE);
and inst89  (ENABLE_CK_AND_D_AND_NOT_SE_AND_SI, D, CK, _net_53, SI);
not inst90  (_net_54, SI);
and inst91  (ENABLE_CK_AND_D_AND_SE_AND_NOT_SI, D, CK, SE, _net_54);
and inst92  (ENABLE_CK_AND_D_AND_SE_AND_SI, D, CK, SE, SI);
not inst93  (_net_55, D);
and inst94  (ENABLE_NOT_D_AND_SD_AND_SI, SD, _net_55, SI);
not inst95  (_net_56, SI);
and inst96  (ENABLE_D_AND_SD_AND_NOT_SI, SD, D, _net_56);
not inst97  (_net_57, D);
and inst98  (ENABLE_NOT_D_AND_SD_AND_SE, SD, _net_57, SE);
and inst99  (ENABLE_D_AND_SD_AND_SE, SD, D, SE);

specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
(negedge SD => (Q : 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE==1'b1 , posedge SI &&&  ENABLE_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE==1'b1 , negedge SI &&&  ENABLE_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
endspecify
    `endif

endmodule
`endcelldefine

//%END UDPLVT32_FSDPSBQ_PV2NR_1

//%BEGIN UDPLVT32_FSDPSBQ_PV2NR_2

`celldefine
module UDPLVT32_FSDPSBQ_PV2NR_2 (Q, CK, D, SI, SE, SD);
   output Q;
   input CK, D, SI, SE, SD;

   reg viol_0;
   wire delayed_CK, delayed_D, delayed_SI,
	delayed_SE, delayed_SD;

   wire int_res__D, int_res__SD, xcr_0;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_D, D);
   buf inst2  (delayed_SI, SI);
   buf inst3  (delayed_SE, SE);
   buf inst4  (delayed_SD, SD);
`endif

   snps_mux2 inst5  (int_res__D, delayed_SI, delayed_D, delayed_SE);
   not inst6  (int_res__SD, delayed_SD);
  `ifndef SNPS_MASK_ERR_UDP
   snps_dff_s_err inst7  (xcr_0, delayed_CK, int_res__D, int_res__SD);
  `else
    assign xcr_0=1'bz;
  `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        snps_dff_s #`SNPS_SEQ_DELAY  insts0 (Q, viol_0, delayed_CK, int_res__D, int_res__SD, xcr_0);

    `else
        snps_dff_s insts0  (Q, viol_0, delayed_CK, int_res__D, int_res__SD, xcr_0);

    `endif

    `ifdef VIRL_functiononly

    `else

not inst8  (_net_0, D);
not inst9  (_net_1, SE);
not inst10  (_net_2, SI);
and inst11  (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, _net_0, _net_1, _net_2);
not inst12  (_net_3, D);
not inst13  (_net_4, SE);
and inst14  (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI, SD, _net_3, _net_4, SI);
not inst15  (_net_5, D);
not inst16  (_net_6, SI);
and inst17  (ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI, SD, _net_5, SE, _net_6);
not inst18  (_net_7, D);
and inst19  (ENABLE_NOT_D_AND_SD_AND_SE_AND_SI, SD, _net_7, SE, SI);
not inst20  (_net_8, SE);
not inst21  (_net_9, SI);
and inst22  (ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, D, _net_8, _net_9);
not inst23  (_net_10, SE);
and inst24  (ENABLE_D_AND_SD_AND_NOT_SE_AND_SI, SD, D, _net_10, SI);
not inst25  (_net_11, SI);
and inst26  (ENABLE_D_AND_SD_AND_SE_AND_NOT_SI, SD, D, SE, _net_11);
and inst27  (ENABLE_D_AND_SD_AND_SE_AND_SI, SD, D, SE, SI);
not inst28  (_net_12, SE);
not inst29  (_net_13, SI);
and inst30  (ENABLE_SD_AND_NOT_SE_AND_NOT_SI, _net_12, SD, _net_13);
not inst31  (_net_14, SE);
and inst32  (ENABLE_SD_AND_NOT_SE_AND_SI, _net_14, SD, SI);
not inst33  (_net_15, SE);
not inst34  (_net_16, D);
not inst35  (_net_17, SI);
and inst36  (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_15, _net_16, _net_17);
not inst37  (_net_18, SE);
not inst38  (_net_19, D);
and inst39  (ENABLE_NOT_D_AND_NOT_SE_AND_SI, _net_18, _net_19, SI);
not inst40  (_net_20, D);
not inst41  (_net_21, SI);
and inst42  (ENABLE_NOT_D_AND_SE_AND_NOT_SI, SE, _net_20, _net_21);
not inst43  (_net_22, SI);
and inst44  (ENABLE_D_AND_SE_AND_NOT_SI, SE, D, _net_22);
not inst45  (_net_23, D);
not inst46  (_net_24, CK);
not inst47  (_net_25, SE);
not inst48  (_net_26, SI);
and inst49  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_23, _net_24, _net_25, _net_26);
not inst50  (_net_27, D);
not inst51  (_net_28, CK);
not inst52  (_net_29, SE);
and inst53  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_27, _net_28, _net_29, SI);
not inst54  (_net_30, D);
not inst55  (_net_31, CK);
not inst56  (_net_32, SI);
and inst57  (ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_30, _net_31, SE, _net_32);
not inst58  (_net_33, D);
not inst59  (_net_34, CK);
and inst60  (ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_SI, _net_33, _net_34, SE, SI);
not inst61  (_net_35, CK);
not inst62  (_net_36, SE);
not inst63  (_net_37, SI);
and inst64  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, _net_35, _net_36, _net_37);
not inst65  (_net_38, CK);
not inst66  (_net_39, SE);
and inst67  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SI, D, _net_38, _net_39, SI);
not inst68  (_net_40, CK);
not inst69  (_net_41, SI);
and inst70  (ENABLE_NOT_CK_AND_D_AND_SE_AND_NOT_SI, D, _net_40, SE, _net_41);
not inst71  (_net_42, CK);
and inst72  (ENABLE_NOT_CK_AND_D_AND_SE_AND_SI, D, _net_42, SE, SI);
not inst73  (_net_43, D);
not inst74  (_net_44, SE);
not inst75  (_net_45, SI);
and inst76  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_43, CK, _net_44, _net_45);
not inst77  (_net_46, D);
not inst78  (_net_47, SE);
and inst79  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_46, CK, _net_47, SI);
not inst80  (_net_48, D);
not inst81  (_net_49, SI);
and inst82  (ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_48, CK, SE, _net_49);
not inst83  (_net_50, D);
and inst84  (ENABLE_CK_AND_NOT_D_AND_SE_AND_SI, _net_50, CK, SE, SI);
not inst85  (_net_51, SE);
not inst86  (_net_52, SI);
and inst87  (ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, CK, _net_51, _net_52);
not inst88  (_net_53, SE);
and inst89  (ENABLE_CK_AND_D_AND_NOT_SE_AND_SI, D, CK, _net_53, SI);
not inst90  (_net_54, SI);
and inst91  (ENABLE_CK_AND_D_AND_SE_AND_NOT_SI, D, CK, SE, _net_54);
and inst92  (ENABLE_CK_AND_D_AND_SE_AND_SI, D, CK, SE, SI);
not inst93  (_net_55, D);
and inst94  (ENABLE_NOT_D_AND_SD_AND_SI, SD, _net_55, SI);
not inst95  (_net_56, SI);
and inst96  (ENABLE_D_AND_SD_AND_NOT_SI, SD, D, _net_56);
not inst97  (_net_57, D);
and inst98  (ENABLE_NOT_D_AND_SD_AND_SE, SD, _net_57, SE);
and inst99  (ENABLE_D_AND_SD_AND_SE, SD, D, SE);

specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
(negedge SD => (Q : 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE==1'b1 , posedge SI &&&  ENABLE_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE==1'b1 , negedge SI &&&  ENABLE_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
endspecify
    `endif

endmodule
`endcelldefine

//%END UDPLVT32_FSDPSBQ_PV2NR_2

//%BEGIN UDPLVT32_FSDPSBQ_PV2NR_4

`celldefine
module UDPLVT32_FSDPSBQ_PV2NR_4 (Q, CK, D, SI, SE, SD);
   output Q;
   input CK, D, SI, SE, SD;

   reg viol_0;
   wire delayed_CK, delayed_D, delayed_SI,
	delayed_SE, delayed_SD;

   wire int_res__D, int_res__SD, xcr_0;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

`ifdef _fv
   buf inst0  (delayed_CK, CK);
   buf inst1  (delayed_D, D);
   buf inst2  (delayed_SI, SI);
   buf inst3  (delayed_SE, SE);
   buf inst4  (delayed_SD, SD);
`endif

   snps_mux2 inst5  (int_res__D, delayed_SI, delayed_D, delayed_SE);
   not inst6  (int_res__SD, delayed_SD);
  `ifndef SNPS_MASK_ERR_UDP
   snps_dff_s_err inst7  (xcr_0, delayed_CK, int_res__D, int_res__SD);
  `else
    assign xcr_0=1'bz;
  `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        snps_dff_s #`SNPS_SEQ_DELAY  insts0 (Q, viol_0, delayed_CK, int_res__D, int_res__SD, xcr_0);

    `else
        snps_dff_s insts0  (Q, viol_0, delayed_CK, int_res__D, int_res__SD, xcr_0);

    `endif

    `ifdef VIRL_functiononly

    `else

not inst8  (_net_0, D);
not inst9  (_net_1, SE);
not inst10  (_net_2, SI);
and inst11  (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, _net_0, _net_1, _net_2);
not inst12  (_net_3, D);
not inst13  (_net_4, SE);
and inst14  (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI, SD, _net_3, _net_4, SI);
not inst15  (_net_5, D);
not inst16  (_net_6, SI);
and inst17  (ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI, SD, _net_5, SE, _net_6);
not inst18  (_net_7, D);
and inst19  (ENABLE_NOT_D_AND_SD_AND_SE_AND_SI, SD, _net_7, SE, SI);
not inst20  (_net_8, SE);
not inst21  (_net_9, SI);
and inst22  (ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, D, _net_8, _net_9);
not inst23  (_net_10, SE);
and inst24  (ENABLE_D_AND_SD_AND_NOT_SE_AND_SI, SD, D, _net_10, SI);
not inst25  (_net_11, SI);
and inst26  (ENABLE_D_AND_SD_AND_SE_AND_NOT_SI, SD, D, SE, _net_11);
and inst27  (ENABLE_D_AND_SD_AND_SE_AND_SI, SD, D, SE, SI);
not inst28  (_net_12, SE);
not inst29  (_net_13, SI);
and inst30  (ENABLE_SD_AND_NOT_SE_AND_NOT_SI, _net_12, SD, _net_13);
not inst31  (_net_14, SE);
and inst32  (ENABLE_SD_AND_NOT_SE_AND_SI, _net_14, SD, SI);
not inst33  (_net_15, SE);
not inst34  (_net_16, D);
not inst35  (_net_17, SI);
and inst36  (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_15, _net_16, _net_17);
not inst37  (_net_18, SE);
not inst38  (_net_19, D);
and inst39  (ENABLE_NOT_D_AND_NOT_SE_AND_SI, _net_18, _net_19, SI);
not inst40  (_net_20, D);
not inst41  (_net_21, SI);
and inst42  (ENABLE_NOT_D_AND_SE_AND_NOT_SI, SE, _net_20, _net_21);
not inst43  (_net_22, SI);
and inst44  (ENABLE_D_AND_SE_AND_NOT_SI, SE, D, _net_22);
not inst45  (_net_23, D);
not inst46  (_net_24, CK);
not inst47  (_net_25, SE);
not inst48  (_net_26, SI);
and inst49  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_23, _net_24, _net_25, _net_26);
not inst50  (_net_27, D);
not inst51  (_net_28, CK);
not inst52  (_net_29, SE);
and inst53  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_27, _net_28, _net_29, SI);
not inst54  (_net_30, D);
not inst55  (_net_31, CK);
not inst56  (_net_32, SI);
and inst57  (ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_30, _net_31, SE, _net_32);
not inst58  (_net_33, D);
not inst59  (_net_34, CK);
and inst60  (ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_SI, _net_33, _net_34, SE, SI);
not inst61  (_net_35, CK);
not inst62  (_net_36, SE);
not inst63  (_net_37, SI);
and inst64  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, _net_35, _net_36, _net_37);
not inst65  (_net_38, CK);
not inst66  (_net_39, SE);
and inst67  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SI, D, _net_38, _net_39, SI);
not inst68  (_net_40, CK);
not inst69  (_net_41, SI);
and inst70  (ENABLE_NOT_CK_AND_D_AND_SE_AND_NOT_SI, D, _net_40, SE, _net_41);
not inst71  (_net_42, CK);
and inst72  (ENABLE_NOT_CK_AND_D_AND_SE_AND_SI, D, _net_42, SE, SI);
not inst73  (_net_43, D);
not inst74  (_net_44, SE);
not inst75  (_net_45, SI);
and inst76  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_43, CK, _net_44, _net_45);
not inst77  (_net_46, D);
not inst78  (_net_47, SE);
and inst79  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_46, CK, _net_47, SI);
not inst80  (_net_48, D);
not inst81  (_net_49, SI);
and inst82  (ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_48, CK, SE, _net_49);
not inst83  (_net_50, D);
and inst84  (ENABLE_CK_AND_NOT_D_AND_SE_AND_SI, _net_50, CK, SE, SI);
not inst85  (_net_51, SE);
not inst86  (_net_52, SI);
and inst87  (ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, CK, _net_51, _net_52);
not inst88  (_net_53, SE);
and inst89  (ENABLE_CK_AND_D_AND_NOT_SE_AND_SI, D, CK, _net_53, SI);
not inst90  (_net_54, SI);
and inst91  (ENABLE_CK_AND_D_AND_SE_AND_NOT_SI, D, CK, SE, _net_54);
and inst92  (ENABLE_CK_AND_D_AND_SE_AND_SI, D, CK, SE, SI);
not inst93  (_net_55, D);
and inst94  (ENABLE_NOT_D_AND_SD_AND_SI, SD, _net_55, SI);
not inst95  (_net_56, SI);
and inst96  (ENABLE_D_AND_SD_AND_NOT_SI, SD, D, _net_56);
not inst97  (_net_57, D);
and inst98  (ENABLE_NOT_D_AND_SD_AND_SE, SD, _net_57, SE);
and inst99  (ENABLE_D_AND_SD_AND_SE, SD, D, SE);

specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
(negedge SD => (Q : 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b1) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b1) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI==1'b1 , posedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI==1'b1 , negedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE==1'b1 , posedge SI &&&  ENABLE_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE==1'b1 , negedge SI &&&  ENABLE_D_AND_SD_AND_SE==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
endspecify
    `endif

endmodule
`endcelldefine

//%END UDPLVT32_FSDPSBQ_PV2NR_4

//%BEGIN UDPLVT32_FSRBDPQ_PV2NR_1
`celldefine
module UDPLVT32_FSRBDPQ_PV2NR_1 (Q, CK, D, SI, SE, SR);
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
//%END UDPLVT32_FSRBDPQ_PV2NR_1

//%BEGIN UDPLVT32_FSRBDPQ_PV2NR_2
`celldefine
module UDPLVT32_FSRBDPQ_PV2NR_2 (Q, CK, D, SI, SE, SR);
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
//%END UDPLVT32_FSRBDPQ_PV2NR_2

//%BEGIN UDPLVT32_FSRBDPQ_PV2NR_4
`celldefine
module UDPLVT32_FSRBDPQ_PV2NR_4 (Q, CK, D, SI, SE, SR);
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
//%END UDPLVT32_FSRBDPQ_PV2NR_4

//%BEGIN UDPLVT32_FSRBDPRBQ_PV2NR_1
`celldefine
module UDPLVT32_FSRBDPRBQ_PV2NR_1 (Q, CK, D, SI, SE, RD, SR);
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
//%END UDPLVT32_FSRBDPRBQ_PV2NR_1

//%BEGIN UDPLVT32_FSRBDPRBQ_PV2NR_2
`celldefine
module UDPLVT32_FSRBDPRBQ_PV2NR_2 (Q, CK, D, SI, SE, RD, SR);
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
//%END UDPLVT32_FSRBDPRBQ_PV2NR_2

//%BEGIN UDPLVT32_FSRBDPRBQ_PV2NR_4
`celldefine
module UDPLVT32_FSRBDPRBQ_PV2NR_4 (Q, CK, D, SI, SE, RD, SR);
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
//%END UDPLVT32_FSRBDPRBQ_PV2NR_4

//%BEGIN UDPLVT32_FSRBDPSBQ_PV2NR_1
`celldefine
module UDPLVT32_FSRBDPSBQ_PV2NR_1 (Q, CK, D, SI, SE, SD, SR);
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
//%END UDPLVT32_FSRBDPSBQ_PV2NR_1

//%BEGIN UDPLVT32_FSRBDPSBQ_PV2NR_2
`celldefine
module UDPLVT32_FSRBDPSBQ_PV2NR_2 (Q, CK, D, SI, SE, SD, SR);
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
//%END UDPLVT32_FSRBDPSBQ_PV2NR_2

//%BEGIN UDPLVT32_FSRBDPSBQ_PV2NR_4
`celldefine
module UDPLVT32_FSRBDPSBQ_PV2NR_4 (Q, CK, D, SI, SE, SD, SR);
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
//%END UDPLVT32_FSRBDPSBQ_PV2NR_4

//%BEGIN UDPLVT32_FSRDPQ_PV2NR_1
`celldefine
module UDPLVT32_FSRDPQ_PV2NR_1 (Q, CK, D, SI, SE, SR);
  input CK, D, SI, SE, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_4, int_5, int_6, iq, iq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_SR, SR);
  `endif

  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_6, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_4, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
    not inst7  (int_4, delayed_CK);
    not inst8  (int_5, delayed_SR);
    and inst9  (int_6, delayed_CK, int_5);
    snps_latch insts0  (iq, viol_x, int_6, iq1);
    snps_latch insts1  (iq1, viol_x, int_4, mux_out);
    snps_mux2 inst10  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst11  (_net_0, SI);
not inst12  (_net_1, SR);
and inst13  (_net_2, _net_0, SE, _net_1);
not inst14  (_net_3, SE);
not inst15  (_net_4, D);
not inst16  (_net_5, SR);
and inst17  (_net_6, _net_3, _net_4, _net_5);
or inst18  (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_SE_AND_NOT_SI_AND_NOT_SR, _net_2, _net_6);
not inst19  (_net_7, D);
not inst20  (_net_8, SR);
and inst21  (_net_9, SE, _net_7, SI, _net_8);
not inst22  (_net_10, SE);
not inst23  (_net_11, SI);
not inst24  (_net_12, SR);
and inst25  (_net_13, _net_10, D, _net_11, _net_12);
or inst26  (ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR_OR_NOT_D_AND_SE_AND_SI_AND_NOT_SR, _net_9, _net_13);
not inst27  (_net_14, SI);
not inst28  (_net_15, SE);
not inst29  (_net_16, SR);
and inst30  (ENABLE_NOT_SE_AND_NOT_SI_AND_NOT_SR, _net_14, _net_15, _net_16);
not inst31  (_net_17, SE);
not inst32  (_net_18, SR);
and inst33  (ENABLE_NOT_SE_AND_SI_AND_NOT_SR, SI, _net_17, _net_18);
not inst34  (_net_19, D);
not inst35  (_net_20, SR);
and inst36  (ENABLE_NOT_D_AND_SI_AND_NOT_SR, SI, _net_19, _net_20);
not inst37  (_net_21, SI);
not inst38  (_net_22, SR);
and inst39  (ENABLE_D_AND_NOT_SI_AND_NOT_SR, _net_21, D, _net_22);
not inst40  (_net_23, D);
not inst41  (_net_24, SR);
and inst42  (ENABLE_NOT_D_AND_SE_AND_NOT_SR, SE, _net_23, _net_24);
not inst43  (_net_25, SR);
and inst44  (ENABLE_D_AND_SE_AND_NOT_SR, SE, D, _net_25);
not inst45  (_net_26, SE);
not inst46  (_net_27, D);
not inst47  (_net_28, SI);
and inst48  (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_26, _net_27, _net_28);
not inst49  (_net_29, SE);
not inst50  (_net_30, D);
and inst51  (ENABLE_NOT_D_AND_NOT_SE_AND_SI, _net_29, _net_30, SI);
not inst52  (_net_31, D);
not inst53  (_net_32, SI);
and inst54  (ENABLE_NOT_D_AND_SE_AND_NOT_SI, SE, _net_31, _net_32);
not inst55  (_net_33, D);
and inst56  (ENABLE_NOT_D_AND_SE_AND_SI, SE, _net_33, SI);
not inst57  (_net_34, SE);
not inst58  (_net_35, SI);
and inst59  (ENABLE_D_AND_NOT_SE_AND_NOT_SI, _net_34, D, _net_35);
not inst60  (_net_36, SE);
and inst61  (ENABLE_D_AND_NOT_SE_AND_SI, _net_36, D, SI);
not inst62  (_net_37, SI);
and inst63  (ENABLE_D_AND_SE_AND_NOT_SI, SE, D, _net_37);
and inst64  (ENABLE_D_AND_SE_AND_SI, SE, D, SI);
not inst65  (_net_38, D);
not inst66  (_net_39, SE);
not inst67  (_net_40, SI);
and inst68  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_38, CK, _net_39, _net_40);
not inst69  (_net_41, D);
not inst70  (_net_42, SE);
and inst71  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_41, CK, _net_42, SI);
not inst72  (_net_43, D);
not inst73  (_net_44, SI);
and inst74  (ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_43, CK, SE, _net_44);
not inst75  (_net_45, D);
and inst76  (ENABLE_CK_AND_NOT_D_AND_SE_AND_SI, _net_45, CK, SE, SI);
not inst77  (_net_46, SE);
not inst78  (_net_47, SI);
and inst79  (ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, CK, _net_46, _net_47);
not inst80  (_net_48, SE);
and inst81  (ENABLE_CK_AND_D_AND_NOT_SE_AND_SI, D, CK, _net_48, SI);
not inst82  (_net_49, SI);
and inst83  (ENABLE_CK_AND_D_AND_SE_AND_NOT_SI, D, CK, SE, _net_49);
and inst84  (ENABLE_CK_AND_D_AND_SE_AND_SI, D, CK, SE, SI);

specify
if (D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR_OR_NOT_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR_OR_NOT_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FSRDPQ_PV2NR_1

//%BEGIN UDPLVT32_FSRDPQ_PV2NR_2
`celldefine
module UDPLVT32_FSRDPQ_PV2NR_2 (Q, CK, D, SI, SE, SR);
  input CK, D, SI, SE, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_4, int_5, int_6, iq, iq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_SR, SR);
  `endif

  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_6, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_4, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
    not inst7  (int_4, delayed_CK);
    not inst8  (int_5, delayed_SR);
    and inst9  (int_6, delayed_CK, int_5);
    snps_latch insts0  (iq, viol_x, int_6, iq1);
    snps_latch insts1  (iq1, viol_x, int_4, mux_out);
    snps_mux2 inst10  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst11  (_net_0, SI);
not inst12  (_net_1, SR);
and inst13  (_net_2, _net_0, SE, _net_1);
not inst14  (_net_3, SE);
not inst15  (_net_4, D);
not inst16  (_net_5, SR);
and inst17  (_net_6, _net_3, _net_4, _net_5);
or inst18  (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_SE_AND_NOT_SI_AND_NOT_SR, _net_2, _net_6);
not inst19  (_net_7, D);
not inst20  (_net_8, SR);
and inst21  (_net_9, SE, _net_7, SI, _net_8);
not inst22  (_net_10, SE);
not inst23  (_net_11, SI);
not inst24  (_net_12, SR);
and inst25  (_net_13, _net_10, D, _net_11, _net_12);
or inst26  (ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR_OR_NOT_D_AND_SE_AND_SI_AND_NOT_SR, _net_9, _net_13);
not inst27  (_net_14, SI);
not inst28  (_net_15, SE);
not inst29  (_net_16, SR);
and inst30  (ENABLE_NOT_SE_AND_NOT_SI_AND_NOT_SR, _net_14, _net_15, _net_16);
not inst31  (_net_17, SE);
not inst32  (_net_18, SR);
and inst33  (ENABLE_NOT_SE_AND_SI_AND_NOT_SR, SI, _net_17, _net_18);
not inst34  (_net_19, D);
not inst35  (_net_20, SR);
and inst36  (ENABLE_NOT_D_AND_SI_AND_NOT_SR, SI, _net_19, _net_20);
not inst37  (_net_21, SI);
not inst38  (_net_22, SR);
and inst39  (ENABLE_D_AND_NOT_SI_AND_NOT_SR, _net_21, D, _net_22);
not inst40  (_net_23, D);
not inst41  (_net_24, SR);
and inst42  (ENABLE_NOT_D_AND_SE_AND_NOT_SR, SE, _net_23, _net_24);
not inst43  (_net_25, SR);
and inst44  (ENABLE_D_AND_SE_AND_NOT_SR, SE, D, _net_25);
not inst45  (_net_26, SE);
not inst46  (_net_27, D);
not inst47  (_net_28, SI);
and inst48  (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_26, _net_27, _net_28);
not inst49  (_net_29, SE);
not inst50  (_net_30, D);
and inst51  (ENABLE_NOT_D_AND_NOT_SE_AND_SI, _net_29, _net_30, SI);
not inst52  (_net_31, D);
not inst53  (_net_32, SI);
and inst54  (ENABLE_NOT_D_AND_SE_AND_NOT_SI, SE, _net_31, _net_32);
not inst55  (_net_33, D);
and inst56  (ENABLE_NOT_D_AND_SE_AND_SI, SE, _net_33, SI);
not inst57  (_net_34, SE);
not inst58  (_net_35, SI);
and inst59  (ENABLE_D_AND_NOT_SE_AND_NOT_SI, _net_34, D, _net_35);
not inst60  (_net_36, SE);
and inst61  (ENABLE_D_AND_NOT_SE_AND_SI, _net_36, D, SI);
not inst62  (_net_37, SI);
and inst63  (ENABLE_D_AND_SE_AND_NOT_SI, SE, D, _net_37);
and inst64  (ENABLE_D_AND_SE_AND_SI, SE, D, SI);
not inst65  (_net_38, D);
not inst66  (_net_39, SE);
not inst67  (_net_40, SI);
and inst68  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_38, CK, _net_39, _net_40);
not inst69  (_net_41, D);
not inst70  (_net_42, SE);
and inst71  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_41, CK, _net_42, SI);
not inst72  (_net_43, D);
not inst73  (_net_44, SI);
and inst74  (ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_43, CK, SE, _net_44);
not inst75  (_net_45, D);
and inst76  (ENABLE_CK_AND_NOT_D_AND_SE_AND_SI, _net_45, CK, SE, SI);
not inst77  (_net_46, SE);
not inst78  (_net_47, SI);
and inst79  (ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, CK, _net_46, _net_47);
not inst80  (_net_48, SE);
and inst81  (ENABLE_CK_AND_D_AND_NOT_SE_AND_SI, D, CK, _net_48, SI);
not inst82  (_net_49, SI);
and inst83  (ENABLE_CK_AND_D_AND_SE_AND_NOT_SI, D, CK, SE, _net_49);
and inst84  (ENABLE_CK_AND_D_AND_SE_AND_SI, D, CK, SE, SI);

specify
if (D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR_OR_NOT_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR_OR_NOT_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FSRDPQ_PV2NR_2

//%BEGIN UDPLVT32_FSRDPQ_PV2NR_4
`celldefine
module UDPLVT32_FSRDPQ_PV2NR_4 (Q, CK, D, SI, SE, SR);
  input CK, D, SI, SE, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_4, int_5, int_6, iq, iq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_SR, SR);
  `endif

  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst5  (viol_x, viol_0, int_6, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_4, 1'b1, 1'b1);
 `else
    assign viol_x=1'bz;
  `endif
    not inst7  (int_4, delayed_CK);
    not inst8  (int_5, delayed_SR);
    and inst9  (int_6, delayed_CK, int_5);
    snps_latch insts0  (iq, viol_x, int_6, iq1);
    snps_latch insts1  (iq1, viol_x, int_4, mux_out);
    snps_mux2 inst10  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst11  (_net_0, SI);
not inst12  (_net_1, SR);
and inst13  (_net_2, _net_0, SE, _net_1);
not inst14  (_net_3, SE);
not inst15  (_net_4, D);
not inst16  (_net_5, SR);
and inst17  (_net_6, _net_3, _net_4, _net_5);
or inst18  (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_SE_AND_NOT_SI_AND_NOT_SR, _net_2, _net_6);
not inst19  (_net_7, D);
not inst20  (_net_8, SR);
and inst21  (_net_9, SE, _net_7, SI, _net_8);
not inst22  (_net_10, SE);
not inst23  (_net_11, SI);
not inst24  (_net_12, SR);
and inst25  (_net_13, _net_10, D, _net_11, _net_12);
or inst26  (ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR_OR_NOT_D_AND_SE_AND_SI_AND_NOT_SR, _net_9, _net_13);
not inst27  (_net_14, SI);
not inst28  (_net_15, SE);
not inst29  (_net_16, SR);
and inst30  (ENABLE_NOT_SE_AND_NOT_SI_AND_NOT_SR, _net_14, _net_15, _net_16);
not inst31  (_net_17, SE);
not inst32  (_net_18, SR);
and inst33  (ENABLE_NOT_SE_AND_SI_AND_NOT_SR, SI, _net_17, _net_18);
not inst34  (_net_19, D);
not inst35  (_net_20, SR);
and inst36  (ENABLE_NOT_D_AND_SI_AND_NOT_SR, SI, _net_19, _net_20);
not inst37  (_net_21, SI);
not inst38  (_net_22, SR);
and inst39  (ENABLE_D_AND_NOT_SI_AND_NOT_SR, _net_21, D, _net_22);
not inst40  (_net_23, D);
not inst41  (_net_24, SR);
and inst42  (ENABLE_NOT_D_AND_SE_AND_NOT_SR, SE, _net_23, _net_24);
not inst43  (_net_25, SR);
and inst44  (ENABLE_D_AND_SE_AND_NOT_SR, SE, D, _net_25);
not inst45  (_net_26, SE);
not inst46  (_net_27, D);
not inst47  (_net_28, SI);
and inst48  (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_26, _net_27, _net_28);
not inst49  (_net_29, SE);
not inst50  (_net_30, D);
and inst51  (ENABLE_NOT_D_AND_NOT_SE_AND_SI, _net_29, _net_30, SI);
not inst52  (_net_31, D);
not inst53  (_net_32, SI);
and inst54  (ENABLE_NOT_D_AND_SE_AND_NOT_SI, SE, _net_31, _net_32);
not inst55  (_net_33, D);
and inst56  (ENABLE_NOT_D_AND_SE_AND_SI, SE, _net_33, SI);
not inst57  (_net_34, SE);
not inst58  (_net_35, SI);
and inst59  (ENABLE_D_AND_NOT_SE_AND_NOT_SI, _net_34, D, _net_35);
not inst60  (_net_36, SE);
and inst61  (ENABLE_D_AND_NOT_SE_AND_SI, _net_36, D, SI);
not inst62  (_net_37, SI);
and inst63  (ENABLE_D_AND_SE_AND_NOT_SI, SE, D, _net_37);
and inst64  (ENABLE_D_AND_SE_AND_SI, SE, D, SI);
not inst65  (_net_38, D);
not inst66  (_net_39, SE);
not inst67  (_net_40, SI);
and inst68  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI, _net_38, CK, _net_39, _net_40);
not inst69  (_net_41, D);
not inst70  (_net_42, SE);
and inst71  (ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI, _net_41, CK, _net_42, SI);
not inst72  (_net_43, D);
not inst73  (_net_44, SI);
and inst74  (ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI, _net_43, CK, SE, _net_44);
not inst75  (_net_45, D);
and inst76  (ENABLE_CK_AND_NOT_D_AND_SE_AND_SI, _net_45, CK, SE, SI);
not inst77  (_net_46, SE);
not inst78  (_net_47, SI);
and inst79  (ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI, D, CK, _net_46, _net_47);
not inst80  (_net_48, SE);
and inst81  (ENABLE_CK_AND_D_AND_NOT_SE_AND_SI, D, CK, _net_48, SI);
not inst82  (_net_49, SI);
and inst83  (ENABLE_CK_AND_D_AND_SE_AND_NOT_SI, D, CK, SE, _net_49);
and inst84  (ENABLE_CK_AND_D_AND_SE_AND_SI, D, CK, SE, SI);

specify
if (D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR_OR_NOT_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR_OR_NOT_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FSRDPQ_PV2NR_4

//%BEGIN UDPLVT32_FSRDPRBQ_PV2NR_1
`celldefine
module UDPLVT32_FSRDPRBQ_PV2NR_1 (Q, CK, D, SI, SE, RD, SR);
  input CK, D, SI, SE, RD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_8, int_9, int_11, int_12, iq, iq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_RD, RD);
    buf inst5  (delayed_SR, SR);
  `endif

  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_12, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst7  (viol_x, viol_0, int_9, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
    not inst8  (int_8, delayed_RD);
    not inst9  (int_9, delayed_CK);
    not inst10  (int_11, delayed_SR);
    and inst11  (int_12, delayed_CK, int_11);
    snps_latch_r insts0  (iq, viol_x, int_12, iq1, int_8);
    snps_latch_r insts1  (iq1, viol_x, int_9, mux_out, int_8);
    snps_mux2 inst12  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst13  (_net_0, SI);
not inst14  (_net_1, SR);
and inst15  (_net_2, SE, RD, _net_0, _net_1);
not inst16  (_net_3, D);
not inst17  (_net_4, SE);
not inst18  (_net_5, SR);
and inst19  (_net_6, RD, _net_3, _net_4, _net_5);
or inst20  (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_NOT_SI_AND_NOT_SR, _net_2, _net_6);
not inst21  (_net_7, SR);
and inst22  (_net_8, SE, RD, SI, _net_7);
not inst23  (_net_9, SE);
not inst24  (_net_10, SR);
and inst25  (_net_11, RD, D, _net_9, _net_10);
or inst26  (ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_SI_AND_NOT_SR, _net_8, _net_11);
not inst27  (_net_12, SE);
not inst28  (_net_13, SI);
not inst29  (_net_14, SR);
and inst30  (ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR, _net_12, RD, _net_13, _net_14);
not inst31  (_net_15, SE);
not inst32  (_net_16, SR);
and inst33  (ENABLE_RD_AND_NOT_SE_AND_SI_AND_NOT_SR, _net_15, RD, SI, _net_16);
not inst34  (_net_17, D);
not inst35  (_net_18, SR);
and inst36  (ENABLE_NOT_D_AND_SE_AND_SI_AND_NOT_SR, SE, _net_17, SI, _net_18);
not inst37  (_net_19, SE);
not inst38  (_net_20, SI);
not inst39  (_net_21, SR);
and inst40  (ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR, _net_19, D, _net_20, _net_21);
not inst41  (_net_22, SE);
not inst42  (_net_23, SR);
and inst43  (ENABLE_D_AND_NOT_SE_AND_SI_AND_NOT_SR, _net_22, D, SI, _net_23);
not inst44  (_net_24, SR);
and inst45  (ENABLE_D_AND_SE_AND_SI_AND_NOT_SR, SE, D, SI, _net_24);
not inst46  (_net_25, CK);
not inst47  (_net_26, SI);
not inst48  (_net_27, SR);
and inst49  (_net_28, SE, _net_25, _net_26, _net_27);
not inst50  (_net_29, D);
not inst51  (_net_30, CK);
not inst52  (_net_31, SE);
not inst53  (_net_32, SR);
and inst54  (_net_33, _net_29, _net_30, _net_31, _net_32);
or inst55  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_NOT_SR, _net_28, _net_33);
not inst56  (_net_34, CK);
not inst57  (_net_35, SR);
and inst58  (_net_36, SE, _net_34, SI, _net_35);
not inst59  (_net_37, CK);
not inst60  (_net_38, SE);
not inst61  (_net_39, SR);
and inst62  (_net_40, D, _net_37, _net_38, _net_39);
or inst63  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_SI_AND_NOT_SR, _net_36, _net_40);
not inst64  (_net_41, SR);
and inst65  (ENABLE_CK_AND_NOT_SR, _net_41, CK);
not inst66  (_net_42, D);
not inst67  (_net_43, SR);
and inst68  (ENABLE_NOT_D_AND_RD_AND_SI_AND_NOT_SR, RD, _net_42, SI, _net_43);
not inst69  (_net_44, SI);
not inst70  (_net_45, SR);
and inst71  (ENABLE_D_AND_RD_AND_NOT_SI_AND_NOT_SR, RD, D, _net_44, _net_45);
not inst72  (_net_46, D);
not inst73  (_net_47, SR);
and inst74  (ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SR, RD, _net_46, SE, _net_47);
not inst75  (_net_48, SR);
and inst76  (ENABLE_D_AND_RD_AND_SE_AND_NOT_SR, RD, D, SE, _net_48);
not inst77  (_net_49, D);
not inst78  (_net_50, SE);
not inst79  (_net_51, SI);
and inst80  (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, _net_49, _net_50, _net_51);
not inst81  (_net_52, D);
not inst82  (_net_53, SE);
and inst83  (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI, RD, _net_52, _net_53, SI);
not inst84  (_net_54, D);
not inst85  (_net_55, SI);
and inst86  (ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI, RD, _net_54, SE, _net_55);
not inst87  (_net_56, D);
and inst88  (ENABLE_NOT_D_AND_RD_AND_SE_AND_SI, RD, _net_56, SE, SI);
not inst89  (_net_57, SE);
not inst90  (_net_58, SI);
and inst91  (ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, D, _net_57, _net_58);
not inst92  (_net_59, SE);
and inst93  (ENABLE_D_AND_RD_AND_NOT_SE_AND_SI, RD, D, _net_59, SI);
not inst94  (_net_60, SI);
and inst95  (ENABLE_D_AND_RD_AND_SE_AND_NOT_SI, RD, D, SE, _net_60);
and inst96  (ENABLE_D_AND_RD_AND_SE_AND_SI, RD, D, SE, SI);
not inst97  (_net_61, D);
not inst98  (_net_62, SE);
not inst99  (_net_63, SI);
and inst100  (ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI, _net_61, CK, RD, _net_62, _net_63);
not inst101  (_net_64, D);
not inst102  (_net_65, SE);
and inst103  (ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_SI, _net_64, CK, RD, _net_65, SI);
not inst104  (_net_66, D);
not inst105  (_net_67, SI);
and inst106  (ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_NOT_SI, _net_66, CK, RD, SE, _net_67);
not inst107  (_net_68, D);
and inst108  (ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_SI, _net_68, CK, RD, SE, SI);
not inst109  (_net_69, SE);
not inst110  (_net_70, SI);
and inst111  (ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_NOT_SI, D, CK, RD, _net_69, _net_70);
not inst112  (_net_71, SE);
and inst113  (ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_SI, D, CK, RD, _net_71, SI);
not inst114  (_net_72, SI);
and inst115  (ENABLE_CK_AND_D_AND_RD_AND_SE_AND_NOT_SI, D, CK, RD, SE, _net_72);
and inst116  (ENABLE_CK_AND_D_AND_RD_AND_SE_AND_SI, D, CK, RD, SE, SI);

specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
(negedge RD => (Q : 1'b0))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge RD &&&  ENABLE_NOT_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FSRDPRBQ_PV2NR_1

//%BEGIN UDPLVT32_FSRDPRBQ_PV2NR_2
`celldefine
module UDPLVT32_FSRDPRBQ_PV2NR_2 (Q, CK, D, SI, SE, RD, SR);
  input CK, D, SI, SE, RD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_8, int_9, int_11, int_12, iq, iq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_RD, RD);
    buf inst5  (delayed_SR, SR);
  `endif

  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_12, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst7  (viol_x, viol_0, int_9, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
    not inst8  (int_8, delayed_RD);
    not inst9  (int_9, delayed_CK);
    not inst10  (int_11, delayed_SR);
    and inst11  (int_12, delayed_CK, int_11);
    snps_latch_r insts0  (iq, viol_x, int_12, iq1, int_8);
    snps_latch_r insts1  (iq1, viol_x, int_9, mux_out, int_8);
    snps_mux2 inst12  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst13  (_net_0, SI);
not inst14  (_net_1, SR);
and inst15  (_net_2, SE, RD, _net_0, _net_1);
not inst16  (_net_3, D);
not inst17  (_net_4, SE);
not inst18  (_net_5, SR);
and inst19  (_net_6, RD, _net_3, _net_4, _net_5);
or inst20  (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_NOT_SI_AND_NOT_SR, _net_2, _net_6);
not inst21  (_net_7, SR);
and inst22  (_net_8, SE, RD, SI, _net_7);
not inst23  (_net_9, SE);
not inst24  (_net_10, SR);
and inst25  (_net_11, RD, D, _net_9, _net_10);
or inst26  (ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_SI_AND_NOT_SR, _net_8, _net_11);
not inst27  (_net_12, SE);
not inst28  (_net_13, SI);
not inst29  (_net_14, SR);
and inst30  (ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR, _net_12, RD, _net_13, _net_14);
not inst31  (_net_15, SE);
not inst32  (_net_16, SR);
and inst33  (ENABLE_RD_AND_NOT_SE_AND_SI_AND_NOT_SR, _net_15, RD, SI, _net_16);
not inst34  (_net_17, D);
not inst35  (_net_18, SR);
and inst36  (ENABLE_NOT_D_AND_SE_AND_SI_AND_NOT_SR, SE, _net_17, SI, _net_18);
not inst37  (_net_19, SE);
not inst38  (_net_20, SI);
not inst39  (_net_21, SR);
and inst40  (ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR, _net_19, D, _net_20, _net_21);
not inst41  (_net_22, SE);
not inst42  (_net_23, SR);
and inst43  (ENABLE_D_AND_NOT_SE_AND_SI_AND_NOT_SR, _net_22, D, SI, _net_23);
not inst44  (_net_24, SR);
and inst45  (ENABLE_D_AND_SE_AND_SI_AND_NOT_SR, SE, D, SI, _net_24);
not inst46  (_net_25, CK);
not inst47  (_net_26, SI);
not inst48  (_net_27, SR);
and inst49  (_net_28, SE, _net_25, _net_26, _net_27);
not inst50  (_net_29, D);
not inst51  (_net_30, CK);
not inst52  (_net_31, SE);
not inst53  (_net_32, SR);
and inst54  (_net_33, _net_29, _net_30, _net_31, _net_32);
or inst55  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_NOT_SR, _net_28, _net_33);
not inst56  (_net_34, CK);
not inst57  (_net_35, SR);
and inst58  (_net_36, SE, _net_34, SI, _net_35);
not inst59  (_net_37, CK);
not inst60  (_net_38, SE);
not inst61  (_net_39, SR);
and inst62  (_net_40, D, _net_37, _net_38, _net_39);
or inst63  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_SI_AND_NOT_SR, _net_36, _net_40);
not inst64  (_net_41, SR);
and inst65  (ENABLE_CK_AND_NOT_SR, _net_41, CK);
not inst66  (_net_42, D);
not inst67  (_net_43, SR);
and inst68  (ENABLE_NOT_D_AND_RD_AND_SI_AND_NOT_SR, RD, _net_42, SI, _net_43);
not inst69  (_net_44, SI);
not inst70  (_net_45, SR);
and inst71  (ENABLE_D_AND_RD_AND_NOT_SI_AND_NOT_SR, RD, D, _net_44, _net_45);
not inst72  (_net_46, D);
not inst73  (_net_47, SR);
and inst74  (ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SR, RD, _net_46, SE, _net_47);
not inst75  (_net_48, SR);
and inst76  (ENABLE_D_AND_RD_AND_SE_AND_NOT_SR, RD, D, SE, _net_48);
not inst77  (_net_49, D);
not inst78  (_net_50, SE);
not inst79  (_net_51, SI);
and inst80  (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, _net_49, _net_50, _net_51);
not inst81  (_net_52, D);
not inst82  (_net_53, SE);
and inst83  (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI, RD, _net_52, _net_53, SI);
not inst84  (_net_54, D);
not inst85  (_net_55, SI);
and inst86  (ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI, RD, _net_54, SE, _net_55);
not inst87  (_net_56, D);
and inst88  (ENABLE_NOT_D_AND_RD_AND_SE_AND_SI, RD, _net_56, SE, SI);
not inst89  (_net_57, SE);
not inst90  (_net_58, SI);
and inst91  (ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, D, _net_57, _net_58);
not inst92  (_net_59, SE);
and inst93  (ENABLE_D_AND_RD_AND_NOT_SE_AND_SI, RD, D, _net_59, SI);
not inst94  (_net_60, SI);
and inst95  (ENABLE_D_AND_RD_AND_SE_AND_NOT_SI, RD, D, SE, _net_60);
and inst96  (ENABLE_D_AND_RD_AND_SE_AND_SI, RD, D, SE, SI);
not inst97  (_net_61, D);
not inst98  (_net_62, SE);
not inst99  (_net_63, SI);
and inst100  (ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI, _net_61, CK, RD, _net_62, _net_63);
not inst101  (_net_64, D);
not inst102  (_net_65, SE);
and inst103  (ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_SI, _net_64, CK, RD, _net_65, SI);
not inst104  (_net_66, D);
not inst105  (_net_67, SI);
and inst106  (ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_NOT_SI, _net_66, CK, RD, SE, _net_67);
not inst107  (_net_68, D);
and inst108  (ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_SI, _net_68, CK, RD, SE, SI);
not inst109  (_net_69, SE);
not inst110  (_net_70, SI);
and inst111  (ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_NOT_SI, D, CK, RD, _net_69, _net_70);
not inst112  (_net_71, SE);
and inst113  (ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_SI, D, CK, RD, _net_71, SI);
not inst114  (_net_72, SI);
and inst115  (ENABLE_CK_AND_D_AND_RD_AND_SE_AND_NOT_SI, D, CK, RD, SE, _net_72);
and inst116  (ENABLE_CK_AND_D_AND_RD_AND_SE_AND_SI, D, CK, RD, SE, SI);

specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
(negedge RD => (Q : 1'b0))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge RD &&&  ENABLE_NOT_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FSRDPRBQ_PV2NR_2

//%BEGIN UDPLVT32_FSRDPRBQ_PV2NR_4
`celldefine
module UDPLVT32_FSRDPRBQ_PV2NR_4 (Q, CK, D, SI, SE, RD, SR);
  input CK, D, SI, SE, RD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_8, int_9, int_11, int_12, iq, iq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_RD, RD);
    buf inst5  (delayed_SR, SR);
  `endif

  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_12, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst7  (viol_x, viol_0, int_9, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
    not inst8  (int_8, delayed_RD);
    not inst9  (int_9, delayed_CK);
    not inst10  (int_11, delayed_SR);
    and inst11  (int_12, delayed_CK, int_11);
    snps_latch_r insts0  (iq, viol_x, int_12, iq1, int_8);
    snps_latch_r insts1  (iq1, viol_x, int_9, mux_out, int_8);
    snps_mux2 inst12  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst13  (_net_0, SI);
not inst14  (_net_1, SR);
and inst15  (_net_2, SE, RD, _net_0, _net_1);
not inst16  (_net_3, D);
not inst17  (_net_4, SE);
not inst18  (_net_5, SR);
and inst19  (_net_6, RD, _net_3, _net_4, _net_5);
or inst20  (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_NOT_SI_AND_NOT_SR, _net_2, _net_6);
not inst21  (_net_7, SR);
and inst22  (_net_8, SE, RD, SI, _net_7);
not inst23  (_net_9, SE);
not inst24  (_net_10, SR);
and inst25  (_net_11, RD, D, _net_9, _net_10);
or inst26  (ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_SI_AND_NOT_SR, _net_8, _net_11);
not inst27  (_net_12, SE);
not inst28  (_net_13, SI);
not inst29  (_net_14, SR);
and inst30  (ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR, _net_12, RD, _net_13, _net_14);
not inst31  (_net_15, SE);
not inst32  (_net_16, SR);
and inst33  (ENABLE_RD_AND_NOT_SE_AND_SI_AND_NOT_SR, _net_15, RD, SI, _net_16);
not inst34  (_net_17, D);
not inst35  (_net_18, SR);
and inst36  (ENABLE_NOT_D_AND_SE_AND_SI_AND_NOT_SR, SE, _net_17, SI, _net_18);
not inst37  (_net_19, SE);
not inst38  (_net_20, SI);
not inst39  (_net_21, SR);
and inst40  (ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR, _net_19, D, _net_20, _net_21);
not inst41  (_net_22, SE);
not inst42  (_net_23, SR);
and inst43  (ENABLE_D_AND_NOT_SE_AND_SI_AND_NOT_SR, _net_22, D, SI, _net_23);
not inst44  (_net_24, SR);
and inst45  (ENABLE_D_AND_SE_AND_SI_AND_NOT_SR, SE, D, SI, _net_24);
not inst46  (_net_25, CK);
not inst47  (_net_26, SI);
not inst48  (_net_27, SR);
and inst49  (_net_28, SE, _net_25, _net_26, _net_27);
not inst50  (_net_29, D);
not inst51  (_net_30, CK);
not inst52  (_net_31, SE);
not inst53  (_net_32, SR);
and inst54  (_net_33, _net_29, _net_30, _net_31, _net_32);
or inst55  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_NOT_SR, _net_28, _net_33);
not inst56  (_net_34, CK);
not inst57  (_net_35, SR);
and inst58  (_net_36, SE, _net_34, SI, _net_35);
not inst59  (_net_37, CK);
not inst60  (_net_38, SE);
not inst61  (_net_39, SR);
and inst62  (_net_40, D, _net_37, _net_38, _net_39);
or inst63  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_SI_AND_NOT_SR, _net_36, _net_40);
not inst64  (_net_41, SR);
and inst65  (ENABLE_CK_AND_NOT_SR, _net_41, CK);
not inst66  (_net_42, D);
not inst67  (_net_43, SR);
and inst68  (ENABLE_NOT_D_AND_RD_AND_SI_AND_NOT_SR, RD, _net_42, SI, _net_43);
not inst69  (_net_44, SI);
not inst70  (_net_45, SR);
and inst71  (ENABLE_D_AND_RD_AND_NOT_SI_AND_NOT_SR, RD, D, _net_44, _net_45);
not inst72  (_net_46, D);
not inst73  (_net_47, SR);
and inst74  (ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SR, RD, _net_46, SE, _net_47);
not inst75  (_net_48, SR);
and inst76  (ENABLE_D_AND_RD_AND_SE_AND_NOT_SR, RD, D, SE, _net_48);
not inst77  (_net_49, D);
not inst78  (_net_50, SE);
not inst79  (_net_51, SI);
and inst80  (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, _net_49, _net_50, _net_51);
not inst81  (_net_52, D);
not inst82  (_net_53, SE);
and inst83  (ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI, RD, _net_52, _net_53, SI);
not inst84  (_net_54, D);
not inst85  (_net_55, SI);
and inst86  (ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI, RD, _net_54, SE, _net_55);
not inst87  (_net_56, D);
and inst88  (ENABLE_NOT_D_AND_RD_AND_SE_AND_SI, RD, _net_56, SE, SI);
not inst89  (_net_57, SE);
not inst90  (_net_58, SI);
and inst91  (ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI, RD, D, _net_57, _net_58);
not inst92  (_net_59, SE);
and inst93  (ENABLE_D_AND_RD_AND_NOT_SE_AND_SI, RD, D, _net_59, SI);
not inst94  (_net_60, SI);
and inst95  (ENABLE_D_AND_RD_AND_SE_AND_NOT_SI, RD, D, SE, _net_60);
and inst96  (ENABLE_D_AND_RD_AND_SE_AND_SI, RD, D, SE, SI);
not inst97  (_net_61, D);
not inst98  (_net_62, SE);
not inst99  (_net_63, SI);
and inst100  (ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI, _net_61, CK, RD, _net_62, _net_63);
not inst101  (_net_64, D);
not inst102  (_net_65, SE);
and inst103  (ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_SI, _net_64, CK, RD, _net_65, SI);
not inst104  (_net_66, D);
not inst105  (_net_67, SI);
and inst106  (ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_NOT_SI, _net_66, CK, RD, SE, _net_67);
not inst107  (_net_68, D);
and inst108  (ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_SI, _net_68, CK, RD, SE, SI);
not inst109  (_net_69, SE);
not inst110  (_net_70, SI);
and inst111  (ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_NOT_SI, D, CK, RD, _net_69, _net_70);
not inst112  (_net_71, SE);
and inst113  (ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_SI, D, CK, RD, _net_71, SI);
not inst114  (_net_72, SI);
and inst115  (ENABLE_CK_AND_D_AND_RD_AND_SE_AND_NOT_SI, D, CK, RD, SE, _net_72);
and inst116  (ENABLE_CK_AND_D_AND_RD_AND_SE_AND_SI, D, CK, RD, SE, SI);

specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge RD => (Q +: 1'b0))=(0, 0);
(negedge RD => (Q : 1'b0))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && RD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SR_OR_RD_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_RD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge RD &&&  ENABLE_NOT_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$recrem(posedge RD &&&  ENABLE_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_RD, delayed_CK);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge RD &&&  ENABLE_CK_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_RD_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_RD_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_RD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FSRDPRBQ_PV2NR_4

//%BEGIN UDPLVT32_FSRDPSBQ_PV2NR_1
`celldefine
module UDPLVT32_FSRDPSBQ_PV2NR_1 (Q, CK, D, SI, SE, SD, SR);
  input CK, D, SI, SE, SD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_8, int_9, int_11, int_12, iq, iq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_SD, SD);
    buf inst5  (delayed_SR, SR);
  `endif

  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_12, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst7  (viol_x, viol_0, int_9, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
    not inst8  (int_8, delayed_SD);
    not inst9  (int_9, delayed_CK);
    not inst10  (int_11, delayed_SR);
    and inst11  (int_12, delayed_CK, int_11);
    snps_latch_s insts0  (iq, viol_x, int_12, iq1, int_8);
    snps_latch_s insts1  (iq1, viol_x, int_9, mux_out, int_8);
    snps_mux2 inst12  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst13  (_net_0, SI);
not inst14  (_net_1, SR);
and inst15  (_net_2, SE, SD, _net_0, _net_1);
not inst16  (_net_3, D);
not inst17  (_net_4, SE);
not inst18  (_net_5, SR);
and inst19  (_net_6, SD, _net_3, _net_4, _net_5);
or inst20  (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_NOT_SI_AND_NOT_SR, _net_2, _net_6);
not inst21  (_net_7, SR);
and inst22  (_net_8, SE, SD, SI, _net_7);
not inst23  (_net_9, SE);
not inst24  (_net_10, SR);
and inst25  (_net_11, SD, D, _net_9, _net_10);
or inst26  (ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_SI_AND_NOT_SR, _net_8, _net_11);
not inst27  (_net_12, SE);
not inst28  (_net_13, SI);
not inst29  (_net_14, SR);
and inst30  (ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR, _net_12, SD, _net_13, _net_14);
not inst31  (_net_15, SE);
not inst32  (_net_16, SR);
and inst33  (ENABLE_SD_AND_NOT_SE_AND_SI_AND_NOT_SR, _net_15, SD, SI, _net_16);
not inst34  (_net_17, SE);
not inst35  (_net_18, D);
not inst36  (_net_19, SI);
not inst37  (_net_20, SR);
and inst38  (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR, _net_17, _net_18, _net_19, _net_20);
not inst39  (_net_21, SE);
not inst40  (_net_22, D);
not inst41  (_net_23, SR);
and inst42  (ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_NOT_SR, _net_21, _net_22, SI, _net_23);
not inst43  (_net_24, D);
not inst44  (_net_25, SI);
not inst45  (_net_26, SR);
and inst46  (ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_NOT_SR, SE, _net_24, _net_25, _net_26);
not inst47  (_net_27, SI);
not inst48  (_net_28, SR);
and inst49  (ENABLE_D_AND_SE_AND_NOT_SI_AND_NOT_SR, SE, D, _net_27, _net_28);
not inst50  (_net_29, CK);
not inst51  (_net_30, SI);
not inst52  (_net_31, SR);
and inst53  (_net_32, SE, _net_29, _net_30, _net_31);
not inst54  (_net_33, D);
not inst55  (_net_34, CK);
not inst56  (_net_35, SE);
not inst57  (_net_36, SR);
and inst58  (_net_37, _net_33, _net_34, _net_35, _net_36);
or inst59  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_NOT_SR, _net_32, _net_37);
not inst60  (_net_38, CK);
not inst61  (_net_39, SR);
and inst62  (_net_40, SE, _net_38, SI, _net_39);
not inst63  (_net_41, CK);
not inst64  (_net_42, SE);
not inst65  (_net_43, SR);
and inst66  (_net_44, D, _net_41, _net_42, _net_43);
or inst67  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_SI_AND_NOT_SR, _net_40, _net_44);
not inst68  (_net_45, SR);
and inst69  (ENABLE_CK_AND_NOT_SR, _net_45, CK);
not inst70  (_net_46, D);
not inst71  (_net_47, SR);
and inst72  (ENABLE_NOT_D_AND_SD_AND_SI_AND_NOT_SR, SD, _net_46, SI, _net_47);
not inst73  (_net_48, SI);
not inst74  (_net_49, SR);
and inst75  (ENABLE_D_AND_SD_AND_NOT_SI_AND_NOT_SR, SD, D, _net_48, _net_49);
not inst76  (_net_50, D);
not inst77  (_net_51, SR);
and inst78  (ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SR, SD, _net_50, SE, _net_51);
not inst79  (_net_52, SR);
and inst80  (ENABLE_D_AND_SD_AND_SE_AND_NOT_SR, SD, D, SE, _net_52);
not inst81  (_net_53, D);
not inst82  (_net_54, SE);
not inst83  (_net_55, SI);
and inst84  (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, _net_53, _net_54, _net_55);
not inst85  (_net_56, D);
not inst86  (_net_57, SE);
and inst87  (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI, SD, _net_56, _net_57, SI);
not inst88  (_net_58, D);
not inst89  (_net_59, SI);
and inst90  (ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI, SD, _net_58, SE, _net_59);
not inst91  (_net_60, D);
and inst92  (ENABLE_NOT_D_AND_SD_AND_SE_AND_SI, SD, _net_60, SE, SI);
not inst93  (_net_61, SE);
not inst94  (_net_62, SI);
and inst95  (ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, D, _net_61, _net_62);
not inst96  (_net_63, SE);
and inst97  (ENABLE_D_AND_SD_AND_NOT_SE_AND_SI, SD, D, _net_63, SI);
not inst98  (_net_64, SI);
and inst99  (ENABLE_D_AND_SD_AND_SE_AND_NOT_SI, SD, D, SE, _net_64);
and inst100  (ENABLE_D_AND_SD_AND_SE_AND_SI, SD, D, SE, SI);
not inst101  (_net_65, D);
not inst102  (_net_66, SE);
not inst103  (_net_67, SI);
and inst104  (ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI, _net_65, CK, SD, _net_66, _net_67);
not inst105  (_net_68, D);
not inst106  (_net_69, SE);
and inst107  (ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_SI, _net_68, CK, SD, _net_69, SI);
not inst108  (_net_70, D);
not inst109  (_net_71, SI);
and inst110  (ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_NOT_SI, _net_70, CK, SD, SE, _net_71);
not inst111  (_net_72, D);
and inst112  (ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_SI, _net_72, CK, SD, SE, SI);
not inst113  (_net_73, SE);
not inst114  (_net_74, SI);
and inst115  (ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_NOT_SI, D, CK, SD, _net_73, _net_74);
not inst116  (_net_75, SE);
and inst117  (ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_SI, D, CK, SD, _net_75, SI);
not inst118  (_net_76, SI);
and inst119  (ENABLE_CK_AND_D_AND_SD_AND_SE_AND_NOT_SI, D, CK, SD, SE, _net_76);
and inst120  (ENABLE_CK_AND_D_AND_SD_AND_SE_AND_SI, D, CK, SD, SE, SI);

specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
(negedge SD => (Q : 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_D_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FSRDPSBQ_PV2NR_1

//%BEGIN UDPLVT32_FSRDPSBQ_PV2NR_2
`celldefine
module UDPLVT32_FSRDPSBQ_PV2NR_2 (Q, CK, D, SI, SE, SD, SR);
  input CK, D, SI, SE, SD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_8, int_9, int_11, int_12, iq, iq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_SD, SD);
    buf inst5  (delayed_SR, SR);
  `endif

  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_12, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst7  (viol_x, viol_0, int_9, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
    not inst8  (int_8, delayed_SD);
    not inst9  (int_9, delayed_CK);
    not inst10  (int_11, delayed_SR);
    and inst11  (int_12, delayed_CK, int_11);
    snps_latch_s insts0  (iq, viol_x, int_12, iq1, int_8);
    snps_latch_s insts1  (iq1, viol_x, int_9, mux_out, int_8);
    snps_mux2 inst12  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst13  (_net_0, SI);
not inst14  (_net_1, SR);
and inst15  (_net_2, SE, SD, _net_0, _net_1);
not inst16  (_net_3, D);
not inst17  (_net_4, SE);
not inst18  (_net_5, SR);
and inst19  (_net_6, SD, _net_3, _net_4, _net_5);
or inst20  (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_NOT_SI_AND_NOT_SR, _net_2, _net_6);
not inst21  (_net_7, SR);
and inst22  (_net_8, SE, SD, SI, _net_7);
not inst23  (_net_9, SE);
not inst24  (_net_10, SR);
and inst25  (_net_11, SD, D, _net_9, _net_10);
or inst26  (ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_SI_AND_NOT_SR, _net_8, _net_11);
not inst27  (_net_12, SE);
not inst28  (_net_13, SI);
not inst29  (_net_14, SR);
and inst30  (ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR, _net_12, SD, _net_13, _net_14);
not inst31  (_net_15, SE);
not inst32  (_net_16, SR);
and inst33  (ENABLE_SD_AND_NOT_SE_AND_SI_AND_NOT_SR, _net_15, SD, SI, _net_16);
not inst34  (_net_17, SE);
not inst35  (_net_18, D);
not inst36  (_net_19, SI);
not inst37  (_net_20, SR);
and inst38  (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR, _net_17, _net_18, _net_19, _net_20);
not inst39  (_net_21, SE);
not inst40  (_net_22, D);
not inst41  (_net_23, SR);
and inst42  (ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_NOT_SR, _net_21, _net_22, SI, _net_23);
not inst43  (_net_24, D);
not inst44  (_net_25, SI);
not inst45  (_net_26, SR);
and inst46  (ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_NOT_SR, SE, _net_24, _net_25, _net_26);
not inst47  (_net_27, SI);
not inst48  (_net_28, SR);
and inst49  (ENABLE_D_AND_SE_AND_NOT_SI_AND_NOT_SR, SE, D, _net_27, _net_28);
not inst50  (_net_29, CK);
not inst51  (_net_30, SI);
not inst52  (_net_31, SR);
and inst53  (_net_32, SE, _net_29, _net_30, _net_31);
not inst54  (_net_33, D);
not inst55  (_net_34, CK);
not inst56  (_net_35, SE);
not inst57  (_net_36, SR);
and inst58  (_net_37, _net_33, _net_34, _net_35, _net_36);
or inst59  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_NOT_SR, _net_32, _net_37);
not inst60  (_net_38, CK);
not inst61  (_net_39, SR);
and inst62  (_net_40, SE, _net_38, SI, _net_39);
not inst63  (_net_41, CK);
not inst64  (_net_42, SE);
not inst65  (_net_43, SR);
and inst66  (_net_44, D, _net_41, _net_42, _net_43);
or inst67  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_SI_AND_NOT_SR, _net_40, _net_44);
not inst68  (_net_45, SR);
and inst69  (ENABLE_CK_AND_NOT_SR, _net_45, CK);
not inst70  (_net_46, D);
not inst71  (_net_47, SR);
and inst72  (ENABLE_NOT_D_AND_SD_AND_SI_AND_NOT_SR, SD, _net_46, SI, _net_47);
not inst73  (_net_48, SI);
not inst74  (_net_49, SR);
and inst75  (ENABLE_D_AND_SD_AND_NOT_SI_AND_NOT_SR, SD, D, _net_48, _net_49);
not inst76  (_net_50, D);
not inst77  (_net_51, SR);
and inst78  (ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SR, SD, _net_50, SE, _net_51);
not inst79  (_net_52, SR);
and inst80  (ENABLE_D_AND_SD_AND_SE_AND_NOT_SR, SD, D, SE, _net_52);
not inst81  (_net_53, D);
not inst82  (_net_54, SE);
not inst83  (_net_55, SI);
and inst84  (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, _net_53, _net_54, _net_55);
not inst85  (_net_56, D);
not inst86  (_net_57, SE);
and inst87  (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI, SD, _net_56, _net_57, SI);
not inst88  (_net_58, D);
not inst89  (_net_59, SI);
and inst90  (ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI, SD, _net_58, SE, _net_59);
not inst91  (_net_60, D);
and inst92  (ENABLE_NOT_D_AND_SD_AND_SE_AND_SI, SD, _net_60, SE, SI);
not inst93  (_net_61, SE);
not inst94  (_net_62, SI);
and inst95  (ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, D, _net_61, _net_62);
not inst96  (_net_63, SE);
and inst97  (ENABLE_D_AND_SD_AND_NOT_SE_AND_SI, SD, D, _net_63, SI);
not inst98  (_net_64, SI);
and inst99  (ENABLE_D_AND_SD_AND_SE_AND_NOT_SI, SD, D, SE, _net_64);
and inst100  (ENABLE_D_AND_SD_AND_SE_AND_SI, SD, D, SE, SI);
not inst101  (_net_65, D);
not inst102  (_net_66, SE);
not inst103  (_net_67, SI);
and inst104  (ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI, _net_65, CK, SD, _net_66, _net_67);
not inst105  (_net_68, D);
not inst106  (_net_69, SE);
and inst107  (ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_SI, _net_68, CK, SD, _net_69, SI);
not inst108  (_net_70, D);
not inst109  (_net_71, SI);
and inst110  (ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_NOT_SI, _net_70, CK, SD, SE, _net_71);
not inst111  (_net_72, D);
and inst112  (ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_SI, _net_72, CK, SD, SE, SI);
not inst113  (_net_73, SE);
not inst114  (_net_74, SI);
and inst115  (ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_NOT_SI, D, CK, SD, _net_73, _net_74);
not inst116  (_net_75, SE);
and inst117  (ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_SI, D, CK, SD, _net_75, SI);
not inst118  (_net_76, SI);
and inst119  (ENABLE_CK_AND_D_AND_SD_AND_SE_AND_NOT_SI, D, CK, SD, SE, _net_76);
and inst120  (ENABLE_CK_AND_D_AND_SD_AND_SE_AND_SI, D, CK, SD, SE, SI);

specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
(negedge SD => (Q : 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_D_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FSRDPSBQ_PV2NR_2

//%BEGIN UDPLVT32_FSRDPSBQ_PV2NR_4
`celldefine
module UDPLVT32_FSRDPSBQ_PV2NR_4 (Q, CK, D, SI, SE, SD, SR);
  input CK, D, SI, SE, SD, SR;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_8, int_9, int_11, int_12, iq, iq1, mux_out;
  `ifdef _fv
    buf inst0  (delayed_CK, CK);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SI, SI);
    buf inst3  (delayed_SE, SE);
    buf inst4  (delayed_SD, SD);
    buf inst5  (delayed_SR, SR);
  `endif

  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst6  (viol_x, viol_0, int_12, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst7  (viol_x, viol_0, int_9, 1'b1, int_8);
 `else
    assign viol_x=1'bz;
  `endif
    not inst8  (int_8, delayed_SD);
    not inst9  (int_9, delayed_CK);
    not inst10  (int_11, delayed_SR);
    and inst11  (int_12, delayed_CK, int_11);
    snps_latch_s insts0  (iq, viol_x, int_12, iq1, int_8);
    snps_latch_s insts1  (iq1, viol_x, int_9, mux_out, int_8);
    snps_mux2 inst12  (mux_out, delayed_SI, delayed_D, delayed_SE);
  `ifdef VIRL_functiononly
    buf #`SNPS_SEQ_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst13  (_net_0, SI);
not inst14  (_net_1, SR);
and inst15  (_net_2, SE, SD, _net_0, _net_1);
not inst16  (_net_3, D);
not inst17  (_net_4, SE);
not inst18  (_net_5, SR);
and inst19  (_net_6, SD, _net_3, _net_4, _net_5);
or inst20  (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_NOT_SI_AND_NOT_SR, _net_2, _net_6);
not inst21  (_net_7, SR);
and inst22  (_net_8, SE, SD, SI, _net_7);
not inst23  (_net_9, SE);
not inst24  (_net_10, SR);
and inst25  (_net_11, SD, D, _net_9, _net_10);
or inst26  (ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_SI_AND_NOT_SR, _net_8, _net_11);
not inst27  (_net_12, SE);
not inst28  (_net_13, SI);
not inst29  (_net_14, SR);
and inst30  (ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR, _net_12, SD, _net_13, _net_14);
not inst31  (_net_15, SE);
not inst32  (_net_16, SR);
and inst33  (ENABLE_SD_AND_NOT_SE_AND_SI_AND_NOT_SR, _net_15, SD, SI, _net_16);
not inst34  (_net_17, SE);
not inst35  (_net_18, D);
not inst36  (_net_19, SI);
not inst37  (_net_20, SR);
and inst38  (ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR, _net_17, _net_18, _net_19, _net_20);
not inst39  (_net_21, SE);
not inst40  (_net_22, D);
not inst41  (_net_23, SR);
and inst42  (ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_NOT_SR, _net_21, _net_22, SI, _net_23);
not inst43  (_net_24, D);
not inst44  (_net_25, SI);
not inst45  (_net_26, SR);
and inst46  (ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_NOT_SR, SE, _net_24, _net_25, _net_26);
not inst47  (_net_27, SI);
not inst48  (_net_28, SR);
and inst49  (ENABLE_D_AND_SE_AND_NOT_SI_AND_NOT_SR, SE, D, _net_27, _net_28);
not inst50  (_net_29, CK);
not inst51  (_net_30, SI);
not inst52  (_net_31, SR);
and inst53  (_net_32, SE, _net_29, _net_30, _net_31);
not inst54  (_net_33, D);
not inst55  (_net_34, CK);
not inst56  (_net_35, SE);
not inst57  (_net_36, SR);
and inst58  (_net_37, _net_33, _net_34, _net_35, _net_36);
or inst59  (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_NOT_SR, _net_32, _net_37);
not inst60  (_net_38, CK);
not inst61  (_net_39, SR);
and inst62  (_net_40, SE, _net_38, SI, _net_39);
not inst63  (_net_41, CK);
not inst64  (_net_42, SE);
not inst65  (_net_43, SR);
and inst66  (_net_44, D, _net_41, _net_42, _net_43);
or inst67  (ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_SI_AND_NOT_SR, _net_40, _net_44);
not inst68  (_net_45, SR);
and inst69  (ENABLE_CK_AND_NOT_SR, _net_45, CK);
not inst70  (_net_46, D);
not inst71  (_net_47, SR);
and inst72  (ENABLE_NOT_D_AND_SD_AND_SI_AND_NOT_SR, SD, _net_46, SI, _net_47);
not inst73  (_net_48, SI);
not inst74  (_net_49, SR);
and inst75  (ENABLE_D_AND_SD_AND_NOT_SI_AND_NOT_SR, SD, D, _net_48, _net_49);
not inst76  (_net_50, D);
not inst77  (_net_51, SR);
and inst78  (ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SR, SD, _net_50, SE, _net_51);
not inst79  (_net_52, SR);
and inst80  (ENABLE_D_AND_SD_AND_SE_AND_NOT_SR, SD, D, SE, _net_52);
not inst81  (_net_53, D);
not inst82  (_net_54, SE);
not inst83  (_net_55, SI);
and inst84  (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, _net_53, _net_54, _net_55);
not inst85  (_net_56, D);
not inst86  (_net_57, SE);
and inst87  (ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI, SD, _net_56, _net_57, SI);
not inst88  (_net_58, D);
not inst89  (_net_59, SI);
and inst90  (ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI, SD, _net_58, SE, _net_59);
not inst91  (_net_60, D);
and inst92  (ENABLE_NOT_D_AND_SD_AND_SE_AND_SI, SD, _net_60, SE, SI);
not inst93  (_net_61, SE);
not inst94  (_net_62, SI);
and inst95  (ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI, SD, D, _net_61, _net_62);
not inst96  (_net_63, SE);
and inst97  (ENABLE_D_AND_SD_AND_NOT_SE_AND_SI, SD, D, _net_63, SI);
not inst98  (_net_64, SI);
and inst99  (ENABLE_D_AND_SD_AND_SE_AND_NOT_SI, SD, D, SE, _net_64);
and inst100  (ENABLE_D_AND_SD_AND_SE_AND_SI, SD, D, SE, SI);
not inst101  (_net_65, D);
not inst102  (_net_66, SE);
not inst103  (_net_67, SI);
and inst104  (ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI, _net_65, CK, SD, _net_66, _net_67);
not inst105  (_net_68, D);
not inst106  (_net_69, SE);
and inst107  (ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_SI, _net_68, CK, SD, _net_69, SI);
not inst108  (_net_70, D);
not inst109  (_net_71, SI);
and inst110  (ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_NOT_SI, _net_70, CK, SD, SE, _net_71);
not inst111  (_net_72, D);
and inst112  (ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_SI, _net_72, CK, SD, SE, SI);
not inst113  (_net_73, SE);
not inst114  (_net_74, SI);
and inst115  (ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_NOT_SI, D, CK, SD, _net_73, _net_74);
not inst116  (_net_75, SE);
and inst117  (ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_SI, D, CK, SD, _net_75, SI);
not inst118  (_net_76, SI);
and inst119  (ENABLE_CK_AND_D_AND_SD_AND_SE_AND_NOT_SI, D, CK, SD, SE, _net_76);
and inst120  (ENABLE_CK_AND_D_AND_SD_AND_SE_AND_SI, D, CK, SD, SE, SI);

specify
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
(negedge SD => (Q : 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b0 && SR==1'b0) (posedge CK => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b0 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b0 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
if (D==1'b1 && SD==1'b1 && SE==1'b1 && SI==1'b1 && SR==1'b0) (posedge CK => (Q +: 1'b1))=(0, 0);
(posedge CK => (Q : 1'b1))=(0, 0);
$width(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SR_OR_SD_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , posedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$setuphold(posedge CK &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , negedge D &&&  ENABLE_SD_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_D);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_NOT_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$recrem(posedge SD &&&  ENABLE_D_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge CK &&&  ENABLE_D_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_SD, delayed_CK);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_NOT_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_NOT_CK_AND_D_AND_NOT_SE_AND_NOT_SR_OR_NOT_CK_AND_SE_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_CK_AND_NOT_SR==1'b1 , 0 ,0, viol_0);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_NOT_D_AND_SD_AND_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_NOT_SR==1'b1 , posedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_NOT_SR==1'b1 , negedge SE &&&  ENABLE_D_AND_SD_AND_NOT_SI_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SE);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , posedge SI &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$setuphold(posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , negedge SI &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SR==1'b1 , 0 ,0, viol_0, , , delayed_CK, delayed_SI);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(negedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , negedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$recrem(posedge SR &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , posedge CK &&&  ENABLE_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0, , , delayed_SR, delayed_CK);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_NOT_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_NOT_SE_AND_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_SE_AND_NOT_SI==1'b1 , 0 ,0, viol_0);
$width(negedge SR &&&  ENABLE_CK_AND_D_AND_SD_AND_SE_AND_SI==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_FSRDPSBQ_PV2NR_4

//%BEGIN UDPLVT32_INV_PNR_0P8

`celldefine
module UDPLVT32_INV_PNR_0P8 (X, A);
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
//%END UDPLVT32_INV_PNR_0P8

//%BEGIN UDPLVT32_INV_PNR_1

`celldefine
module UDPLVT32_INV_PNR_1 (X, A);
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
//%END UDPLVT32_INV_PNR_1

//%BEGIN UDPLVT32_INV_PNR_16

`celldefine
module UDPLVT32_INV_PNR_16 (X, A);
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
//%END UDPLVT32_INV_PNR_16

//%BEGIN UDPLVT32_INV_PNR_2

`celldefine
module UDPLVT32_INV_PNR_2 (X, A);
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
//%END UDPLVT32_INV_PNR_2

//%BEGIN UDPLVT32_INV_PNR_3

`celldefine
module UDPLVT32_INV_PNR_3 (X, A);
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
//%END UDPLVT32_INV_PNR_3

//%BEGIN UDPLVT32_INV_PNR_4

`celldefine
module UDPLVT32_INV_PNR_4 (X, A);
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
//%END UDPLVT32_INV_PNR_4

//%BEGIN UDPLVT32_INV_PNR_6

`celldefine
module UDPLVT32_INV_PNR_6 (X, A);
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
//%END UDPLVT32_INV_PNR_6

//%BEGIN UDPLVT32_INV_PNR_8

`celldefine
module UDPLVT32_INV_PNR_8 (X, A);
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
//%END UDPLVT32_INV_PNR_8

//%BEGIN UDPLVT32_INV_PSNR_1

`celldefine
module UDPLVT32_INV_PSNR_1 (X, A);
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
//%END UDPLVT32_INV_PSNR_1

//%BEGIN UDPLVT32_INV_PSNR_12

`celldefine
module UDPLVT32_INV_PSNR_12 (X, A);
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
//%END UDPLVT32_INV_PSNR_12

//%BEGIN UDPLVT32_INV_PSNR_16

`celldefine
module UDPLVT32_INV_PSNR_16 (X, A);
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
//%END UDPLVT32_INV_PSNR_16

//%BEGIN UDPLVT32_INV_PSNR_1P5

`celldefine
module UDPLVT32_INV_PSNR_1P5 (X, A);
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
//%END UDPLVT32_INV_PSNR_1P5

//%BEGIN UDPLVT32_INV_PSNR_2

`celldefine
module UDPLVT32_INV_PSNR_2 (X, A);
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
//%END UDPLVT32_INV_PSNR_2

//%BEGIN UDPLVT32_INV_PSNR_3

`celldefine
module UDPLVT32_INV_PSNR_3 (X, A);
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
//%END UDPLVT32_INV_PSNR_3

//%BEGIN UDPLVT32_INV_PSNR_4

`celldefine
module UDPLVT32_INV_PSNR_4 (X, A);
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
//%END UDPLVT32_INV_PSNR_4

//%BEGIN UDPLVT32_INV_PSNR_5

`celldefine
module UDPLVT32_INV_PSNR_5 (X, A);
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
//%END UDPLVT32_INV_PSNR_5

//%BEGIN UDPLVT32_INV_PSNR_6

`celldefine
module UDPLVT32_INV_PSNR_6 (X, A);
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
//%END UDPLVT32_INV_PSNR_6

//%BEGIN UDPLVT32_INV_PSNR_8

`celldefine
module UDPLVT32_INV_PSNR_8 (X, A);
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
//%END UDPLVT32_INV_PSNR_8

//%BEGIN UDPLVT32_ISOLDNRQS0_PNRV1_1
`celldefine
module UDPLVT32_ISOLDNRQS0_PNRV1_1 (Q, ISO, D, RD);
  input ISO, D, RD;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_2, int_3, int_4, iq;
  `ifdef _fv
    buf inst0  (delayed_ISO, ISO);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_RD, RD);
  `endif


  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst3  (viol_x, viol_0, int_4, 1'b1, delayed_RD);
 `else
    assign viol_x=1'bz;
  `endif
    not inst4  (int_2, delayed_RD);
    not inst5  (int_3, delayed_ISO);
    and inst6  (int_4, int_3, int_2);
    snps_latch_r insts0  (iq, viol_x, int_4, delayed_D, delayed_RD);
  `ifdef VIRL_functiononly
    buf #`SNPS_LAT_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst7  (ENABLE_NOT_RD, RD);
not inst8  (_net_0, RD);
not inst9  (_net_1, D);
and inst10  (ENABLE_NOT_D_AND_NOT_RD, _net_0, _net_1);
not inst11  (_net_2, RD);
and inst12  (ENABLE_D_AND_NOT_RD, _net_2, D);
not inst13  (_net_3, D);
and inst14  (ENABLE_NOT_D_AND_ISO, ISO, _net_3);
and inst15  (ENABLE_D_AND_ISO, ISO, D);

specify
if (ISO==1'b0 && RD==1'b0) (D +=> Q)=(0, 0);
if (D==1'b1 && RD==1'b0) (negedge ISO => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b0) (negedge ISO => (Q +: 1'b1))=(0, 0);
if (D==1'b0 && ISO==1'b1) (posedge RD => (Q -: 1'b0))=(0, 0);
if (D==1'b1 && ISO==1'b0) (posedge RD => (Q -: 1'b0))=(0, 0);
if (D==1'b1 && ISO==1'b1) (posedge RD => (Q -: 1'b0))=(0, 0);
if (D==1'b1 && ISO==1'b0) (negedge RD => (Q -: 1'b1))=(0, 0);
$setuphold(posedge ISO &&&  ENABLE_NOT_RD==1'b1 , posedge D &&&  ENABLE_NOT_RD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$setuphold(posedge ISO &&&  ENABLE_NOT_RD==1'b1 , negedge D &&&  ENABLE_NOT_RD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$width(negedge ISO &&&  ENABLE_NOT_D_AND_NOT_RD==1'b1 , 0 ,0, viol_0);
$width(negedge ISO &&&  ENABLE_D_AND_NOT_RD==1'b1 , 0 ,0, viol_0);
$recrem(negedge RD , posedge ISO , 0 ,0, viol_0, , , delayed_RD, delayed_ISO);
$width(posedge RD &&&  ENABLE_NOT_D_AND_ISO==1'b1 , 0 ,0, viol_0);
$width(posedge RD &&&  ENABLE_D_AND_ISO==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_ISOLDNRQS0_PNRV1_1

//%BEGIN UDPLVT32_ISOLDNRQS0_PNRV1_2
`celldefine
module UDPLVT32_ISOLDNRQS0_PNRV1_2 (Q, ISO, D, RD);
  input ISO, D, RD;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_2, int_3, int_4, iq;
  `ifdef _fv
    buf inst0  (delayed_ISO, ISO);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_RD, RD);
  `endif


  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst3  (viol_x, viol_0, int_4, 1'b1, delayed_RD);
 `else
    assign viol_x=1'bz;
  `endif
    not inst4  (int_2, delayed_RD);
    not inst5  (int_3, delayed_ISO);
    and inst6  (int_4, int_3, int_2);
    snps_latch_r insts0  (iq, viol_x, int_4, delayed_D, delayed_RD);
  `ifdef VIRL_functiononly
    buf #`SNPS_LAT_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst7  (ENABLE_NOT_RD, RD);
not inst8  (_net_0, RD);
not inst9  (_net_1, D);
and inst10  (ENABLE_NOT_D_AND_NOT_RD, _net_0, _net_1);
not inst11  (_net_2, RD);
and inst12  (ENABLE_D_AND_NOT_RD, _net_2, D);
not inst13  (_net_3, D);
and inst14  (ENABLE_NOT_D_AND_ISO, ISO, _net_3);
and inst15  (ENABLE_D_AND_ISO, ISO, D);

specify
if (ISO==1'b0 && RD==1'b0) (D +=> Q)=(0, 0);
if (D==1'b1 && RD==1'b0) (negedge ISO => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b0) (negedge ISO => (Q +: 1'b1))=(0, 0);
if (D==1'b0 && ISO==1'b1) (posedge RD => (Q -: 1'b0))=(0, 0);
if (D==1'b1 && ISO==1'b0) (posedge RD => (Q -: 1'b0))=(0, 0);
if (D==1'b1 && ISO==1'b1) (posedge RD => (Q -: 1'b0))=(0, 0);
if (D==1'b1 && ISO==1'b0) (negedge RD => (Q -: 1'b1))=(0, 0);
$setuphold(posedge ISO &&&  ENABLE_NOT_RD==1'b1 , posedge D &&&  ENABLE_NOT_RD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$setuphold(posedge ISO &&&  ENABLE_NOT_RD==1'b1 , negedge D &&&  ENABLE_NOT_RD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$width(negedge ISO &&&  ENABLE_NOT_D_AND_NOT_RD==1'b1 , 0 ,0, viol_0);
$width(negedge ISO &&&  ENABLE_D_AND_NOT_RD==1'b1 , 0 ,0, viol_0);
$recrem(negedge RD , posedge ISO , 0 ,0, viol_0, , , delayed_RD, delayed_ISO);
$width(posedge RD &&&  ENABLE_NOT_D_AND_ISO==1'b1 , 0 ,0, viol_0);
$width(posedge RD &&&  ENABLE_D_AND_ISO==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_ISOLDNRQS0_PNRV1_2

//%BEGIN UDPLVT32_ISOLDNRQS0_PNRV1_4
`celldefine
module UDPLVT32_ISOLDNRQS0_PNRV1_4 (Q, ISO, D, RD);
  input ISO, D, RD;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_2, int_3, int_4, iq;
  `ifdef _fv
    buf inst0  (delayed_ISO, ISO);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_RD, RD);
  `endif


  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst3  (viol_x, viol_0, int_4, 1'b1, delayed_RD);
 `else
    assign viol_x=1'bz;
  `endif
    not inst4  (int_2, delayed_RD);
    not inst5  (int_3, delayed_ISO);
    and inst6  (int_4, int_3, int_2);
    snps_latch_r insts0  (iq, viol_x, int_4, delayed_D, delayed_RD);
  `ifdef VIRL_functiononly
    buf #`SNPS_LAT_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst7  (ENABLE_NOT_RD, RD);
not inst8  (_net_0, RD);
not inst9  (_net_1, D);
and inst10  (ENABLE_NOT_D_AND_NOT_RD, _net_0, _net_1);
not inst11  (_net_2, RD);
and inst12  (ENABLE_D_AND_NOT_RD, _net_2, D);
not inst13  (_net_3, D);
and inst14  (ENABLE_NOT_D_AND_ISO, ISO, _net_3);
and inst15  (ENABLE_D_AND_ISO, ISO, D);

specify
if (ISO==1'b0 && RD==1'b0) (D +=> Q)=(0, 0);
if (D==1'b1 && RD==1'b0) (negedge ISO => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b0) (negedge ISO => (Q +: 1'b1))=(0, 0);
if (D==1'b0 && ISO==1'b1) (posedge RD => (Q -: 1'b0))=(0, 0);
if (D==1'b1 && ISO==1'b0) (posedge RD => (Q -: 1'b0))=(0, 0);
if (D==1'b1 && ISO==1'b1) (posedge RD => (Q -: 1'b0))=(0, 0);
if (D==1'b1 && ISO==1'b0) (negedge RD => (Q -: 1'b1))=(0, 0);
$setuphold(posedge ISO &&&  ENABLE_NOT_RD==1'b1 , posedge D &&&  ENABLE_NOT_RD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$setuphold(posedge ISO &&&  ENABLE_NOT_RD==1'b1 , negedge D &&&  ENABLE_NOT_RD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$width(negedge ISO &&&  ENABLE_NOT_D_AND_NOT_RD==1'b1 , 0 ,0, viol_0);
$width(negedge ISO &&&  ENABLE_D_AND_NOT_RD==1'b1 , 0 ,0, viol_0);
$recrem(negedge RD , posedge ISO , 0 ,0, viol_0, , , delayed_RD, delayed_ISO);
$width(posedge RD &&&  ENABLE_NOT_D_AND_ISO==1'b1 , 0 ,0, viol_0);
$width(posedge RD &&&  ENABLE_D_AND_ISO==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_ISOLDNRQS0_PNRV1_4

//%BEGIN UDPLVT32_ISOLDNRQS0_PNRV1_8
`celldefine
module UDPLVT32_ISOLDNRQS0_PNRV1_8 (Q, ISO, D, RD);
  input ISO, D, RD;
  output Q;
  reg viol_0;
    wire viol_x;
  wire int_2, int_3, int_4, iq;
  `ifdef _fv
    buf inst0  (delayed_ISO, ISO);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_RD, RD);
  `endif


  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst3  (viol_x, viol_0, int_4, 1'b1, delayed_RD);
 `else
    assign viol_x=1'bz;
  `endif
    not inst4  (int_2, delayed_RD);
    not inst5  (int_3, delayed_ISO);
    and inst6  (int_4, int_3, int_2);
    snps_latch_r insts0  (iq, viol_x, int_4, delayed_D, delayed_RD);
  `ifdef VIRL_functiononly
    buf #`SNPS_LAT_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
not inst7  (ENABLE_NOT_RD, RD);
not inst8  (_net_0, RD);
not inst9  (_net_1, D);
and inst10  (ENABLE_NOT_D_AND_NOT_RD, _net_0, _net_1);
not inst11  (_net_2, RD);
and inst12  (ENABLE_D_AND_NOT_RD, _net_2, D);
not inst13  (_net_3, D);
and inst14  (ENABLE_NOT_D_AND_ISO, ISO, _net_3);
and inst15  (ENABLE_D_AND_ISO, ISO, D);

specify
if (ISO==1'b0 && RD==1'b0) (D +=> Q)=(0, 0);
if (D==1'b1 && RD==1'b0) (negedge ISO => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && RD==1'b0) (negedge ISO => (Q +: 1'b1))=(0, 0);
if (D==1'b0 && ISO==1'b1) (posedge RD => (Q -: 1'b0))=(0, 0);
if (D==1'b1 && ISO==1'b0) (posedge RD => (Q -: 1'b0))=(0, 0);
if (D==1'b1 && ISO==1'b1) (posedge RD => (Q -: 1'b0))=(0, 0);
if (D==1'b1 && ISO==1'b0) (negedge RD => (Q -: 1'b1))=(0, 0);
$setuphold(posedge ISO &&&  ENABLE_NOT_RD==1'b1 , posedge D &&&  ENABLE_NOT_RD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$setuphold(posedge ISO &&&  ENABLE_NOT_RD==1'b1 , negedge D &&&  ENABLE_NOT_RD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$width(negedge ISO &&&  ENABLE_NOT_D_AND_NOT_RD==1'b1 , 0 ,0, viol_0);
$width(negedge ISO &&&  ENABLE_D_AND_NOT_RD==1'b1 , 0 ,0, viol_0);
$recrem(negedge RD , posedge ISO , 0 ,0, viol_0, , , delayed_RD, delayed_ISO);
$width(posedge RD &&&  ENABLE_NOT_D_AND_ISO==1'b1 , 0 ,0, viol_0);
$width(posedge RD &&&  ENABLE_D_AND_ISO==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_ISOLDNRQS0_PNRV1_8

//%BEGIN UDPLVT32_ISOLDNSBQS0_PNR_1
`celldefine
module UDPLVT32_ISOLDNSBQS0_PNR_1 (Q, ISO, D, SD);
  input ISO, D, SD;
  output Q;
  reg viol_0;
  wire viol_x, int_4, int_5, iq;
  `ifdef _fv
    buf inst0  (delayed_ISO, ISO);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SD, SD);
  `endif


  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst3  (viol_x, viol_0, int_4, 1'b1, int_5);
 `else
    assign viol_x=1'bz;
  `endif
    not inst4  (int_4, delayed_ISO);
    not inst5  (int_5, delayed_SD);
    snps_latch_s insts0  (iq, viol_x, int_4, delayed_D, int_5);
  `ifdef VIRL_functiononly
    buf #`SNPS_LAT_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
buf inst6  (ENABLE_SD, SD);
not inst7  (_net_0, D);
and inst8  (ENABLE_NOT_D_AND_SD, SD, _net_0);
and inst9  (ENABLE_D_AND_SD, SD, D);
not inst10  (_net_1, D);
and inst11  (ENABLE_NOT_D_AND_ISO, ISO, _net_1);
and inst12  (ENABLE_D_AND_ISO, ISO, D);

specify
if (ISO==1'b0 && SD==1'b1) (D +=> Q)=(0, 0);
if (D==1'b1 && SD==1'b1) (negedge ISO => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1) (negedge ISO => (Q +: 1'b1))=(0, 0);
if (D==1'b0 && ISO==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && ISO==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && ISO==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
$setuphold(posedge ISO &&&  ENABLE_SD==1'b1 , posedge D &&&  ENABLE_SD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$setuphold(posedge ISO &&&  ENABLE_SD==1'b1 , negedge D &&&  ENABLE_SD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$width(negedge ISO &&&  ENABLE_NOT_D_AND_SD==1'b1 , 0 ,0, viol_0);
$width(negedge ISO &&&  ENABLE_D_AND_SD==1'b1 , 0 ,0, viol_0);
$recrem(posedge SD , posedge ISO , 0 ,0, viol_0, , , delayed_SD, delayed_ISO);
$width(negedge SD &&&  ENABLE_NOT_D_AND_ISO==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_D_AND_ISO==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_ISOLDNSBQS0_PNR_1

//%BEGIN UDPLVT32_ISOLDNSBQS0_PNR_2
`celldefine
module UDPLVT32_ISOLDNSBQS0_PNR_2 (Q, ISO, D, SD);
  input ISO, D, SD;
  output Q;
  reg viol_0;
  wire viol_x, int_4, int_5, iq;
  `ifdef _fv
    buf inst0  (delayed_ISO, ISO);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SD, SD);
  `endif


  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst3  (viol_x, viol_0, int_4, 1'b1, int_5);
 `else
    assign viol_x=1'bz;
  `endif
    not inst4  (int_4, delayed_ISO);
    not inst5  (int_5, delayed_SD);
    snps_latch_s insts0  (iq, viol_x, int_4, delayed_D, int_5);
  `ifdef VIRL_functiononly
    buf #`SNPS_LAT_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
buf inst6  (ENABLE_SD, SD);
not inst7  (_net_0, D);
and inst8  (ENABLE_NOT_D_AND_SD, SD, _net_0);
and inst9  (ENABLE_D_AND_SD, SD, D);
not inst10  (_net_1, D);
and inst11  (ENABLE_NOT_D_AND_ISO, ISO, _net_1);
and inst12  (ENABLE_D_AND_ISO, ISO, D);

specify
if (ISO==1'b0 && SD==1'b1) (D +=> Q)=(0, 0);
if (D==1'b1 && SD==1'b1) (negedge ISO => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1) (negedge ISO => (Q +: 1'b1))=(0, 0);
if (D==1'b0 && ISO==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && ISO==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && ISO==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
$setuphold(posedge ISO &&&  ENABLE_SD==1'b1 , posedge D &&&  ENABLE_SD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$setuphold(posedge ISO &&&  ENABLE_SD==1'b1 , negedge D &&&  ENABLE_SD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$width(negedge ISO &&&  ENABLE_NOT_D_AND_SD==1'b1 , 0 ,0, viol_0);
$width(negedge ISO &&&  ENABLE_D_AND_SD==1'b1 , 0 ,0, viol_0);
$recrem(posedge SD , posedge ISO , 0 ,0, viol_0, , , delayed_SD, delayed_ISO);
$width(negedge SD &&&  ENABLE_NOT_D_AND_ISO==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_D_AND_ISO==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_ISOLDNSBQS0_PNR_2

//%BEGIN UDPLVT32_ISOLDNSBQS0_PNR_4
`celldefine
module UDPLVT32_ISOLDNSBQS0_PNR_4 (Q, ISO, D, SD);
  input ISO, D, SD;
  output Q;
  reg viol_0;
  wire viol_x, int_4, int_5, iq;
  `ifdef _fv
    buf inst0  (delayed_ISO, ISO);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SD, SD);
  `endif


  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst3  (viol_x, viol_0, int_4, 1'b1, int_5);
 `else
    assign viol_x=1'bz;
  `endif
    not inst4  (int_4, delayed_ISO);
    not inst5  (int_5, delayed_SD);
    snps_latch_s insts0  (iq, viol_x, int_4, delayed_D, int_5);
  `ifdef VIRL_functiononly
    buf #`SNPS_LAT_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
buf inst6  (ENABLE_SD, SD);
not inst7  (_net_0, D);
and inst8  (ENABLE_NOT_D_AND_SD, SD, _net_0);
and inst9  (ENABLE_D_AND_SD, SD, D);
not inst10  (_net_1, D);
and inst11  (ENABLE_NOT_D_AND_ISO, ISO, _net_1);
and inst12  (ENABLE_D_AND_ISO, ISO, D);

specify
if (ISO==1'b0 && SD==1'b1) (D +=> Q)=(0, 0);
if (D==1'b1 && SD==1'b1) (negedge ISO => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1) (negedge ISO => (Q +: 1'b1))=(0, 0);
if (D==1'b0 && ISO==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && ISO==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && ISO==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
$setuphold(posedge ISO &&&  ENABLE_SD==1'b1 , posedge D &&&  ENABLE_SD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$setuphold(posedge ISO &&&  ENABLE_SD==1'b1 , negedge D &&&  ENABLE_SD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$width(negedge ISO &&&  ENABLE_NOT_D_AND_SD==1'b1 , 0 ,0, viol_0);
$width(negedge ISO &&&  ENABLE_D_AND_SD==1'b1 , 0 ,0, viol_0);
$recrem(posedge SD , posedge ISO , 0 ,0, viol_0, , , delayed_SD, delayed_ISO);
$width(negedge SD &&&  ENABLE_NOT_D_AND_ISO==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_D_AND_ISO==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_ISOLDNSBQS0_PNR_4

//%BEGIN UDPLVT32_ISOLDNSBQS0_PNR_8
`celldefine
module UDPLVT32_ISOLDNSBQS0_PNR_8 (Q, ISO, D, SD);
  input ISO, D, SD;
  output Q;
  reg viol_0;
  wire viol_x, int_4, int_5, iq;
  `ifdef _fv
    buf inst0  (delayed_ISO, ISO);
    buf inst1  (delayed_D, D);
    buf inst2  (delayed_SD, SD);
  `endif


  `ifndef SNPS_MASK_X_OUT_LATCH
    snps_x_out_latch inst3  (viol_x, viol_0, int_4, 1'b1, int_5);
 `else
    assign viol_x=1'bz;
  `endif
    not inst4  (int_4, delayed_ISO);
    not inst5  (int_5, delayed_SD);
    snps_latch_s insts0  (iq, viol_x, int_4, delayed_D, int_5);
  `ifdef VIRL_functiononly
    buf #`SNPS_LAT_DELAY  instt0 (Q, iq);
  `else
    buf instt0  (Q, iq);
  `endif
  `ifdef VIRL_functiononly
  `else
buf inst6  (ENABLE_SD, SD);
not inst7  (_net_0, D);
and inst8  (ENABLE_NOT_D_AND_SD, SD, _net_0);
and inst9  (ENABLE_D_AND_SD, SD, D);
not inst10  (_net_1, D);
and inst11  (ENABLE_NOT_D_AND_ISO, ISO, _net_1);
and inst12  (ENABLE_D_AND_ISO, ISO, D);

specify
if (ISO==1'b0 && SD==1'b1) (D +=> Q)=(0, 0);
if (D==1'b1 && SD==1'b1) (negedge ISO => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && SD==1'b1) (negedge ISO => (Q +: 1'b1))=(0, 0);
if (D==1'b0 && ISO==1'b0) (negedge SD => (Q -: 1'b1))=(0, 0);
if (D==1'b0 && ISO==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
if (D==1'b1 && ISO==1'b1) (negedge SD => (Q -: 1'b1))=(0, 0);
$setuphold(posedge ISO &&&  ENABLE_SD==1'b1 , posedge D &&&  ENABLE_SD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$setuphold(posedge ISO &&&  ENABLE_SD==1'b1 , negedge D &&&  ENABLE_SD==1'b1 , 0 ,0, viol_0, , , delayed_ISO, delayed_D);
$width(negedge ISO &&&  ENABLE_NOT_D_AND_SD==1'b1 , 0 ,0, viol_0);
$width(negedge ISO &&&  ENABLE_D_AND_SD==1'b1 , 0 ,0, viol_0);
$recrem(posedge SD , posedge ISO , 0 ,0, viol_0, , , delayed_SD, delayed_ISO);
$width(negedge SD &&&  ENABLE_NOT_D_AND_ISO==1'b1 , 0 ,0, viol_0);
$width(negedge SD &&&  ENABLE_D_AND_ISO==1'b1 , 0 ,0, viol_0);
endspecify
  `endif
endmodule
`endcelldefine
//%END UDPLVT32_ISOLDNSBQS0_PNR_8

//%BEGIN UDPLVT32_ISOS0CL1_1

`celldefine
module UDPLVT32_ISOS0CL1_1 (X, A, EN0);
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

//%END UDPLVT32_ISOS0CL1_1

//%BEGIN UDPLVT32_ISOS0CL1_2

`celldefine
module UDPLVT32_ISOS0CL1_2 (X, A, EN0);
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

//%END UDPLVT32_ISOS0CL1_2

//%BEGIN UDPLVT32_ISOS0CL1_4

`celldefine
module UDPLVT32_ISOS0CL1_4 (X, A, EN0);
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

//%END UDPLVT32_ISOS0CL1_4

//%BEGIN UDPLVT32_ISOS0CL1_8

`celldefine
module UDPLVT32_ISOS0CL1_8 (X, A, EN0);
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

//%END UDPLVT32_ISOS0CL1_8

//%BEGIN UDPLVT32_ISOS0CL1_PNR_1

`celldefine
module UDPLVT32_ISOS0CL1_PNR_1 (X, A, EN0);
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

//%END UDPLVT32_ISOS0CL1_PNR_1

//%BEGIN UDPLVT32_ISOS0CL1_PNR_2

`celldefine
module UDPLVT32_ISOS0CL1_PNR_2 (X, A, EN0);
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

//%END UDPLVT32_ISOS0CL1_PNR_2

//%BEGIN UDPLVT32_ISOS0CL1_PNR_4

`celldefine
module UDPLVT32_ISOS0CL1_PNR_4 (X, A, EN0);
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

//%END UDPLVT32_ISOS0CL1_PNR_4

//%BEGIN UDPLVT32_ISOS0CL1_PNR_8

`celldefine
module UDPLVT32_ISOS0CL1_PNR_8 (X, A, EN0);
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

//%END UDPLVT32_ISOS0CL1_PNR_8

//%BEGIN UDPLVT32_ISOS1CL0_1

`celldefine
module UDPLVT32_ISOS1CL0_1 (X, A, EN);
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

//%END UDPLVT32_ISOS1CL0_1

//%BEGIN UDPLVT32_ISOS1CL0_2

`celldefine
module UDPLVT32_ISOS1CL0_2 (X, A, EN);
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

//%END UDPLVT32_ISOS1CL0_2

//%BEGIN UDPLVT32_ISOS1CL0_4

`celldefine
module UDPLVT32_ISOS1CL0_4 (X, A, EN);
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

//%END UDPLVT32_ISOS1CL0_4

//%BEGIN UDPLVT32_ISOS1CL0_8

`celldefine
module UDPLVT32_ISOS1CL0_8 (X, A, EN);
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

//%END UDPLVT32_ISOS1CL0_8

//%BEGIN UDPLVT32_ISOS1CL0_PNR_1

`celldefine
module UDPLVT32_ISOS1CL0_PNR_1 (X, A, EN);
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

//%END UDPLVT32_ISOS1CL0_PNR_1

//%BEGIN UDPLVT32_ISOS1CL0_PNR_2

`celldefine
module UDPLVT32_ISOS1CL0_PNR_2 (X, A, EN);
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

//%END UDPLVT32_ISOS1CL0_PNR_2

//%BEGIN UDPLVT32_ISOS1CL0_PNR_4

`celldefine
module UDPLVT32_ISOS1CL0_PNR_4 (X, A, EN);
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

//%END UDPLVT32_ISOS1CL0_PNR_4

//%BEGIN UDPLVT32_ISOS1CL0_PNR_8

`celldefine
module UDPLVT32_ISOS1CL0_PNR_8 (X, A, EN);
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

//%END UDPLVT32_ISOS1CL0_PNR_8

//%BEGIN UDPLVT32_LVLDBUFE0M2_V10V1_2
`celldefine
module UDPLVT32_LVLDBUFE0M2_V10V1_2 (X0, X1, A0, A1, EN);
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
//%END UDPLVT32_LVLDBUFE0M2_V10V1_2

//%BEGIN UDPLVT32_LVLDBUFE0M2_V10V1_4
`celldefine
module UDPLVT32_LVLDBUFE0M2_V10V1_4 (X0, X1, A0, A1, EN);
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
//%END UDPLVT32_LVLDBUFE0M2_V10V1_4

//%BEGIN UDPLVT32_LVLDBUFE0M2_V10V1_8
`celldefine
module UDPLVT32_LVLDBUFE0M2_V10V1_8 (X0, X1, A0, A1, EN);
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
//%END UDPLVT32_LVLDBUFE0M2_V10V1_8

//%BEGIN UDPLVT32_LVLDBUFE0M4_V10V1_2
`celldefine
module UDPLVT32_LVLDBUFE0M4_V10V1_2 (X0, X1, X2, X3, A0, A1, A2, A3, EN);
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
//%END UDPLVT32_LVLDBUFE0M4_V10V1_2

//%BEGIN UDPLVT32_LVLDBUFE0M4_V10V1_4
`celldefine
module UDPLVT32_LVLDBUFE0M4_V10V1_4 (X0, X1, X2, X3, A0, A1, A2, A3, EN);
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
//%END UDPLVT32_LVLDBUFE0M4_V10V1_4

//%BEGIN UDPLVT32_LVLDBUFE0M4_V10V1_8
`celldefine
module UDPLVT32_LVLDBUFE0M4_V10V1_8 (X0, X1, X2, X3, A0, A1, A2, A3, EN);
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
//%END UDPLVT32_LVLDBUFE0M4_V10V1_8

//%BEGIN UDPLVT32_LVLDBUFE0_DPNR_1

`celldefine
module UDPLVT32_LVLDBUFE0_DPNR_1 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_DPNR_1

//%BEGIN UDPLVT32_LVLDBUFE0_DPNR_2

`celldefine
module UDPLVT32_LVLDBUFE0_DPNR_2 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_DPNR_2

//%BEGIN UDPLVT32_LVLDBUFE0_DPNR_4

`celldefine
module UDPLVT32_LVLDBUFE0_DPNR_4 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_DPNR_4

//%BEGIN UDPLVT32_LVLDBUFE0_DPNR_8

`celldefine
module UDPLVT32_LVLDBUFE0_DPNR_8 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_DPNR_8

//%BEGIN UDPLVT32_LVLDBUFE0_D_1

`celldefine
module UDPLVT32_LVLDBUFE0_D_1 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_D_1

//%BEGIN UDPLVT32_LVLDBUFE0_D_2

`celldefine
module UDPLVT32_LVLDBUFE0_D_2 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_D_2

//%BEGIN UDPLVT32_LVLDBUFE0_D_4

`celldefine
module UDPLVT32_LVLDBUFE0_D_4 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_D_4

//%BEGIN UDPLVT32_LVLDBUFE0_D_8

`celldefine
module UDPLVT32_LVLDBUFE0_D_8 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_D_8

//%BEGIN UDPLVT32_LVLDBUFE0_OV10V1_1

`celldefine
module UDPLVT32_LVLDBUFE0_OV10V1_1 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_OV10V1_1

//%BEGIN UDPLVT32_LVLDBUFE0_OV10V1_12

`celldefine
module UDPLVT32_LVLDBUFE0_OV10V1_12 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_OV10V1_12

//%BEGIN UDPLVT32_LVLDBUFE0_OV10V1_16

`celldefine
module UDPLVT32_LVLDBUFE0_OV10V1_16 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_OV10V1_16

//%BEGIN UDPLVT32_LVLDBUFE0_OV10V1_2

`celldefine
module UDPLVT32_LVLDBUFE0_OV10V1_2 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_OV10V1_2

//%BEGIN UDPLVT32_LVLDBUFE0_OV10V1_4

`celldefine
module UDPLVT32_LVLDBUFE0_OV10V1_4 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_OV10V1_4

//%BEGIN UDPLVT32_LVLDBUFE0_OV10V1_8

`celldefine
module UDPLVT32_LVLDBUFE0_OV10V1_8 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_OV10V1_8

//%BEGIN UDPLVT32_LVLDBUFE0_PNRV10V1_1

`celldefine
module UDPLVT32_LVLDBUFE0_PNRV10V1_1 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_PNRV10V1_1

//%BEGIN UDPLVT32_LVLDBUFE0_PNRV10V1_12

`celldefine
module UDPLVT32_LVLDBUFE0_PNRV10V1_12 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_PNRV10V1_12

//%BEGIN UDPLVT32_LVLDBUFE0_PNRV10V1_16

`celldefine
module UDPLVT32_LVLDBUFE0_PNRV10V1_16 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_PNRV10V1_16

//%BEGIN UDPLVT32_LVLDBUFE0_PNRV10V1_2

`celldefine
module UDPLVT32_LVLDBUFE0_PNRV10V1_2 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_PNRV10V1_2

//%BEGIN UDPLVT32_LVLDBUFE0_PNRV10V1_4

`celldefine
module UDPLVT32_LVLDBUFE0_PNRV10V1_4 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_PNRV10V1_4

//%BEGIN UDPLVT32_LVLDBUFE0_PNRV10V1_8

`celldefine
module UDPLVT32_LVLDBUFE0_PNRV10V1_8 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_PNRV10V1_8

//%BEGIN UDPLVT32_LVLDBUFE0_PONRV10V1_1

`celldefine
module UDPLVT32_LVLDBUFE0_PONRV10V1_1 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_PONRV10V1_1

//%BEGIN UDPLVT32_LVLDBUFE0_PONRV10V1_12

`celldefine
module UDPLVT32_LVLDBUFE0_PONRV10V1_12 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_PONRV10V1_12

//%BEGIN UDPLVT32_LVLDBUFE0_PONRV10V1_16

`celldefine
module UDPLVT32_LVLDBUFE0_PONRV10V1_16 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_PONRV10V1_16

//%BEGIN UDPLVT32_LVLDBUFE0_PONRV10V1_2

`celldefine
module UDPLVT32_LVLDBUFE0_PONRV10V1_2 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_PONRV10V1_2

//%BEGIN UDPLVT32_LVLDBUFE0_PONRV10V1_4

`celldefine
module UDPLVT32_LVLDBUFE0_PONRV10V1_4 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_PONRV10V1_4

//%BEGIN UDPLVT32_LVLDBUFE0_PONRV10V1_8

`celldefine
module UDPLVT32_LVLDBUFE0_PONRV10V1_8 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_PONRV10V1_8

//%BEGIN UDPLVT32_LVLDBUFE0_V10V1_1

`celldefine
module UDPLVT32_LVLDBUFE0_V10V1_1 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_V10V1_1

//%BEGIN UDPLVT32_LVLDBUFE0_V10V1_12

`celldefine
module UDPLVT32_LVLDBUFE0_V10V1_12 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_V10V1_12

//%BEGIN UDPLVT32_LVLDBUFE0_V10V1_16

`celldefine
module UDPLVT32_LVLDBUFE0_V10V1_16 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_V10V1_16

//%BEGIN UDPLVT32_LVLDBUFE0_V10V1_2

`celldefine
module UDPLVT32_LVLDBUFE0_V10V1_2 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_V10V1_2

//%BEGIN UDPLVT32_LVLDBUFE0_V10V1_4

`celldefine
module UDPLVT32_LVLDBUFE0_V10V1_4 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_V10V1_4

//%BEGIN UDPLVT32_LVLDBUFE0_V10V1_8

`celldefine
module UDPLVT32_LVLDBUFE0_V10V1_8 (X, A, EN);
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

//%END UDPLVT32_LVLDBUFE0_V10V1_8

//%BEGIN UDPLVT32_LVLDBUF_DPNR_1

`celldefine
module UDPLVT32_LVLDBUF_DPNR_1 (X, A);
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

//%END UDPLVT32_LVLDBUF_DPNR_1

//%BEGIN UDPLVT32_LVLDBUF_DPNR_12

`celldefine
module UDPLVT32_LVLDBUF_DPNR_12 (X, A);
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

//%END UDPLVT32_LVLDBUF_DPNR_12

//%BEGIN UDPLVT32_LVLDBUF_DPNR_16

`celldefine
module UDPLVT32_LVLDBUF_DPNR_16 (X, A);
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

//%END UDPLVT32_LVLDBUF_DPNR_16

//%BEGIN UDPLVT32_LVLDBUF_DPNR_2

`celldefine
module UDPLVT32_LVLDBUF_DPNR_2 (X, A);
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

//%END UDPLVT32_LVLDBUF_DPNR_2

//%BEGIN UDPLVT32_LVLDBUF_DPNR_4

`celldefine
module UDPLVT32_LVLDBUF_DPNR_4 (X, A);
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

//%END UDPLVT32_LVLDBUF_DPNR_4

//%BEGIN UDPLVT32_LVLDBUF_DPNR_8

`celldefine
module UDPLVT32_LVLDBUF_DPNR_8 (X, A);
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

//%END UDPLVT32_LVLDBUF_DPNR_8

//%BEGIN UDPLVT32_LVLDBUF_D_1

`celldefine
module UDPLVT32_LVLDBUF_D_1 (X, A);
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

//%END UDPLVT32_LVLDBUF_D_1

//%BEGIN UDPLVT32_LVLDBUF_D_2

`celldefine
module UDPLVT32_LVLDBUF_D_2 (X, A);
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

//%END UDPLVT32_LVLDBUF_D_2

//%BEGIN UDPLVT32_LVLDBUF_D_4

`celldefine
module UDPLVT32_LVLDBUF_D_4 (X, A);
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

//%END UDPLVT32_LVLDBUF_D_4

//%BEGIN UDPLVT32_LVLDBUF_D_8

`celldefine
module UDPLVT32_LVLDBUF_D_8 (X, A);
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

//%END UDPLVT32_LVLDBUF_D_8

//%BEGIN UDPLVT32_LVLDBUF_OV10V1_1

`celldefine
module UDPLVT32_LVLDBUF_OV10V1_1 (X, A);
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

//%END UDPLVT32_LVLDBUF_OV10V1_1

//%BEGIN UDPLVT32_LVLDBUF_OV10V1_12

`celldefine
module UDPLVT32_LVLDBUF_OV10V1_12 (X, A);
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

//%END UDPLVT32_LVLDBUF_OV10V1_12

//%BEGIN UDPLVT32_LVLDBUF_OV10V1_16

`celldefine
module UDPLVT32_LVLDBUF_OV10V1_16 (X, A);
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

//%END UDPLVT32_LVLDBUF_OV10V1_16

//%BEGIN UDPLVT32_LVLDBUF_OV10V1_2

`celldefine
module UDPLVT32_LVLDBUF_OV10V1_2 (X, A);
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

//%END UDPLVT32_LVLDBUF_OV10V1_2

//%BEGIN UDPLVT32_LVLDBUF_OV10V1_4

`celldefine
module UDPLVT32_LVLDBUF_OV10V1_4 (X, A);
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

//%END UDPLVT32_LVLDBUF_OV10V1_4

//%BEGIN UDPLVT32_LVLDBUF_OV10V1_8

`celldefine
module UDPLVT32_LVLDBUF_OV10V1_8 (X, A);
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

//%END UDPLVT32_LVLDBUF_OV10V1_8

//%BEGIN UDPLVT32_LVLDBUF_PNRV10V1_1

`celldefine
module UDPLVT32_LVLDBUF_PNRV10V1_1 (X, A);
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

//%END UDPLVT32_LVLDBUF_PNRV10V1_1

//%BEGIN UDPLVT32_LVLDBUF_PNRV10V1_12

`celldefine
module UDPLVT32_LVLDBUF_PNRV10V1_12 (X, A);
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

//%END UDPLVT32_LVLDBUF_PNRV10V1_12

//%BEGIN UDPLVT32_LVLDBUF_PNRV10V1_16

`celldefine
module UDPLVT32_LVLDBUF_PNRV10V1_16 (X, A);
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

//%END UDPLVT32_LVLDBUF_PNRV10V1_16

//%BEGIN UDPLVT32_LVLDBUF_PNRV10V1_2

`celldefine
module UDPLVT32_LVLDBUF_PNRV10V1_2 (X, A);
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

//%END UDPLVT32_LVLDBUF_PNRV10V1_2

//%BEGIN UDPLVT32_LVLDBUF_PNRV10V1_4

`celldefine
module UDPLVT32_LVLDBUF_PNRV10V1_4 (X, A);
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

//%END UDPLVT32_LVLDBUF_PNRV10V1_4

//%BEGIN UDPLVT32_LVLDBUF_PNRV10V1_8

`celldefine
module UDPLVT32_LVLDBUF_PNRV10V1_8 (X, A);
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

//%END UDPLVT32_LVLDBUF_PNRV10V1_8

//%BEGIN UDPLVT32_LVLDBUF_PONRV10V1_1

`celldefine
module UDPLVT32_LVLDBUF_PONRV10V1_1 (X, A);
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

//%END UDPLVT32_LVLDBUF_PONRV10V1_1

//%BEGIN UDPLVT32_LVLDBUF_PONRV10V1_12

`celldefine
module UDPLVT32_LVLDBUF_PONRV10V1_12 (X, A);
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

//%END UDPLVT32_LVLDBUF_PONRV10V1_12

//%BEGIN UDPLVT32_LVLDBUF_PONRV10V1_16

`celldefine
module UDPLVT32_LVLDBUF_PONRV10V1_16 (X, A);
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

//%END UDPLVT32_LVLDBUF_PONRV10V1_16

//%BEGIN UDPLVT32_LVLDBUF_PONRV10V1_2

`celldefine
module UDPLVT32_LVLDBUF_PONRV10V1_2 (X, A);
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

//%END UDPLVT32_LVLDBUF_PONRV10V1_2

//%BEGIN UDPLVT32_LVLDBUF_PONRV10V1_4

`celldefine
module UDPLVT32_LVLDBUF_PONRV10V1_4 (X, A);
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

//%END UDPLVT32_LVLDBUF_PONRV10V1_4

//%BEGIN UDPLVT32_LVLDBUF_PONRV10V1_8

`celldefine
module UDPLVT32_LVLDBUF_PONRV10V1_8 (X, A);
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

//%END UDPLVT32_LVLDBUF_PONRV10V1_8

//%BEGIN UDPLVT32_LVLDBUF_V10V1_1

`celldefine
module UDPLVT32_LVLDBUF_V10V1_1 (X, A);
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

//%END UDPLVT32_LVLDBUF_V10V1_1

//%BEGIN UDPLVT32_LVLDBUF_V10V1_12

`celldefine
module UDPLVT32_LVLDBUF_V10V1_12 (X, A);
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

//%END UDPLVT32_LVLDBUF_V10V1_12

//%BEGIN UDPLVT32_LVLDBUF_V10V1_16

`celldefine
module UDPLVT32_LVLDBUF_V10V1_16 (X, A);
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

//%END UDPLVT32_LVLDBUF_V10V1_16

//%BEGIN UDPLVT32_LVLDBUF_V10V1_2

`celldefine
module UDPLVT32_LVLDBUF_V10V1_2 (X, A);
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

//%END UDPLVT32_LVLDBUF_V10V1_2

//%BEGIN UDPLVT32_LVLDBUF_V10V1_4

`celldefine
module UDPLVT32_LVLDBUF_V10V1_4 (X, A);
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

//%END UDPLVT32_LVLDBUF_V10V1_4

//%BEGIN UDPLVT32_LVLDBUF_V10V1_8

`celldefine
module UDPLVT32_LVLDBUF_V10V1_8 (X, A);
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

//%END UDPLVT32_LVLDBUF_V10V1_8

//%BEGIN UDPLVT32_LVLDINVE1_DPNR_1

`celldefine
module UDPLVT32_LVLDINVE1_DPNR_1 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_DPNR_1


//%BEGIN UDPLVT32_LVLDINVE1_DPNR_2

`celldefine
module UDPLVT32_LVLDINVE1_DPNR_2 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_DPNR_2


//%BEGIN UDPLVT32_LVLDINVE1_DPNR_4

`celldefine
module UDPLVT32_LVLDINVE1_DPNR_4 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_DPNR_4


//%BEGIN UDPLVT32_LVLDINVE1_DPNR_8

`celldefine
module UDPLVT32_LVLDINVE1_DPNR_8 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_DPNR_8


//%BEGIN UDPLVT32_LVLDINVE1_D_1

`celldefine
module UDPLVT32_LVLDINVE1_D_1 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_D_1


//%BEGIN UDPLVT32_LVLDINVE1_D_2

`celldefine
module UDPLVT32_LVLDINVE1_D_2 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_D_2


//%BEGIN UDPLVT32_LVLDINVE1_D_4

`celldefine
module UDPLVT32_LVLDINVE1_D_4 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_D_4


//%BEGIN UDPLVT32_LVLDINVE1_D_8

`celldefine
module UDPLVT32_LVLDINVE1_D_8 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_D_8


//%BEGIN UDPLVT32_LVLDINVE1_OV10V1_1

`celldefine
module UDPLVT32_LVLDINVE1_OV10V1_1 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_OV10V1_1


//%BEGIN UDPLVT32_LVLDINVE1_OV10V1_12

`celldefine
module UDPLVT32_LVLDINVE1_OV10V1_12 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_OV10V1_12


//%BEGIN UDPLVT32_LVLDINVE1_OV10V1_16

`celldefine
module UDPLVT32_LVLDINVE1_OV10V1_16 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_OV10V1_16


//%BEGIN UDPLVT32_LVLDINVE1_OV10V1_2

`celldefine
module UDPLVT32_LVLDINVE1_OV10V1_2 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_OV10V1_2


//%BEGIN UDPLVT32_LVLDINVE1_OV10V1_4

`celldefine
module UDPLVT32_LVLDINVE1_OV10V1_4 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_OV10V1_4


//%BEGIN UDPLVT32_LVLDINVE1_OV10V1_8

`celldefine
module UDPLVT32_LVLDINVE1_OV10V1_8 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_OV10V1_8


//%BEGIN UDPLVT32_LVLDINVE1_PNRV10V1_1

`celldefine
module UDPLVT32_LVLDINVE1_PNRV10V1_1 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_PNRV10V1_1


//%BEGIN UDPLVT32_LVLDINVE1_PNRV10V1_12

`celldefine
module UDPLVT32_LVLDINVE1_PNRV10V1_12 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_PNRV10V1_12


//%BEGIN UDPLVT32_LVLDINVE1_PNRV10V1_16

`celldefine
module UDPLVT32_LVLDINVE1_PNRV10V1_16 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_PNRV10V1_16


//%BEGIN UDPLVT32_LVLDINVE1_PNRV10V1_2

`celldefine
module UDPLVT32_LVLDINVE1_PNRV10V1_2 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_PNRV10V1_2


//%BEGIN UDPLVT32_LVLDINVE1_PNRV10V1_4

`celldefine
module UDPLVT32_LVLDINVE1_PNRV10V1_4 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_PNRV10V1_4


//%BEGIN UDPLVT32_LVLDINVE1_PNRV10V1_8

`celldefine
module UDPLVT32_LVLDINVE1_PNRV10V1_8 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_PNRV10V1_8


//%BEGIN UDPLVT32_LVLDINVE1_PONRV10V1_1

`celldefine
module UDPLVT32_LVLDINVE1_PONRV10V1_1 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_PONRV10V1_1


//%BEGIN UDPLVT32_LVLDINVE1_PONRV10V1_12

`celldefine
module UDPLVT32_LVLDINVE1_PONRV10V1_12 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_PONRV10V1_12


//%BEGIN UDPLVT32_LVLDINVE1_PONRV10V1_16

`celldefine
module UDPLVT32_LVLDINVE1_PONRV10V1_16 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_PONRV10V1_16


//%BEGIN UDPLVT32_LVLDINVE1_PONRV10V1_2

`celldefine
module UDPLVT32_LVLDINVE1_PONRV10V1_2 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_PONRV10V1_2


//%BEGIN UDPLVT32_LVLDINVE1_PONRV10V1_4

`celldefine
module UDPLVT32_LVLDINVE1_PONRV10V1_4 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_PONRV10V1_4


//%BEGIN UDPLVT32_LVLDINVE1_PONRV10V1_8

`celldefine
module UDPLVT32_LVLDINVE1_PONRV10V1_8 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_PONRV10V1_8


//%BEGIN UDPLVT32_LVLDINVE1_V10V1_1

`celldefine
module UDPLVT32_LVLDINVE1_V10V1_1 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_V10V1_1


//%BEGIN UDPLVT32_LVLDINVE1_V10V1_12

`celldefine
module UDPLVT32_LVLDINVE1_V10V1_12 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_V10V1_12


//%BEGIN UDPLVT32_LVLDINVE1_V10V1_16

`celldefine
module UDPLVT32_LVLDINVE1_V10V1_16 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_V10V1_16


//%BEGIN UDPLVT32_LVLDINVE1_V10V1_2

`celldefine
module UDPLVT32_LVLDINVE1_V10V1_2 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_V10V1_2


//%BEGIN UDPLVT32_LVLDINVE1_V10V1_4

`celldefine
module UDPLVT32_LVLDINVE1_V10V1_4 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_V10V1_4


//%BEGIN UDPLVT32_LVLDINVE1_V10V1_8

`celldefine
module UDPLVT32_LVLDINVE1_V10V1_8 (X, A, EN);
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

//%END UDPLVT32_LVLDINVE1_V10V1_8


//%BEGIN UDPLVT32_LVLDINV_DPNR_1

`celldefine
module UDPLVT32_LVLDINV_DPNR_1 (X, A);
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

//%END UDPLVT32_LVLDINV_DPNR_1


//%BEGIN UDPLVT32_LVLDINV_DPNR_2

`celldefine
module UDPLVT32_LVLDINV_DPNR_2 (X, A);
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

//%END UDPLVT32_LVLDINV_DPNR_2


//%BEGIN UDPLVT32_LVLDINV_DPNR_4

`celldefine
module UDPLVT32_LVLDINV_DPNR_4 (X, A);
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

//%END UDPLVT32_LVLDINV_DPNR_4


//%BEGIN UDPLVT32_LVLDINV_DPNR_8

`celldefine
module UDPLVT32_LVLDINV_DPNR_8 (X, A);
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

//%END UDPLVT32_LVLDINV_DPNR_8


//%BEGIN UDPLVT32_LVLDINV_D_1

`celldefine
module UDPLVT32_LVLDINV_D_1 (X, A);
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

//%END UDPLVT32_LVLDINV_D_1


//%BEGIN UDPLVT32_LVLDINV_D_2

`celldefine
module UDPLVT32_LVLDINV_D_2 (X, A);
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

//%END UDPLVT32_LVLDINV_D_2


//%BEGIN UDPLVT32_LVLDINV_D_4

`celldefine
module UDPLVT32_LVLDINV_D_4 (X, A);
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

//%END UDPLVT32_LVLDINV_D_4


//%BEGIN UDPLVT32_LVLDINV_D_8

`celldefine
module UDPLVT32_LVLDINV_D_8 (X, A);
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

//%END UDPLVT32_LVLDINV_D_8


//%BEGIN UDPLVT32_LVLDINV_OV10V1_1

`celldefine
module UDPLVT32_LVLDINV_OV10V1_1 (X, A);
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

//%END UDPLVT32_LVLDINV_OV10V1_1


//%BEGIN UDPLVT32_LVLDINV_OV10V1_12

`celldefine
module UDPLVT32_LVLDINV_OV10V1_12 (X, A);
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

//%END UDPLVT32_LVLDINV_OV10V1_12


//%BEGIN UDPLVT32_LVLDINV_OV10V1_16

`celldefine
module UDPLVT32_LVLDINV_OV10V1_16 (X, A);
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

//%END UDPLVT32_LVLDINV_OV10V1_16


//%BEGIN UDPLVT32_LVLDINV_OV10V1_2

`celldefine
module UDPLVT32_LVLDINV_OV10V1_2 (X, A);
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

//%END UDPLVT32_LVLDINV_OV10V1_2


//%BEGIN UDPLVT32_LVLDINV_OV10V1_4

`celldefine
module UDPLVT32_LVLDINV_OV10V1_4 (X, A);
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

//%END UDPLVT32_LVLDINV_OV10V1_4


//%BEGIN UDPLVT32_LVLDINV_OV10V1_8

`celldefine
module UDPLVT32_LVLDINV_OV10V1_8 (X, A);
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

//%END UDPLVT32_LVLDINV_OV10V1_8


//%BEGIN UDPLVT32_LVLDINV_PNRV10V1_1

`celldefine
module UDPLVT32_LVLDINV_PNRV10V1_1 (X, A);
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

//%END UDPLVT32_LVLDINV_PNRV10V1_1


//%BEGIN UDPLVT32_LVLDINV_PNRV10V1_12

`celldefine
module UDPLVT32_LVLDINV_PNRV10V1_12 (X, A);
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

//%END UDPLVT32_LVLDINV_PNRV10V1_12


//%BEGIN UDPLVT32_LVLDINV_PNRV10V1_16

`celldefine
module UDPLVT32_LVLDINV_PNRV10V1_16 (X, A);
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

//%END UDPLVT32_LVLDINV_PNRV10V1_16


//%BEGIN UDPLVT32_LVLDINV_PNRV10V1_2

`celldefine
module UDPLVT32_LVLDINV_PNRV10V1_2 (X, A);
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

//%END UDPLVT32_LVLDINV_PNRV10V1_2


//%BEGIN UDPLVT32_LVLDINV_PNRV10V1_4

`celldefine
module UDPLVT32_LVLDINV_PNRV10V1_4 (X, A);
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

//%END UDPLVT32_LVLDINV_PNRV10V1_4


//%BEGIN UDPLVT32_LVLDINV_PNRV10V1_8

`celldefine
module UDPLVT32_LVLDINV_PNRV10V1_8 (X, A);
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

//%END UDPLVT32_LVLDINV_PNRV10V1_8


//%BEGIN UDPLVT32_LVLDINV_PONRV10V1_1

`celldefine
module UDPLVT32_LVLDINV_PONRV10V1_1 (X, A);
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

//%END UDPLVT32_LVLDINV_PONRV10V1_1


//%BEGIN UDPLVT32_LVLDINV_PONRV10V1_12

`celldefine
module UDPLVT32_LVLDINV_PONRV10V1_12 (X, A);
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

//%END UDPLVT32_LVLDINV_PONRV10V1_12


//%BEGIN UDPLVT32_LVLDINV_PONRV10V1_16

`celldefine
module UDPLVT32_LVLDINV_PONRV10V1_16 (X, A);
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

//%END UDPLVT32_LVLDINV_PONRV10V1_16


//%BEGIN UDPLVT32_LVLDINV_PONRV10V1_2

`celldefine
module UDPLVT32_LVLDINV_PONRV10V1_2 (X, A);
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

//%END UDPLVT32_LVLDINV_PONRV10V1_2


//%BEGIN UDPLVT32_LVLDINV_PONRV10V1_4

`celldefine
module UDPLVT32_LVLDINV_PONRV10V1_4 (X, A);
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

//%END UDPLVT32_LVLDINV_PONRV10V1_4


//%BEGIN UDPLVT32_LVLDINV_PONRV10V1_8

`celldefine
module UDPLVT32_LVLDINV_PONRV10V1_8 (X, A);
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

//%END UDPLVT32_LVLDINV_PONRV10V1_8


//%BEGIN UDPLVT32_LVLDINV_V10V1_1

`celldefine
module UDPLVT32_LVLDINV_V10V1_1 (X, A);
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

//%END UDPLVT32_LVLDINV_V10V1_1


//%BEGIN UDPLVT32_LVLDINV_V10V1_12

`celldefine
module UDPLVT32_LVLDINV_V10V1_12 (X, A);
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

//%END UDPLVT32_LVLDINV_V10V1_12


//%BEGIN UDPLVT32_LVLDINV_V10V1_16

`celldefine
module UDPLVT32_LVLDINV_V10V1_16 (X, A);
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

//%END UDPLVT32_LVLDINV_V10V1_16


//%BEGIN UDPLVT32_LVLDINV_V10V1_2

`celldefine
module UDPLVT32_LVLDINV_V10V1_2 (X, A);
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

//%END UDPLVT32_LVLDINV_V10V1_2


//%BEGIN UDPLVT32_LVLDINV_V10V1_4

`celldefine
module UDPLVT32_LVLDINV_V10V1_4 (X, A);
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

//%END UDPLVT32_LVLDINV_V10V1_4


//%BEGIN UDPLVT32_LVLDINV_V10V1_8

`celldefine
module UDPLVT32_LVLDINV_V10V1_8 (X, A);
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

//%END UDPLVT32_LVLDINV_V10V1_8


//%BEGIN UDPLVT32_LVLDORBUFE1_DPNR_1

`celldefine
module UDPLVT32_LVLDORBUFE1_DPNR_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_DPNR_1

//%BEGIN UDPLVT32_LVLDORBUFE1_DPNR_2

`celldefine
module UDPLVT32_LVLDORBUFE1_DPNR_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_DPNR_2

//%BEGIN UDPLVT32_LVLDORBUFE1_DPNR_4

`celldefine
module UDPLVT32_LVLDORBUFE1_DPNR_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_DPNR_4

//%BEGIN UDPLVT32_LVLDORBUFE1_DPNR_8

`celldefine
module UDPLVT32_LVLDORBUFE1_DPNR_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_DPNR_8

//%BEGIN UDPLVT32_LVLDORBUFE1_D_1

`celldefine
module UDPLVT32_LVLDORBUFE1_D_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_D_1

//%BEGIN UDPLVT32_LVLDORBUFE1_D_2

`celldefine
module UDPLVT32_LVLDORBUFE1_D_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_D_2

//%BEGIN UDPLVT32_LVLDORBUFE1_D_4

`celldefine
module UDPLVT32_LVLDORBUFE1_D_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_D_4

//%BEGIN UDPLVT32_LVLDORBUFE1_D_8

`celldefine
module UDPLVT32_LVLDORBUFE1_D_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_D_8

//%BEGIN UDPLVT32_LVLDORBUFE1_PNRV10V1_1

`celldefine
module UDPLVT32_LVLDORBUFE1_PNRV10V1_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_PNRV10V1_1

//%BEGIN UDPLVT32_LVLDORBUFE1_PNRV10V1_2

`celldefine
module UDPLVT32_LVLDORBUFE1_PNRV10V1_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_PNRV10V1_2

//%BEGIN UDPLVT32_LVLDORBUFE1_PNRV10V1_4

`celldefine
module UDPLVT32_LVLDORBUFE1_PNRV10V1_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_PNRV10V1_4

//%BEGIN UDPLVT32_LVLDORBUFE1_PNRV10V1_8

`celldefine
module UDPLVT32_LVLDORBUFE1_PNRV10V1_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_PNRV10V1_8

//%BEGIN UDPLVT32_LVLDORBUFE1_V10V1_1

`celldefine
module UDPLVT32_LVLDORBUFE1_V10V1_1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_V10V1_1

//%BEGIN UDPLVT32_LVLDORBUFE1_V10V1_2

`celldefine
module UDPLVT32_LVLDORBUFE1_V10V1_2 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_V10V1_2

//%BEGIN UDPLVT32_LVLDORBUFE1_V10V1_4

`celldefine
module UDPLVT32_LVLDORBUFE1_V10V1_4 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_V10V1_4

//%BEGIN UDPLVT32_LVLDORBUFE1_V10V1_8

`celldefine
module UDPLVT32_LVLDORBUFE1_V10V1_8 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly
       or #`SNPS_COMBO_DELAY  instt0 (X, A, EN);
   `else
       or instt0  (X, A, EN);
   `endif

   `ifdef VIRL_functiononly

   `else

specify
if (EN==1'b0) (A +=> X)=(0, 0);
if (A==1'b0) (EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_LVLDORBUFE1_V10V1_8

//%BEGIN UDPLVT32_ND2_PMMNR_1

`celldefine
module UDPLVT32_ND2_PMMNR_1 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nand #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nand instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b1) (A1 -=> X)=(0, 0);
if (A1==1'b1) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_ND2_PMMNR_1

//%BEGIN UDPLVT32_ND2_PMMNR_12

`celldefine
module UDPLVT32_ND2_PMMNR_12 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nand #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nand instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b1) (A1 -=> X)=(0, 0);
if (A1==1'b1) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_ND2_PMMNR_12

//%BEGIN UDPLVT32_ND2_PMMNR_16

`celldefine
module UDPLVT32_ND2_PMMNR_16 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nand #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nand instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b1) (A1 -=> X)=(0, 0);
if (A1==1'b1) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_ND2_PMMNR_16

//%BEGIN UDPLVT32_ND2_PMMNR_1P5

`celldefine
module UDPLVT32_ND2_PMMNR_1P5 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nand #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nand instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b1) (A1 -=> X)=(0, 0);
if (A1==1'b1) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_ND2_PMMNR_1P5

//%BEGIN UDPLVT32_ND2_PMMNR_2

`celldefine
module UDPLVT32_ND2_PMMNR_2 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nand #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nand instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b1) (A1 -=> X)=(0, 0);
if (A1==1'b1) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_ND2_PMMNR_2

//%BEGIN UDPLVT32_ND2_PMMNR_3

`celldefine
module UDPLVT32_ND2_PMMNR_3 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nand #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nand instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b1) (A1 -=> X)=(0, 0);
if (A1==1'b1) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_ND2_PMMNR_3

//%BEGIN UDPLVT32_ND2_PMMNR_4

`celldefine
module UDPLVT32_ND2_PMMNR_4 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nand #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nand instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b1) (A1 -=> X)=(0, 0);
if (A1==1'b1) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_ND2_PMMNR_4

//%BEGIN UDPLVT32_ND2_PMMNR_6

`celldefine
module UDPLVT32_ND2_PMMNR_6 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nand #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nand instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b1) (A1 -=> X)=(0, 0);
if (A1==1'b1) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_ND2_PMMNR_6

//%BEGIN UDPLVT32_ND2_PMMNR_8

`celldefine
module UDPLVT32_ND2_PMMNR_8 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nand #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nand instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b1) (A1 -=> X)=(0, 0);
if (A1==1'b1) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_ND2_PMMNR_8

//%BEGIN UDPLVT32_NR2_PMMNR_1

`celldefine
module UDPLVT32_NR2_PMMNR_1 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nor #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nor instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b0) (A1 -=> X)=(0, 0);
if (A1==1'b0) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_NR2_PMMNR_1

//%BEGIN UDPLVT32_NR2_PMMNR_12

`celldefine
module UDPLVT32_NR2_PMMNR_12 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nor #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nor instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b0) (A1 -=> X)=(0, 0);
if (A1==1'b0) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_NR2_PMMNR_12

//%BEGIN UDPLVT32_NR2_PMMNR_16

`celldefine
module UDPLVT32_NR2_PMMNR_16 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nor #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nor instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b0) (A1 -=> X)=(0, 0);
if (A1==1'b0) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_NR2_PMMNR_16

//%BEGIN UDPLVT32_NR2_PMMNR_1P5

`celldefine
module UDPLVT32_NR2_PMMNR_1P5 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nor #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nor instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b0) (A1 -=> X)=(0, 0);
if (A1==1'b0) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_NR2_PMMNR_1P5

//%BEGIN UDPLVT32_NR2_PMMNR_2

`celldefine
module UDPLVT32_NR2_PMMNR_2 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nor #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nor instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b0) (A1 -=> X)=(0, 0);
if (A1==1'b0) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_NR2_PMMNR_2

//%BEGIN UDPLVT32_NR2_PMMNR_3

`celldefine
module UDPLVT32_NR2_PMMNR_3 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nor #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nor instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b0) (A1 -=> X)=(0, 0);
if (A1==1'b0) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_NR2_PMMNR_3

//%BEGIN UDPLVT32_NR2_PMMNR_4

`celldefine
module UDPLVT32_NR2_PMMNR_4 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nor #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nor instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b0) (A1 -=> X)=(0, 0);
if (A1==1'b0) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_NR2_PMMNR_4

//%BEGIN UDPLVT32_NR2_PMMNR_6

`celldefine
module UDPLVT32_NR2_PMMNR_6 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nor #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nor instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b0) (A1 -=> X)=(0, 0);
if (A1==1'b0) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_NR2_PMMNR_6

//%BEGIN UDPLVT32_NR2_PMMNR_8

`celldefine
module UDPLVT32_NR2_PMMNR_8 (X, A1, A2);
   output X;
   input A1, A2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
        nor #`SNPS_COMBO_DELAY  instt0 (X, A1, A2);
   `else
        nor instt0  (X, A1, A2);
   `endif

   `ifdef VIRL_functiononly

   `else


specify
if (A2==1'b0) (A1 -=> X)=(0, 0);
if (A1==1'b0) (A2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine

//%END UDPLVT32_NR2_PMMNR_8

//%BEGIN UDPLVT32_PGATBDRV_CONRY2_10

`celldefine
module UDPLVT32_PGATBDRV_CONRY2_10 (ENX, EN);
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

//%END UDPLVT32_PGATBDRV_CONRY2_10

//%BEGIN UDPLVT32_PGATBDRV_CONR_10

`celldefine
module UDPLVT32_PGATBDRV_CONR_10 (ENX, EN);
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

//%END UDPLVT32_PGATBDRV_CONR_10

//%BEGIN UDPLVT32_PGATBDRV_ONRY2_10

`celldefine
module UDPLVT32_PGATBDRV_ONRY2_10 (ENX, EN);
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

//%END UDPLVT32_PGATBDRV_ONRY2_10

//%BEGIN UDPLVT32_PGATBDRV_ONR_10

`celldefine
module UDPLVT32_PGATBDRV_ONR_10 (ENX, EN);
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

//%END UDPLVT32_PGATBDRV_ONR_10

//%BEGIN UDPLVT32_PGATBDRV_ORNRY2_10

`celldefine
module UDPLVT32_PGATBDRV_ORNRY2_10 (ENX, EN);
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

//%END UDPLVT32_PGATBDRV_ORNRY2_10

//%BEGIN UDPLVT32_PGATBDRV_ORNR_10

`celldefine
module UDPLVT32_PGATBDRV_ORNR_10 (ENX, EN);
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

//%END UDPLVT32_PGATBDRV_ORNR_10

//%BEGIN UDPLVT32_PGATBFILL_CONRY2_10

`celldefine
module UDPLVT32_PGATBFILL_CONRY2_10 (ENX, EN);
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

//%END UDPLVT32_PGATBFILL_CONRY2_10

//%BEGIN UDPLVT32_PGATBFILL_CONR_10

`celldefine
module UDPLVT32_PGATBFILL_CONR_10 (ENX, EN);
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

//%END UDPLVT32_PGATBFILL_CONR_10

//%BEGIN UDPLVT32_PGATBFILL_ONRY2_10

`celldefine
module UDPLVT32_PGATBFILL_ONRY2_10 (ENX, EN);
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

//%END UDPLVT32_PGATBFILL_ONRY2_10

//%BEGIN UDPLVT32_PGATBFILL_ONR_10

`celldefine
module UDPLVT32_PGATBFILL_ONR_10 (ENX, EN);
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

//%END UDPLVT32_PGATBFILL_ONR_10

//%BEGIN UDPLVT32_PGATDRV_CONRY2_10

`celldefine
module UDPLVT32_PGATDRV_CONRY2_10 (ENXB);
   input ENXB;

endmodule
`endcelldefine

//%END UDPLVT32_PGATDRV_CONRY2_10

//%BEGIN UDPLVT32_PGATDRV_CONR_10

`celldefine
module UDPLVT32_PGATDRV_CONR_10 (ENXB);
   input ENXB;

endmodule
`endcelldefine

//%END UDPLVT32_PGATDRV_CONR_10

//%BEGIN UDPLVT32_PGATDRV_ONRY2_10

`celldefine
module UDPLVT32_PGATDRV_ONRY2_10 (ENXB);
   input ENXB;

endmodule
`endcelldefine

//%END UDPLVT32_PGATDRV_ONRY2_10

//%BEGIN UDPLVT32_PGATDRV_ONR_10

`celldefine
module UDPLVT32_PGATDRV_ONR_10 (ENXB);
   input ENXB;

endmodule
`endcelldefine

//%END UDPLVT32_PGATDRV_ONR_10

//%BEGIN UDPLVT32_PGATDRV_ORNRY2_10

`celldefine
module UDPLVT32_PGATDRV_ORNRY2_10 (ENXB);
   input ENXB;

endmodule
`endcelldefine

//%END UDPLVT32_PGATDRV_ORNRY2_10

//%BEGIN UDPLVT32_PGATDRV_ORNR_10

`celldefine
module UDPLVT32_PGATDRV_ORNR_10 (ENXB);
   input ENXB;

endmodule
`endcelldefine

//%END UDPLVT32_PGATDRV_ORNR_10

//%BEGIN UDPLVT32_PGATFILL_CONRY2_10

`celldefine
module UDPLVT32_PGATFILL_CONRY2_10 (ENXB);
   input ENXB;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


endmodule
`endcelldefine

//%END UDPLVT32_PGATFILL_CONRY2_10

//%BEGIN UDPLVT32_PGATFILL_CONR_10

`celldefine
module UDPLVT32_PGATFILL_CONR_10 (ENXB);
   input ENXB;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


endmodule
`endcelldefine

//%END UDPLVT32_PGATFILL_CONR_10

//%BEGIN UDPLVT32_PGATFILL_ONRY2_10

`celldefine
module UDPLVT32_PGATFILL_ONRY2_10 (ENXB);
   input ENXB;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


endmodule
`endcelldefine

//%END UDPLVT32_PGATFILL_ONRY2_10

//%BEGIN UDPLVT32_PGATFILL_ONR_10

`celldefine
module UDPLVT32_PGATFILL_ONR_10 (ENXB);
   input ENXB;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////


endmodule
`endcelldefine

//%END UDPLVT32_PGATFILL_ONR_10

//%BEGIN UDPLVT32_TAPPN_DN

`celldefine
module UDPLVT32_TAPPN_DN ();
endmodule
`endcelldefine

//%END UDPLVT32_TAPPN_DN

//%BEGIN UDPLVT32_TAPSS

`celldefine
module UDPLVT32_TAPSS ();
endmodule
`endcelldefine

//%END UDPLVT32_TAPSS

