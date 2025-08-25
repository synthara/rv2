
module snps_mux2 (q, i1, i0, s0);
   input i1, i0, s0;
   output q;
   parameter DELAY = 0.0;
   mux_primitive inst0 (q, s0, i0, i1);
endmodule

module snps_mux4 (q, i3, i2, i1, i0, s1, s0);
   input i3, i2, i1, i0, s1, s0;
   output q;
   wire   q0, q1;
   parameter DELAY = 0.0;
   mux_primitive inst1  (q0, s0, i0, i1);
   mux_primitive inst2  (q1, s0, i2, i3);
   mux_primitive inst3  (q, s1, q0, q1);
endmodule


module snps_sr_latch (q, v, s, r);
   //set dominant architecture 
   output q;
   wire q;
   input v, s, r;
   wire  r2;
   parameter DELAY = 0.0;   
   assign r2 = r&!s;
   dlat_primitive inst0 ( q, s, r2, 1'b0, 1'b0 );
endmodule

module snps_rs_latch (q, v, r, s);
   //reset dominant architecture 
   output q;
   wire q;
   input v, r, s;
   wire  s2;
   parameter DELAY = 0.0;   
   assign s2 = !r&s;
   dlat_primitive inst0 ( q, s2, r, 1'b0, 1'b0 );
endmodule


module snps_sr_latch_x (q, v, s, r);
   //x out if both set and reset are active together
   output q;
   wire q;
   input v, s, r;
   parameter DELAY = 0.0;   
   dlat_primitive inst0 ( q, s, r, 1'b0, 1'b0 );
endmodule // sr_latch

module snps_latch (q, v, clk, d);
   output q;
   wire q;
   input v, clk, d;
   parameter DELAY = 0.0;   
   dlat_primitive inst0 ( q, 1'b0, 1'b0, clk, d );
endmodule

module snps_latch_r (q, v, clk, d, r);
   output q;
   wire q;
   input v, clk, d, r;
   parameter DELAY = 0.0;   
   dlat_primitive inst0 ( q, 1'b0, r, clk, d );
endmodule

module snps_latch_s (q, v, clk, d, s);
   output q;
   wire q;
   input v, clk, d, s;
   parameter DELAY = 0.0;   
   dlat_primitive inst0 ( q, s, 1'b0, clk, d );

endmodule

module snps_latch_sr_0 (q, v, clk, d, s, r);
   output q;
   wire q;
   input v, clk, d, s, r;
   wire  s2;
   parameter DELAY = 0.0;   
   assign s2 = !r&s;
   dlat_primitive inst0 ( q, s2, r, clk, d );

endmodule

module snps_latch_sr_1 (q, v, clk, d, s, r);
     output q;
   wire q;
   input v, clk, d, s, r;
   wire  r2;
   parameter DELAY = 0.0;   
   assign r2 = r&!s;
   dlat_primitive inst0 ( q, s, r2, clk, d );
endmodule

`ifndef SNPS_MASK_ERR_UDP
module snps_dff_err (q, clk, d);
   output q;
   wire q;
   input clk, d;
endmodule
`endif

module snps_dff (q, v, clk, d, xcr);
   output q;
   wire q;
   input v, clk, d, xcr;
   parameter DELAY = 0.0;   
   dff_primitive inst0  ( q, 1'b0, 1'b0, clk, d ); 
endmodule

`ifndef SNPS_MASK_ERR_UDP
module snps_dff_r_err (q, clk, d, r);
   output q;
   wire q;
   input clk, d, r;
endmodule
`endif

module snps_dff_r (q, v, clk, d, r, xcr);
   output q;
   wire q;
   input v, clk, d, r, xcr;
   parameter DELAY = 0.0;   
    dff_primitive inst0  ( q, 1'b0, r, clk, d );    
endmodule

`ifndef SNPS_MASK_ERR_UDP
module snps_dff_s_err (q, clk, d, s);
   output q;
   wire q;
   input clk, d, s;
endmodule
`endif

module snps_dff_s (q, v, clk, d, s, xcr);
   output q;
   wire q;
   input v, clk, d, s, xcr;
   parameter DELAY = 0.0;   
   dff_primitive inst0  ( q, s, 1'b0, clk, d );     
endmodule

`ifndef SNPS_MASK_ERR_UDP
module snps_dff_sr_err (q, clk, d, s, r);
   output q;
   wire q;
   input clk, d, s, r;
endmodule
`endif

module snps_dff_sr_0 (q, v, clk, d, s, r, xcr);
   output q;
   wire q;
   input v, clk, d, s, r, xcr;
   wire  s2;
   parameter DELAY = 0.0;   
   assign s2 = !r&s;
   dff_primitive inst0  ( q, s2, r, clk, d );  
endmodule


module snps_dff_sr_1 (q, v, clk, d, s, r, xcr);
   output q;
   input v, clk, d, s, r, xcr;   
   wire q;
   wire r2;
   parameter DELAY = 0.0;   
   assign r2=!s&r;
   dff_primitive inst0  ( q, s, r2, clk, d );  
endmodule


`ifndef SNPS_MASK_X_OUT_LATCH
module snps_x_out_latch (v_out, v_in, ck, r, s);
   output v_out;
   reg    v_out;
   input  v_in, ck, r, s;
endmodule // x_out_latch
`endif

module mux_primitive(Y, S, A, B);
  output Y;
  input S, A, B;
  `ifdef SNPS_CMUX
  assign Y = (!S & A) | (S & B) | (A & B);   
  `else
  assign Y = (!S & A) | (S & B);   
  `endif
endmodule

module dlat_primitive ( q, set, reset, clock, data ); 
   input set,reset, clock, data; 
   output q;
   reg q;

   always@(clock or reset or set or data) begin
     if (reset)
       q <= 1'b0;
     else if (set)
       q <= 1'b1;
     else if (clock)
       q <= data;
   end
endmodule

module dff_primitive ( q, set, reset, clock, data ); 
   input set, reset, clock, data; 
   output q; 
   reg 	  q;

   always@(posedge clock or posedge reset or posedge set) begin
     if (reset)
       q <= 1'b0;
     else if (set)
       q <= 1'b1;
     else 
       q <= data;
   end
endmodule
