////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: Serializer_synthesis.v
// /___/   /\     Timestamp: Thu Feb 16 01:15:44 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Serializer.ngc Serializer_synthesis.v 
// Device	: xc7vx485t-2-ffg1761
// Input file	: Serializer.ngc
// Output file	: /homes/mmahmood/Aaron/netgen/synthesis/Serializer_synthesis.v
// # of Modules	: 1
// Design Name	: Serializer
// Xilinx        : /fs/cad3/xilinx/14.6/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Serializer (
  clk, reset, start, serial_data_out, done_transmit, data_in
);
  input clk;
  input reset;
  input start;
  output serial_data_out;
  output done_transmit;
  input [7 : 0] data_in;
  wire data_in_7_IBUF_0;
  wire data_in_6_IBUF_1;
  wire data_in_5_IBUF_2;
  wire data_in_4_IBUF_3;
  wire data_in_3_IBUF_4;
  wire data_in_2_IBUF_5;
  wire data_in_1_IBUF_6;
  wire data_in_0_IBUF_7;
  wire clk_BUFGP_8;
  wire reset_IBUF_9;
  wire start_IBUF_10;
  wire done_11;
  wire done_flag_12;
  wire data_out_13;
  wire _n0031;
  wire _n0048_inv;
  wire \Mmux_counter[2]_data_in[7]_Mux_2_o_4_16 ;
  wire \Mmux_counter[2]_data_in[7]_Mux_2_o_3_17 ;
  wire done_glue_set_34;
  wire done_flag_glue_set_35;
  wire data_out_rstpot_36;
  wire counter_0_rstpot_37;
  wire counter_1_rstpot_38;
  wire counter_2_rstpot_39;
  wire [2 : 0] counter;
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_counter[2]_data_in[7]_Mux_2_o_4  (
    .I0(data_in_0_IBUF_7),
    .I1(data_in_1_IBUF_6),
    .I2(data_in_3_IBUF_4),
    .I3(data_in_2_IBUF_5),
    .I4(counter[1]),
    .I5(counter[0]),
    .O(\Mmux_counter[2]_data_in[7]_Mux_2_o_4_16 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \Mmux_counter[2]_data_in[7]_Mux_2_o_3  (
    .I0(data_in_4_IBUF_3),
    .I1(data_in_5_IBUF_2),
    .I2(data_in_7_IBUF_0),
    .I3(data_in_6_IBUF_1),
    .I4(counter[1]),
    .I5(counter[0]),
    .O(\Mmux_counter[2]_data_in[7]_Mux_2_o_3_17 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  _n00311 (
    .I0(start_IBUF_10),
    .I1(reset_IBUF_9),
    .O(_n0031)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  _n0048_inv1 (
    .I0(start_IBUF_10),
    .I1(reset_IBUF_9),
    .I2(done_flag_12),
    .O(_n0048_inv)
  );
  IBUF   data_in_7_IBUF (
    .I(data_in[7]),
    .O(data_in_7_IBUF_0)
  );
  IBUF   data_in_6_IBUF (
    .I(data_in[6]),
    .O(data_in_6_IBUF_1)
  );
  IBUF   data_in_5_IBUF (
    .I(data_in[5]),
    .O(data_in_5_IBUF_2)
  );
  IBUF   data_in_4_IBUF (
    .I(data_in[4]),
    .O(data_in_4_IBUF_3)
  );
  IBUF   data_in_3_IBUF (
    .I(data_in[3]),
    .O(data_in_3_IBUF_4)
  );
  IBUF   data_in_2_IBUF (
    .I(data_in[2]),
    .O(data_in_2_IBUF_5)
  );
  IBUF   data_in_1_IBUF (
    .I(data_in[1]),
    .O(data_in_1_IBUF_6)
  );
  IBUF   data_in_0_IBUF (
    .I(data_in[0]),
    .O(data_in_0_IBUF_7)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_9)
  );
  IBUF   start_IBUF (
    .I(start),
    .O(start_IBUF_10)
  );
  OBUF   serial_data_out_OBUF (
    .I(data_out_13),
    .O(serial_data_out)
  );
  OBUF   done_transmit_OBUF (
    .I(done_11),
    .O(done_transmit)
  );
  FDR #(
    .INIT ( 1'b0 ))
  done (
    .C(clk_BUFGP_8),
    .D(done_glue_set_34),
    .R(_n0031),
    .Q(done_11)
  );
  FDR #(
    .INIT ( 1'b0 ))
  done_flag (
    .C(clk_BUFGP_8),
    .D(done_flag_glue_set_35),
    .R(_n0031),
    .Q(done_flag_12)
  );
  FD   data_out (
    .C(clk_BUFGP_8),
    .D(data_out_rstpot_36),
    .Q(data_out_13)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_0 (
    .C(clk_BUFGP_8),
    .D(counter_0_rstpot_37),
    .Q(counter[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_1 (
    .C(clk_BUFGP_8),
    .D(counter_1_rstpot_38),
    .Q(counter[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_2 (
    .C(clk_BUFGP_8),
    .D(counter_2_rstpot_39),
    .Q(counter[2])
  );
  LUT5 #(
    .INIT ( 32'hFA3ACA0A ))
  data_out_rstpot (
    .I0(data_out_13),
    .I1(counter[2]),
    .I2(_n0048_inv),
    .I3(\Mmux_counter[2]_data_in[7]_Mux_2_o_3_17 ),
    .I4(\Mmux_counter[2]_data_in[7]_Mux_2_o_4_16 ),
    .O(data_out_rstpot_36)
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  done_glue_set (
    .I0(done_11),
    .I1(start_IBUF_10),
    .I2(done_flag_12),
    .O(done_glue_set_34)
  );
  LUT5 #(
    .INIT ( 32'hFFFF8000 ))
  done_flag_glue_set (
    .I0(start_IBUF_10),
    .I1(counter[2]),
    .I2(counter[1]),
    .I3(counter[0]),
    .I4(done_flag_12),
    .O(done_flag_glue_set_35)
  );
  LUT3 #(
    .INIT ( 8'h52 ))
  counter_0_rstpot (
    .I0(start_IBUF_10),
    .I1(reset_IBUF_9),
    .I2(counter[0]),
    .O(counter_0_rstpot_37)
  );
  LUT4 #(
    .INIT ( 16'h14CC ))
  counter_1_rstpot (
    .I0(reset_IBUF_9),
    .I1(counter[1]),
    .I2(counter[0]),
    .I3(start_IBUF_10),
    .O(counter_1_rstpot_38)
  );
  LUT5 #(
    .INIT ( 32'h1444CCCC ))
  counter_2_rstpot (
    .I0(reset_IBUF_9),
    .I1(counter[2]),
    .I2(counter[1]),
    .I3(counter[0]),
    .I4(start_IBUF_10),
    .O(counter_2_rstpot_39)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_8)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

