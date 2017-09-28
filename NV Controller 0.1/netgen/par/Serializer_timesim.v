////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: Serializer_timesim.v
// /___/   /\     Timestamp: Thu Feb 16 01:14:43 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 2 -pcf Serializer.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim Serializer.ncd Serializer_timesim.v 
// Device	: 7vx485tffg1761-2 (PRODUCTION 1.09 2013-06-08)
// Input file	: Serializer.ncd
// Output file	: /homes/mmahmood/Aaron/netgen/par/Serializer_timesim.v
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
  wire clk_BUFGP;
  wire reset_IBUF_113;
  wire start_IBUF_116;
  wire _n0031;
  wire _n0048_inv;
  wire done_120;
  wire done_flag_121;
  wire \clk_BUFGP/IBUFG_122 ;
  wire data_in_0_IBUF_123;
  wire data_in_1_IBUF_124;
  wire data_in_2_IBUF_125;
  wire data_in_3_IBUF_126;
  wire data_in_4_IBUF_127;
  wire data_in_5_IBUF_128;
  wire data_in_6_IBUF_129;
  wire data_out_130;
  wire data_in_7_IBUF_131;
  wire \Mmux_counter[2]_data_in[7]_Mux_2_o_3_132 ;
  wire \Mmux_counter[2]_data_in[7]_Mux_2_o_4_133 ;
  wire \ProtoComp3.INTERMDISABLE_GND.0 ;
  wire \start/ProtoComp3.INTERMDISABLE_GND.0 ;
  wire \data_in<0>/ProtoComp3.INTERMDISABLE_GND.0 ;
  wire \data_in<1>/ProtoComp3.INTERMDISABLE_GND.0 ;
  wire \data_in<2>/ProtoComp3.INTERMDISABLE_GND.0 ;
  wire \data_in<3>/ProtoComp3.INTERMDISABLE_GND.0 ;
  wire \data_in<4>/ProtoComp3.INTERMDISABLE_GND.0 ;
  wire \data_in<5>/ProtoComp3.INTERMDISABLE_GND.0 ;
  wire \reset/ProtoComp3.INTERMDISABLE_GND.0 ;
  wire \data_in<6>/ProtoComp3.INTERMDISABLE_GND.0 ;
  wire \data_in<7>/ProtoComp3.INTERMDISABLE_GND.0 ;
  wire data_out_rstpot_55;
  wire done_flag_glue_set_64;
  wire counter_0_rstpot_82;
  wire \counter<2>_pack_5 ;
  wire counter_2_rstpot_72;
  wire counter_1_rstpot_71;
  wire done_glue_set_92;
  wire \NlwBufferSignal_done_transmit_OBUF/I ;
  wire \NlwBufferSignal_serial_data_out_OBUF/I ;
  wire \NlwBufferSignal_clk_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_data_out/CLK ;
  wire \NlwBufferSignal_done_flag/CLK ;
  wire \NlwBufferSignal_counter_1/CLK ;
  wire \NlwBufferSignal_counter_2/CLK ;
  wire \NlwBufferSignal_counter_0/CLK ;
  wire \NlwBufferSignal_done/CLK ;
  wire VCC;
  wire GND;
  wire [2 : 0] counter;
  initial $sdf_annotate("netgen/par/Serializer_timesim.sdf");
  X_IPAD #(
    .LOC ( "IOB_X0Y73" ))
  clk_4 (
    .PAD(clk)
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y73" ))
  \ProtoComp3.INTERMDISABLE_GND  (
    .O(\ProtoComp3.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y73" ))
  \clk_BUFGP/IBUFG  (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\ProtoComp3.INTERMDISABLE_GND.0 ),
    .O(\clk_BUFGP/IBUFG_122 ),
    .I(clk),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y3" ))
  done_transmit_7 (
    .PAD(done_transmit)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y3" ))
  done_transmit_OBUF (
    .I(\NlwBufferSignal_done_transmit_OBUF/I ),
    .O(done_transmit)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y135" ))
  start_11 (
    .PAD(start)
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y135" ))
  \ProtoComp3.INTERMDISABLE_GND.1  (
    .O(\start/ProtoComp3.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y135" ))
  start_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\start/ProtoComp3.INTERMDISABLE_GND.0 ),
    .O(start_IBUF_116),
    .I(start),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y14" ))
  \data_in<0>  (
    .PAD(data_in[0])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y14" ))
  \ProtoComp3.INTERMDISABLE_GND.2  (
    .O(\data_in<0>/ProtoComp3.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y14" ))
  data_in_0_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<0>/ProtoComp3.INTERMDISABLE_GND.0 ),
    .O(data_in_0_IBUF_123),
    .I(data_in[0]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y21" ))
  \data_in<1>  (
    .PAD(data_in[1])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y21" ))
  \ProtoComp3.INTERMDISABLE_GND.3  (
    .O(\data_in<1>/ProtoComp3.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y21" ))
  data_in_1_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<1>/ProtoComp3.INTERMDISABLE_GND.0 ),
    .O(data_in_1_IBUF_124),
    .I(data_in[1]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y20" ))
  \data_in<2>  (
    .PAD(data_in[2])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y20" ))
  \ProtoComp3.INTERMDISABLE_GND.4  (
    .O(\data_in<2>/ProtoComp3.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y20" ))
  data_in_2_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<2>/ProtoComp3.INTERMDISABLE_GND.0 ),
    .O(data_in_2_IBUF_125),
    .I(data_in[2]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y19" ))
  \data_in<3>  (
    .PAD(data_in[3])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y19" ))
  \ProtoComp3.INTERMDISABLE_GND.5  (
    .O(\data_in<3>/ProtoComp3.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y19" ))
  data_in_3_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<3>/ProtoComp3.INTERMDISABLE_GND.0 ),
    .O(data_in_3_IBUF_126),
    .I(data_in[3]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y18" ))
  \data_in<4>  (
    .PAD(data_in[4])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y18" ))
  \ProtoComp3.INTERMDISABLE_GND.6  (
    .O(\data_in<4>/ProtoComp3.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y18" ))
  data_in_4_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<4>/ProtoComp3.INTERMDISABLE_GND.0 ),
    .O(data_in_4_IBUF_127),
    .I(data_in[4]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y17" ))
  \data_in<5>  (
    .PAD(data_in[5])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y17" ))
  \ProtoComp3.INTERMDISABLE_GND.7  (
    .O(\data_in<5>/ProtoComp3.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y17" ))
  data_in_5_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<5>/ProtoComp3.INTERMDISABLE_GND.0 ),
    .O(data_in_5_IBUF_128),
    .I(data_in[5]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y136" ))
  reset_39 (
    .PAD(reset)
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y136" ))
  \ProtoComp3.INTERMDISABLE_GND.8  (
    .O(\reset/ProtoComp3.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y136" ))
  reset_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\reset/ProtoComp3.INTERMDISABLE_GND.0 ),
    .O(reset_IBUF_113),
    .I(reset),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y16" ))
  \data_in<6>  (
    .PAD(data_in[6])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y16" ))
  \ProtoComp3.INTERMDISABLE_GND.9  (
    .O(\data_in<6>/ProtoComp3.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y16" ))
  data_in_6_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<6>/ProtoComp3.INTERMDISABLE_GND.0 ),
    .O(data_in_6_IBUF_129),
    .I(data_in[6]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y138" ))
  serial_data_out_46 (
    .PAD(serial_data_out)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y138" ))
  serial_data_out_OBUF (
    .I(\NlwBufferSignal_serial_data_out_OBUF/I ),
    .O(serial_data_out)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y15" ))
  \data_in<7>  (
    .PAD(data_in[7])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y15" ))
  \ProtoComp3.INTERMDISABLE_GND.10  (
    .O(\data_in<7>/ProtoComp3.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y15" ))
  data_in_7_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\data_in<7>/ProtoComp3.INTERMDISABLE_GND.0 ),
    .O(data_in_7_IBUF_131),
    .I(data_in[7]),
    .TPWRGT(1'b1)
  );
  X_CKBUF #(
    .LOC ( "BUFGCTRL_X0Y0" ))
  \clk_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_BUFGP/BUFG/IN ),
    .O(clk_BUFGP)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y52" ),
    .INIT ( 64'hF0F0CCCCAAAAFF00 ))
  \Mmux_counter[2]_data_in[7]_Mux_2_o_3  (
    .ADR3(data_in_4_IBUF_127),
    .ADR1(data_in_5_IBUF_128),
    .ADR2(data_in_7_IBUF_131),
    .ADR0(data_in_6_IBUF_129),
    .ADR4(counter[1]),
    .ADR5(counter[0]),
    .O(\Mmux_counter[2]_data_in[7]_Mux_2_o_3_132 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y54" ),
    .INIT ( 64'hCCCCF0F0FF00AAAA ))
  \Mmux_counter[2]_data_in[7]_Mux_2_o_4  (
    .ADR0(data_in_0_IBUF_123),
    .ADR2(data_in_1_IBUF_124),
    .ADR1(data_in_3_IBUF_126),
    .ADR3(data_in_2_IBUF_125),
    .ADR4(counter[1]),
    .ADR5(counter[0]),
    .O(\Mmux_counter[2]_data_in[7]_Mux_2_o_4_133 )
  );
  X_FF #(
    .LOC ( "SLICE_X46Y54" ),
    .INIT ( 1'b0 ))
  data_out (
    .CE(VCC),
    .CLK(\NlwBufferSignal_data_out/CLK ),
    .I(data_out_rstpot_55),
    .O(data_out_130),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y54" ),
    .INIT ( 64'hFFCC3300F0F0F0F0 ))
  data_out_rstpot (
    .ADR0(1'b1),
    .ADR1(counter[2]),
    .ADR5(_n0048_inv),
    .ADR2(data_out_130),
    .ADR4(\Mmux_counter[2]_data_in[7]_Mux_2_o_3_132 ),
    .ADR3(\Mmux_counter[2]_data_in[7]_Mux_2_o_4_133 ),
    .O(data_out_rstpot_55)
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y56" ),
    .INIT ( 1'b0 ))
  done_flag (
    .CE(VCC),
    .CLK(\NlwBufferSignal_done_flag/CLK ),
    .I(done_flag_glue_set_64),
    .O(done_flag_121),
    .SRST(_n0031),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y56" ),
    .INIT ( 64'hFAF0F0F0F0F0F0F0 ))
  done_flag_glue_set (
    .ADR1(1'b1),
    .ADR0(start_IBUF_116),
    .ADR4(counter[2]),
    .ADR2(done_flag_121),
    .ADR5(counter[1]),
    .ADR3(counter[0]),
    .O(done_flag_glue_set_64)
  );
  X_BUF   \counter<1>/counter<1>_DMUX_Delay  (
    .I(\counter<2>_pack_5 ),
    .O(counter[2])
  );
  X_FF #(
    .LOC ( "SLICE_X47Y55" ),
    .INIT ( 1'b0 ))
  counter_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_1/CLK ),
    .I(counter_1_rstpot_71),
    .O(counter[1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y55" ),
    .INIT ( 64'h5078507850785078 ))
  counter_1_rstpot (
    .ADR4(1'b1),
    .ADR3(reset_IBUF_113),
    .ADR1(counter[0]),
    .ADR2(counter[1]),
    .ADR0(start_IBUF_116),
    .ADR5(1'b1),
    .O(counter_1_rstpot_71)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X47Y55" ),
    .INIT ( 32'h557F0080 ))
  counter_2_rstpot (
    .ADR4(counter[2]),
    .ADR3(reset_IBUF_113),
    .ADR1(counter[0]),
    .ADR2(counter[1]),
    .ADR0(start_IBUF_116),
    .O(counter_2_rstpot_72)
  );
  X_FF #(
    .LOC ( "SLICE_X47Y55" ),
    .INIT ( 1'b0 ))
  counter_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_2/CLK ),
    .I(counter_2_rstpot_72),
    .O(\counter<2>_pack_5 ),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X47Y55" ),
    .INIT ( 1'b0 ))
  counter_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_counter_0/CLK ),
    .I(counter_0_rstpot_82),
    .O(counter[0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y55" ),
    .INIT ( 64'hF000F000F000F000 ))
  _n00311 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(start_IBUF_116),
    .ADR4(1'b1),
    .ADR3(reset_IBUF_113),
    .ADR5(1'b1),
    .O(_n0031)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X47Y55" ),
    .INIT ( 32'h0F0F00F0 ))
  counter_0_rstpot (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(start_IBUF_116),
    .ADR4(counter[0]),
    .ADR3(reset_IBUF_113),
    .O(counter_0_rstpot_82)
  );
  X_SFF #(
    .LOC ( "SLICE_X47Y56" ),
    .INIT ( 1'b0 ))
  done (
    .CE(VCC),
    .CLK(\NlwBufferSignal_done/CLK ),
    .I(done_glue_set_92),
    .O(done_120),
    .SRST(_n0031),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y56" ),
    .INIT ( 64'h000000AA000000AA ))
  _n0048_inv1 (
    .ADR1(1'b1),
    .ADR0(start_IBUF_116),
    .ADR3(reset_IBUF_113),
    .ADR2(1'b1),
    .ADR4(done_flag_121),
    .ADR5(1'b1),
    .O(_n0048_inv)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X47Y56" ),
    .INIT ( 32'hFAFAF0F0 ))
  done_glue_set (
    .ADR1(1'b1),
    .ADR0(start_IBUF_116),
    .ADR3(1'b1),
    .ADR2(done_120),
    .ADR4(done_flag_121),
    .O(done_glue_set_92)
  );
  X_BUF   \NlwBufferBlock_done_transmit_OBUF/I  (
    .I(done_120),
    .O(\NlwBufferSignal_done_transmit_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_serial_data_out_OBUF/I  (
    .I(data_out_130),
    .O(\NlwBufferSignal_serial_data_out_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_clk_BUFGP/BUFG/IN  (
    .I(\clk_BUFGP/IBUFG_122 ),
    .O(\NlwBufferSignal_clk_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_data_out/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_data_out/CLK )
  );
  X_BUF   \NlwBufferBlock_done_flag/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_done_flag/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_1/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_2/CLK )
  );
  X_BUF   \NlwBufferBlock_counter_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_counter_0/CLK )
  );
  X_BUF   \NlwBufferBlock_done/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_done/CLK )
  );
  X_ONE   NlwBlock_Serializer_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_Serializer_GND (
    .O(GND)
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

