////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: transmit_map.v
// /___/   /\     Timestamp: Tue Mar 28 12:29:03 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 2 -pcf transmit.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim transmit_map.ncd transmit_map.v 
// Device	: 7vx485tffg1761-2 (PRODUCTION 1.09 2013-06-08)
// Input file	: transmit_map.ncd
// Output file	: /homes/mmahmood/Aaron/netgen/map/transmit_map.v
// # of Modules	: 1
// Design Name	: transmit
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

module transmit (
  clkp, clkn, clicks, reset, start, transmission_status, termination_status, ser_done, tim_done, data_out, status, initialization_status, counterr
);
  input clkp;
  input clkn;
  input clicks;
  input reset;
  input start;
  output transmission_status;
  output termination_status;
  output ser_done;
  output tim_done;
  output data_out;
  output [1 : 0] status;
  output [1 : 0] initialization_status;
  output [7 : 0] counterr;
  wire \clock_divider_inst/clk_track_565 ;
  wire \clock_divider_inst/clk_track_BUFG_566 ;
  wire \clicks_BUFGP/IBUFG_567 ;
  wire clicks_BUFGP;
  wire clk_undiv;
  wire clk_undiv_BUFG_570;
  wire start_IBUF_571;
  wire init_status_FSM_FFd2_572;
  wire init_status_FSM_FFd1_573;
  wire serializer_start_574;
  wire status_d_FSM_FFd1_575;
  wire status_d_FSM_FFd2_576;
  wire _n0194;
  wire \Result<1>1_0 ;
  wire \clock_divider_inst/GND_6_o_GND_6_o_equal_3_o ;
  wire \Result<2>1_0 ;
  wire \Result<3>1_0 ;
  wire \Result<4>1_0 ;
  wire \Result<5>1_0 ;
  wire \serializer_inst/_n0031_0 ;
  wire \counter_inst/count_flag_591 ;
  wire N14;
  wire \status_d_FSM_FFd2-In1_593 ;
  wire _n0265_inv1_0;
  wire \serializer_data_in[4] ;
  wire _n0265_inv3_rstpot_596;
  wire \serializer_inst/done_597 ;
  wire timer_reset_598;
  wire N22;
  wire \timer_inst/timeout_600 ;
  wire \serializer_inst/done_flag_602 ;
  wire trans_status_604;
  wire termin_status_605;
  wire N4;
  wire \Result<0>1_0 ;
  wire \serializer_data_in[0] ;
  wire N12_0;
  wire serializer_reset_615;
  wire serializer_reset_serializer_reset_MUX_98_o;
  wire \serializer_data_in[1] ;
  wire \serializer_data_in[5] ;
  wire \timer_inst/GND_3_o_GND_3_o_equal_3_o_inv_622 ;
  wire N0;
  wire \serializer_inst/_n0046_inv ;
  wire \serializer_inst/data_out_632 ;
  wire \serializer_data_in[3] ;
  wire initialization_status_0_OBUF_634;
  wire status_0_OBUF_636;
  wire \counter_inst/count_flag_prev_count_flag_XOR_37_o ;
  wire reset_IBUF_641;
  wire \clock_divider_inst/Mcount_r_reg_cy[3] ;
  wire \clock_divider_inst/Mcount_r_reg_cy[7] ;
  wire \IBUFDS_inst/SLAVEBUF.DIFFIN_648 ;
  wire _n0337_inv1_649;
  wire \serializer_inst/Mmux_counter[2]_data_in[7]_Mux_2_o_3 ;
  wire \serializer_inst/Mmux_counter[2]_data_in[7]_Mux_2_o_4 ;
  wire N6;
  wire N24;
  wire N16;
  wire \counter_inst/count_flag_prev_655 ;
  wire N18;
  wire \timer_inst/r_reg<1>_rt_24 ;
  wire \timer_inst/r_reg<2>_rt_20 ;
  wire \Result[0] ;
  wire \Result[1] ;
  wire \Result[2] ;
  wire \Result[3] ;
  wire \timer_inst/r_reg<3>_rt_8 ;
  wire \timer_inst/r_reg<4>_rt_50 ;
  wire \timer_inst/r_reg<5>_rt_46 ;
  wire \timer_inst/r_reg<6>_rt_43 ;
  wire \Result[4] ;
  wire \Result[5] ;
  wire \Result[6] ;
  wire \clock_divider_inst/r_reg<1>_rt_67 ;
  wire \clock_divider_inst/r_reg<2>_rt_64 ;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \clock_divider_inst/r_reg<3>_rt_55 ;
  wire \clock_divider_inst/r_reg<4>_rt_96 ;
  wire \clock_divider_inst/r_reg<5>_rt_93 ;
  wire \clock_divider_inst/r_reg<6>_rt_90 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \clock_divider_inst/r_reg<7>_rt_79 ;
  wire \counter_inst/clicks_count<1>_rt_121 ;
  wire \counter_inst/clicks_count<2>_rt_117 ;
  wire \Result<0>2 ;
  wire \Result<1>2 ;
  wire \Result<2>2 ;
  wire \Result<3>2 ;
  wire \counter_inst/clicks_count<3>_rt_105 ;
  wire \counter_inst/clicks_count<4>_rt_152 ;
  wire \counter_inst/clicks_count<5>_rt_148 ;
  wire \counter_inst/clicks_count<6>_rt_144 ;
  wire \Result<4>2 ;
  wire \Result<5>2 ;
  wire \Result<6>2 ;
  wire \Result<7>2 ;
  wire \counter_inst/clicks_count<7>_rt_134 ;
  wire \ProtoComp42.INTERMDISABLE_GND.0 ;
  wire \reset/ProtoComp42.INTERMDISABLE_GND.0 ;
  wire \clicks/ProtoComp42.INTERMDISABLE_GND.0 ;
  wire \serializer_inst/Mcount_counter ;
  wire \serializer_inst/counter<1>_pack_3 ;
  wire \serializer_inst/Mcount_counter1 ;
  wire \serializer_inst/Mcount_counter2 ;
  wire \serializer_inst/done_flag_glue_set_240 ;
  wire \serializer_inst/done_glue_set_234 ;
  wire serializer_start_rstpot_250;
  wire serializer_data_in_0_dpot_277;
  wire \serializer_data_in<3>_pack_12 ;
  wire serializer_data_in_3_dpot_269;
  wire serializer_data_in_1_dpot_268;
  wire serializer_data_in_5_dpot_259;
  wire _n0265_inv1_309;
  wire serializer_reset_rstpot_301;
  wire Result;
  wire \serializer_inst/data_out_rstpot_334 ;
  wire \init_status_FSM_FFd2-In ;
  wire \status_d_FSM_FFd2-In_342 ;
  wire \status_d_FSM_FFd1-In ;
  wire \init_status_FSM_FFd1-In ;
  wire \serializer_inst/_n0031 ;
  wire trans_status_glue_set_406;
  wire N12;
  wire timer_reset_rstpot_435;
  wire termin_status_rstpot_427;
  wire serializer_data_in_4_dpot_440;
  wire \timer_inst/timeout_rstpot_452 ;
  wire \counter_inst/count_flag_prev_rstpot_462 ;
  wire \clock_divider_inst/r_reg_1_rstpot_472 ;
  wire \clock_divider_inst/r_reg_3_rstpot_481 ;
  wire \clock_divider_inst/r_reg_5_rstpot_477 ;
  wire \clock_divider_inst/r_reg_2_rstpot_486 ;
  wire \clock_divider_inst/r_reg_4_rstpot_504 ;
  wire \clock_divider_inst/r_reg_0_rstpot_499 ;
  wire \clock_divider_inst/r_reg<8>_rt_526 ;
  wire \clock_divider_inst/r_reg<9>_rt_522 ;
  wire \clock_divider_inst/r_reg<10>_rt_519 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire \Result[10] ;
  wire \clock_divider_inst/clk_track_rstpot_536 ;
  wire GND;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_13.D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp33.CYINITGND_O_UNCONNECTED ;
  wire \NLW_timer_inst/Mcount_r_reg_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_timer_inst/Mcount_r_reg_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_timer_inst/Mcount_r_reg_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_12.C5LUT_O_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_11.B5LUT_O_UNCONNECTED ;
  wire \NLW_seq_3<3>_2.A5LUT_O_UNCONNECTED ;
  wire \NLW_timer_inst/Mcount_r_reg_xor<6>_CO[0]_UNCONNECTED ;
  wire \NLW_timer_inst/Mcount_r_reg_xor<6>_CO[1]_UNCONNECTED ;
  wire \NLW_timer_inst/Mcount_r_reg_xor<6>_CO[2]_UNCONNECTED ;
  wire \NLW_timer_inst/Mcount_r_reg_xor<6>_CO[3]_UNCONNECTED ;
  wire \NLW_timer_inst/Mcount_r_reg_xor<6>_DI[2]_UNCONNECTED ;
  wire \NLW_timer_inst/Mcount_r_reg_xor<6>_DI[3]_UNCONNECTED ;
  wire \NLW_timer_inst/Mcount_r_reg_xor<6>_O[3]_UNCONNECTED ;
  wire \NLW_timer_inst/Mcount_r_reg_xor<6>_S[3]_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_15.B5LUT_O_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_14.A5LUT_O_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_20.D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp35.CYINITGND_O_UNCONNECTED ;
  wire \NLW_clock_divider_inst/Mcount_r_reg_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_clock_divider_inst/Mcount_r_reg_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_clock_divider_inst/Mcount_r_reg_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_19.C5LUT_O_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_18.B5LUT_O_UNCONNECTED ;
  wire \NLW_seq_3<3>_3.A5LUT_O_UNCONNECTED ;
  wire VCC;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_24.D5LUT_O_UNCONNECTED ;
  wire \NLW_clock_divider_inst/Mcount_r_reg_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_clock_divider_inst/Mcount_r_reg_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_clock_divider_inst/Mcount_r_reg_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_23.C5LUT_O_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_22.B5LUT_O_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_21.A5LUT_O_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_5.D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp33.CYINITGND.1_O_UNCONNECTED ;
  wire \NLW_counter_inst/Mcount_clicks_count_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_counter_inst/Mcount_clicks_count_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_counter_inst/Mcount_clicks_count_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_4.C5LUT_O_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_3.B5LUT_O_UNCONNECTED ;
  wire \NLW_seq_3<3>.A5LUT_O_UNCONNECTED ;
  wire \NLW_counter_inst/Mcount_clicks_count_xor<7>_CO[0]_UNCONNECTED ;
  wire \NLW_counter_inst/Mcount_clicks_count_xor<7>_CO[1]_UNCONNECTED ;
  wire \NLW_counter_inst/Mcount_clicks_count_xor<7>_CO[2]_UNCONNECTED ;
  wire \NLW_counter_inst/Mcount_clicks_count_xor<7>_CO[3]_UNCONNECTED ;
  wire \NLW_counter_inst/Mcount_clicks_count_xor<7>_DI[3]_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_8.C5LUT_O_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_7.B5LUT_O_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_6.A5LUT_O_UNCONNECTED ;
  wire \NLW_clock_divider_inst/Mcount_r_reg_xor<10>_CO[0]_UNCONNECTED ;
  wire \NLW_clock_divider_inst/Mcount_r_reg_xor<10>_CO[1]_UNCONNECTED ;
  wire \NLW_clock_divider_inst/Mcount_r_reg_xor<10>_CO[2]_UNCONNECTED ;
  wire \NLW_clock_divider_inst/Mcount_r_reg_xor<10>_CO[3]_UNCONNECTED ;
  wire \NLW_clock_divider_inst/Mcount_r_reg_xor<10>_DI[2]_UNCONNECTED ;
  wire \NLW_clock_divider_inst/Mcount_r_reg_xor<10>_DI[3]_UNCONNECTED ;
  wire \NLW_clock_divider_inst/Mcount_r_reg_xor<10>_O[3]_UNCONNECTED ;
  wire \NLW_clock_divider_inst/Mcount_r_reg_xor<10>_S[3]_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_26.B5LUT_O_UNCONNECTED ;
  wire \NLW_timer_inst/Madd_r_nxt_lut<7>_25.A5LUT_O_UNCONNECTED ;
  wire [10 : 0] \clock_divider_inst/r_reg ;
  wire [2 : 0] \serializer_inst/counter ;
  wire [7 : 0] \counter_inst/clicks_count ;
  wire [6 : 0] \timer_inst/r_reg ;
  wire [3 : 3] \timer_inst/Mcount_r_reg_cy ;
  wire [3 : 3] \counter_inst/Mcount_clicks_count_cy ;
  wire [0 : 0] \timer_inst/Mcount_r_reg_lut ;
  wire [0 : 0] \clock_divider_inst/Mcount_r_reg_lut ;
  wire [0 : 0] \counter_inst/Mcount_clicks_count_lut ;
  initial $sdf_annotate("netgen/map/transmit_map.sdf");
  X_CKBUF #(
    .LOC ( "BUFGCTRL_X0Y1" ))
  \clock_divider_inst/clk_track_BUFG  (
    .I(\clock_divider_inst/clk_track_565 ),
    .O(\clock_divider_inst/clk_track_BUFG_566 )
  );
  X_CKBUF #(
    .LOC ( "BUFGCTRL_X0Y0" ))
  \clicks_BUFGP/BUFG  (
    .I(\clicks_BUFGP/IBUFG_567 ),
    .O(clicks_BUFGP)
  );
  X_CKBUF #(
    .LOC ( "BUFGCTRL_X0Y31" ))
  clk_undiv_BUFG (
    .I(clk_undiv),
    .O(clk_undiv_BUFG_570)
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y132" ),
    .INIT ( 1'b0 ))
  \timer_inst/r_reg_3  (
    .CE(\timer_inst/GND_3_o_GND_3_o_equal_3_o_inv_622 ),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\Result[3] ),
    .O(\timer_inst/r_reg [3]),
    .SRST(timer_reset_598),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y132" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \timer_inst/r_reg<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\timer_inst/r_reg [3]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\timer_inst/r_reg<3>_rt_8 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y132" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_13.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_13.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X46Y132" ))
  \ProtoComp33.CYINITGND  (
    .O(\NLW_ProtoComp33.CYINITGND_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y132" ),
    .INIT ( 1'b0 ))
  \timer_inst/r_reg_2  (
    .CE(\timer_inst/GND_3_o_GND_3_o_equal_3_o_inv_622 ),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\Result[2] ),
    .O(\timer_inst/r_reg [2]),
    .SRST(timer_reset_598),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X46Y132" ))
  \timer_inst/Mcount_r_reg_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b0),
    .CO({\timer_inst/Mcount_r_reg_cy [3], \NLW_timer_inst/Mcount_r_reg_cy<3>_CO[2]_UNCONNECTED , \NLW_timer_inst/Mcount_r_reg_cy<3>_CO[1]_UNCONNECTED 
, \NLW_timer_inst/Mcount_r_reg_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\Result[3] , \Result[2] , \Result[1] , \Result[0] }),
    .S({\timer_inst/r_reg<3>_rt_8 , \timer_inst/r_reg<2>_rt_20 , \timer_inst/r_reg<1>_rt_24 , \timer_inst/Mcount_r_reg_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y132" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \timer_inst/r_reg<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\timer_inst/r_reg [2]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\timer_inst/r_reg<2>_rt_20 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y132" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_12.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_12.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y132" ),
    .INIT ( 1'b0 ))
  \timer_inst/r_reg_1  (
    .CE(\timer_inst/GND_3_o_GND_3_o_equal_3_o_inv_622 ),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\Result[1] ),
    .O(\timer_inst/r_reg [1]),
    .SRST(timer_reset_598),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y132" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \timer_inst/r_reg<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\timer_inst/r_reg [1]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\timer_inst/r_reg<1>_rt_24 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y132" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_11.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_11.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y132" ),
    .INIT ( 1'b0 ))
  \timer_inst/r_reg_0  (
    .CE(\timer_inst/GND_3_o_GND_3_o_equal_3_o_inv_622 ),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\Result[0] ),
    .O(\timer_inst/r_reg [0]),
    .SRST(timer_reset_598),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y132" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \timer_inst/Mcount_r_reg_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\timer_inst/r_reg [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\timer_inst/Mcount_r_reg_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y132" ),
    .INIT ( 32'hFFFFFFFF ))
  \seq_3<3>_2.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_seq_3<3>_2.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y133" ),
    .INIT ( 1'b0 ))
  \timer_inst/r_reg_6  (
    .CE(\timer_inst/GND_3_o_GND_3_o_equal_3_o_inv_622 ),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\Result[6] ),
    .O(\timer_inst/r_reg [6]),
    .SRST(timer_reset_598),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X46Y133" ))
  \timer_inst/Mcount_r_reg_xor<6>  (
    .CI(\timer_inst/Mcount_r_reg_cy [3]),
    .CYINIT(1'b0),
    .CO({\NLW_timer_inst/Mcount_r_reg_xor<6>_CO[3]_UNCONNECTED , \NLW_timer_inst/Mcount_r_reg_xor<6>_CO[2]_UNCONNECTED , 
\NLW_timer_inst/Mcount_r_reg_xor<6>_CO[1]_UNCONNECTED , \NLW_timer_inst/Mcount_r_reg_xor<6>_CO[0]_UNCONNECTED }),
    .DI({\NLW_timer_inst/Mcount_r_reg_xor<6>_DI[3]_UNCONNECTED , \NLW_timer_inst/Mcount_r_reg_xor<6>_DI[2]_UNCONNECTED , 1'b0, 1'b0}),
    .O({\NLW_timer_inst/Mcount_r_reg_xor<6>_O[3]_UNCONNECTED , \Result[6] , \Result[5] , \Result[4] }),
    .S({\NLW_timer_inst/Mcount_r_reg_xor<6>_S[3]_UNCONNECTED , \timer_inst/r_reg<6>_rt_43 , \timer_inst/r_reg<5>_rt_46 , \timer_inst/r_reg<4>_rt_50 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y133" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \timer_inst/r_reg<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\timer_inst/r_reg [6]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\timer_inst/r_reg<6>_rt_43 )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y133" ),
    .INIT ( 1'b0 ))
  \timer_inst/r_reg_5  (
    .CE(\timer_inst/GND_3_o_GND_3_o_equal_3_o_inv_622 ),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\Result[5] ),
    .O(\timer_inst/r_reg [5]),
    .SRST(timer_reset_598),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y133" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \timer_inst/r_reg<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\timer_inst/r_reg [5]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\timer_inst/r_reg<5>_rt_46 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y133" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_15.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_15.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y133" ),
    .INIT ( 1'b0 ))
  \timer_inst/r_reg_4  (
    .CE(\timer_inst/GND_3_o_GND_3_o_equal_3_o_inv_622 ),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\Result[4] ),
    .O(\timer_inst/r_reg [4]),
    .SRST(timer_reset_598),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y133" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \timer_inst/r_reg<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\timer_inst/r_reg [4]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\timer_inst/r_reg<4>_rt_50 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y133" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_14.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_14.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \clock_divider_inst/Mcount_r_reg_cy<3>/clock_divider_inst/Mcount_r_reg_cy<3>_DMUX_Delay  (
    .I(\Result<3>1 ),
    .O(\Result<3>1_0 )
  );
  X_BUF   \clock_divider_inst/Mcount_r_reg_cy<3>/clock_divider_inst/Mcount_r_reg_cy<3>_CMUX_Delay  (
    .I(\Result<2>1 ),
    .O(\Result<2>1_0 )
  );
  X_BUF   \clock_divider_inst/Mcount_r_reg_cy<3>/clock_divider_inst/Mcount_r_reg_cy<3>_BMUX_Delay  (
    .I(\Result<1>1 ),
    .O(\Result<1>1_0 )
  );
  X_BUF   \clock_divider_inst/Mcount_r_reg_cy<3>/clock_divider_inst/Mcount_r_reg_cy<3>_AMUX_Delay  (
    .I(\Result<0>1 ),
    .O(\Result<0>1_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X108Y205" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clock_divider_inst/r_reg<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\clock_divider_inst/r_reg [3]),
    .ADR5(1'b1),
    .O(\clock_divider_inst/r_reg<3>_rt_55 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X108Y205" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_20.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_20.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X108Y205" ))
  \ProtoComp35.CYINITGND  (
    .O(\NLW_ProtoComp35.CYINITGND_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X108Y205" ))
  \clock_divider_inst/Mcount_r_reg_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b0),
    .CO({\clock_divider_inst/Mcount_r_reg_cy[3] , \NLW_clock_divider_inst/Mcount_r_reg_cy<3>_CO[2]_UNCONNECTED , 
\NLW_clock_divider_inst/Mcount_r_reg_cy<3>_CO[1]_UNCONNECTED , \NLW_clock_divider_inst/Mcount_r_reg_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\Result<3>1 , \Result<2>1 , \Result<1>1 , \Result<0>1 }),
    .S({\clock_divider_inst/r_reg<3>_rt_55 , \clock_divider_inst/r_reg<2>_rt_64 , \clock_divider_inst/r_reg<1>_rt_67 , 
\clock_divider_inst/Mcount_r_reg_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X108Y205" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clock_divider_inst/r_reg<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\clock_divider_inst/r_reg [2]),
    .ADR5(1'b1),
    .O(\clock_divider_inst/r_reg<2>_rt_64 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X108Y205" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_19.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_19.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X108Y205" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clock_divider_inst/r_reg<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\clock_divider_inst/r_reg [1]),
    .ADR5(1'b1),
    .O(\clock_divider_inst/r_reg<1>_rt_67 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X108Y205" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_18.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_18.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X108Y205" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \clock_divider_inst/Mcount_r_reg_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\clock_divider_inst/r_reg [0]),
    .ADR5(1'b1),
    .O(\clock_divider_inst/Mcount_r_reg_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X108Y205" ),
    .INIT ( 32'hFFFFFFFF ))
  \seq_3<3>_3.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_seq_3<3>_3.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \clock_divider_inst/r_reg<7>/clock_divider_inst/r_reg<7>_BMUX_Delay  (
    .I(\Result<5>1 ),
    .O(\Result<5>1_0 )
  );
  X_BUF   \clock_divider_inst/r_reg<7>/clock_divider_inst/r_reg<7>_AMUX_Delay  (
    .I(\Result<4>1 ),
    .O(\Result<4>1_0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X108Y206" ),
    .INIT ( 1'b0 ))
  \clock_divider_inst/r_reg_7  (
    .CE(VCC),
    .CLK(clk_undiv_BUFG_570),
    .I(\Result<7>1 ),
    .O(\clock_divider_inst/r_reg [7]),
    .SRST(\clock_divider_inst/GND_6_o_GND_6_o_equal_3_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X108Y206" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \clock_divider_inst/r_reg<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\clock_divider_inst/r_reg [7]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\clock_divider_inst/r_reg<7>_rt_79 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X108Y206" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_24.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_24.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X108Y206" ),
    .INIT ( 1'b0 ))
  \clock_divider_inst/r_reg_6  (
    .CE(VCC),
    .CLK(clk_undiv_BUFG_570),
    .I(\Result<6>1 ),
    .O(\clock_divider_inst/r_reg [6]),
    .SRST(\clock_divider_inst/GND_6_o_GND_6_o_equal_3_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X108Y206" ))
  \clock_divider_inst/Mcount_r_reg_cy<7>  (
    .CI(\clock_divider_inst/Mcount_r_reg_cy[3] ),
    .CYINIT(1'b0),
    .CO({\clock_divider_inst/Mcount_r_reg_cy[7] , \NLW_clock_divider_inst/Mcount_r_reg_cy<7>_CO[2]_UNCONNECTED , 
\NLW_clock_divider_inst/Mcount_r_reg_cy<7>_CO[1]_UNCONNECTED , \NLW_clock_divider_inst/Mcount_r_reg_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\Result<7>1 , \Result<6>1 , \Result<5>1 , \Result<4>1 }),
    .S({\clock_divider_inst/r_reg<7>_rt_79 , \clock_divider_inst/r_reg<6>_rt_90 , \clock_divider_inst/r_reg<5>_rt_93 , 
\clock_divider_inst/r_reg<4>_rt_96 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X108Y206" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \clock_divider_inst/r_reg<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\clock_divider_inst/r_reg [6]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\clock_divider_inst/r_reg<6>_rt_90 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X108Y206" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_23.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_23.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X108Y206" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clock_divider_inst/r_reg<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\clock_divider_inst/r_reg [5]),
    .ADR5(1'b1),
    .O(\clock_divider_inst/r_reg<5>_rt_93 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X108Y206" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_22.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_22.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X108Y206" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \clock_divider_inst/r_reg<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\clock_divider_inst/r_reg [4]),
    .ADR5(1'b1),
    .O(\clock_divider_inst/r_reg<4>_rt_96 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X108Y206" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_21.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_21.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y137" ),
    .INIT ( 1'b0 ))
  \counter_inst/clicks_count_3  (
    .CE(\counter_inst/count_flag_prev_count_flag_XOR_37_o ),
    .CLK(clk_undiv_BUFG_570),
    .I(\Result<3>2 ),
    .O(\counter_inst/clicks_count [3]),
    .SRST(timer_reset_598),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y137" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \counter_inst/clicks_count<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\counter_inst/clicks_count [3]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\counter_inst/clicks_count<3>_rt_105 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y137" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_5.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_5.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X46Y137" ))
  \ProtoComp33.CYINITGND.1  (
    .O(\NLW_ProtoComp33.CYINITGND.1_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y137" ),
    .INIT ( 1'b0 ))
  \counter_inst/clicks_count_2  (
    .CE(\counter_inst/count_flag_prev_count_flag_XOR_37_o ),
    .CLK(clk_undiv_BUFG_570),
    .I(\Result<2>2 ),
    .O(\counter_inst/clicks_count [2]),
    .SRST(timer_reset_598),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X46Y137" ))
  \counter_inst/Mcount_clicks_count_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b0),
    .CO({\counter_inst/Mcount_clicks_count_cy [3], \NLW_counter_inst/Mcount_clicks_count_cy<3>_CO[2]_UNCONNECTED , 
\NLW_counter_inst/Mcount_clicks_count_cy<3>_CO[1]_UNCONNECTED , \NLW_counter_inst/Mcount_clicks_count_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\Result<3>2 , \Result<2>2 , \Result<1>2 , \Result<0>2 }),
    .S({\counter_inst/clicks_count<3>_rt_105 , \counter_inst/clicks_count<2>_rt_117 , \counter_inst/clicks_count<1>_rt_121 , 
\counter_inst/Mcount_clicks_count_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y137" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \counter_inst/clicks_count<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\counter_inst/clicks_count [2]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\counter_inst/clicks_count<2>_rt_117 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y137" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_4.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_4.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y137" ),
    .INIT ( 1'b0 ))
  \counter_inst/clicks_count_1  (
    .CE(\counter_inst/count_flag_prev_count_flag_XOR_37_o ),
    .CLK(clk_undiv_BUFG_570),
    .I(\Result<1>2 ),
    .O(\counter_inst/clicks_count [1]),
    .SRST(timer_reset_598),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y137" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \counter_inst/clicks_count<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\counter_inst/clicks_count [1]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\counter_inst/clicks_count<1>_rt_121 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y137" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_3.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_3.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y137" ),
    .INIT ( 1'b0 ))
  \counter_inst/clicks_count_0  (
    .CE(\counter_inst/count_flag_prev_count_flag_XOR_37_o ),
    .CLK(clk_undiv_BUFG_570),
    .I(\Result<0>2 ),
    .O(\counter_inst/clicks_count [0]),
    .SRST(timer_reset_598),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y137" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \counter_inst/Mcount_clicks_count_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\counter_inst/clicks_count [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\counter_inst/Mcount_clicks_count_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y137" ),
    .INIT ( 32'hFFFFFFFF ))
  \seq_3<3>.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_seq_3<3>.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y138" ),
    .INIT ( 1'b0 ))
  \counter_inst/clicks_count_7  (
    .CE(\counter_inst/count_flag_prev_count_flag_XOR_37_o ),
    .CLK(clk_undiv_BUFG_570),
    .I(\Result<7>2 ),
    .O(\counter_inst/clicks_count [7]),
    .SRST(timer_reset_598),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y138" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \counter_inst/clicks_count<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\counter_inst/clicks_count [7]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\counter_inst/clicks_count<7>_rt_134 )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y138" ),
    .INIT ( 1'b0 ))
  \counter_inst/clicks_count_6  (
    .CE(\counter_inst/count_flag_prev_count_flag_XOR_37_o ),
    .CLK(clk_undiv_BUFG_570),
    .I(\Result<6>2 ),
    .O(\counter_inst/clicks_count [6]),
    .SRST(timer_reset_598),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X46Y138" ))
  \counter_inst/Mcount_clicks_count_xor<7>  (
    .CI(\counter_inst/Mcount_clicks_count_cy [3]),
    .CYINIT(1'b0),
    .CO({\NLW_counter_inst/Mcount_clicks_count_xor<7>_CO[3]_UNCONNECTED , \NLW_counter_inst/Mcount_clicks_count_xor<7>_CO[2]_UNCONNECTED , 
\NLW_counter_inst/Mcount_clicks_count_xor<7>_CO[1]_UNCONNECTED , \NLW_counter_inst/Mcount_clicks_count_xor<7>_CO[0]_UNCONNECTED }),
    .DI({\NLW_counter_inst/Mcount_clicks_count_xor<7>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\Result<7>2 , \Result<6>2 , \Result<5>2 , \Result<4>2 }),
    .S({\counter_inst/clicks_count<7>_rt_134 , \counter_inst/clicks_count<6>_rt_144 , \counter_inst/clicks_count<5>_rt_148 , 
\counter_inst/clicks_count<4>_rt_152 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y138" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \counter_inst/clicks_count<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\counter_inst/clicks_count [6]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\counter_inst/clicks_count<6>_rt_144 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y138" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_8.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_8.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y138" ),
    .INIT ( 1'b0 ))
  \counter_inst/clicks_count_5  (
    .CE(\counter_inst/count_flag_prev_count_flag_XOR_37_o ),
    .CLK(clk_undiv_BUFG_570),
    .I(\Result<5>2 ),
    .O(\counter_inst/clicks_count [5]),
    .SRST(timer_reset_598),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y138" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \counter_inst/clicks_count<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\counter_inst/clicks_count [5]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\counter_inst/clicks_count<5>_rt_148 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y138" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_7.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_7.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y138" ),
    .INIT ( 1'b0 ))
  \counter_inst/clicks_count_4  (
    .CE(\counter_inst/count_flag_prev_count_flag_XOR_37_o ),
    .CLK(clk_undiv_BUFG_570),
    .I(\Result<4>2 ),
    .O(\counter_inst/clicks_count [4]),
    .SRST(timer_reset_598),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y138" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \counter_inst/clicks_count<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\counter_inst/clicks_count [4]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\counter_inst/clicks_count<4>_rt_152 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y138" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_6.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_6.A5LUT_O_UNCONNECTED )
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y142" ))
  \counterr<5>  (
    .PAD(counterr[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y142" ))
  counterr_5_OBUF (
    .I(\counter_inst/clicks_count [5]),
    .O(counterr[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y141" ))
  \counterr<6>  (
    .PAD(counterr[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y141" ))
  counterr_6_OBUF (
    .I(\counter_inst/clicks_count [6]),
    .O(counterr[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y140" ))
  \counterr<7>  (
    .PAD(counterr[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y140" ))
  counterr_7_OBUF (
    .I(\counter_inst/clicks_count [7]),
    .O(counterr[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y130" ))
  transmission_status_94 (
    .PAD(transmission_status)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y130" ))
  transmission_status_OBUF (
    .I(trans_status_604),
    .O(transmission_status)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y139" ))
  \initialization_status<0>  (
    .PAD(initialization_status[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y139" ))
  initialization_status_0_OBUF (
    .I(initialization_status_0_OBUF_634),
    .O(initialization_status[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y136" ))
  \initialization_status<1>  (
    .PAD(initialization_status[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y136" ))
  initialization_status_1_OBUF (
    .I(init_status_FSM_FFd1_573),
    .O(initialization_status[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y138" ))
  \status<0>  (
    .PAD(status[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y138" ))
  status_0_OBUF (
    .I(status_0_OBUF_636),
    .O(status[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y137" ))
  \status<1>  (
    .PAD(status[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y137" ))
  status_1_OBUF (
    .I(status_d_FSM_FFd1_575),
    .O(status[1])
  );
  X_BUF #(
    .LOC ( "IOB_X1Y275" ))
  \IBUFDS_inst/SLAVEBUF.DIFFIN  (
    .I(clkn),
    .O(\IBUFDS_inst/SLAVEBUF.DIFFIN_648 )
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y275" ))
  clkn_108 (
    .PAD(clkn)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y276" ))
  clkp_112 (
    .PAD(clkp)
  );
  X_IBUFDS_IBUFDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y276" ))
  \IBUFDS_inst/IBUFDS  (
    .IB(\IBUFDS_inst/SLAVEBUF.DIFFIN_648 ),
    .IBUFDISABLE(1'b0),
    .O(clk_undiv),
    .I(clkp),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y147" ))
  ser_done_115 (
    .PAD(ser_done)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y147" ))
  ser_done_OBUF (
    .I(\serializer_inst/done_597 ),
    .O(ser_done)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y133" ))
  tim_done_118 (
    .PAD(tim_done)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y133" ))
  tim_done_OBUF (
    .I(\timer_inst/timeout_600 ),
    .O(tim_done)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y126" ))
  start_122 (
    .PAD(start)
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y126" ))
  \ProtoComp42.INTERMDISABLE_GND  (
    .O(\ProtoComp42.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y126" ))
  start_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\ProtoComp42.INTERMDISABLE_GND.0 ),
    .O(start_IBUF_571),
    .I(start),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y4" ))
  data_out_125 (
    .PAD(data_out)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y4" ))
  data_out_OBUF (
    .I(\serializer_inst/data_out_632 ),
    .O(data_out)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y129" ))
  termination_status_128 (
    .PAD(termination_status)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y129" ))
  termination_status_OBUF (
    .I(termin_status_605),
    .O(termination_status)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y123" ))
  reset_132 (
    .PAD(reset)
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y123" ))
  \ProtoComp42.INTERMDISABLE_GND.1  (
    .O(\reset/ProtoComp42.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y123" ))
  reset_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\reset/ProtoComp42.INTERMDISABLE_GND.0 ),
    .O(reset_IBUF_641),
    .I(reset),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y148" ))
  \counterr<0>  (
    .PAD(counterr[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y148" ))
  counterr_0_OBUF (
    .I(\counter_inst/clicks_count [0]),
    .O(counterr[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y146" ))
  \counterr<1>  (
    .PAD(counterr[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y146" ))
  counterr_1_OBUF (
    .I(\counter_inst/clicks_count [1]),
    .O(counterr[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y145" ))
  \counterr<2>  (
    .PAD(counterr[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y145" ))
  counterr_2_OBUF (
    .I(\counter_inst/clicks_count [2]),
    .O(counterr[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y144" ))
  \counterr<3>  (
    .PAD(counterr[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y144" ))
  counterr_3_OBUF (
    .I(\counter_inst/clicks_count [3]),
    .O(counterr[3])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y74" ))
  clicks_148 (
    .PAD(clicks)
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y74" ))
  \ProtoComp42.INTERMDISABLE_GND.2  (
    .O(\clicks/ProtoComp42.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y74" ))
  \clicks_BUFGP/IBUFG  (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\clicks/ProtoComp42.INTERMDISABLE_GND.0 ),
    .O(\clicks_BUFGP/IBUFG_567 ),
    .I(clicks),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y143" ))
  \counterr<4>  (
    .PAD(counterr[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y143" ))
  counterr_4_OBUF (
    .I(\counter_inst/clicks_count [4]),
    .O(counterr[4])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X45Y133" ),
    .INIT ( 64'hFFFF0000FFFFFFFF ))
  \timer_inst/GND_3_o_GND_3_o_equal_3_o<9>_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\timer_inst/r_reg [3]),
    .ADR5(\timer_inst/r_reg [1]),
    .O(N0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X45Y133" ),
    .INIT ( 64'hFFFFFFFFFFFFDFFF ))
  \timer_inst/GND_3_o_GND_3_o_equal_3_o_inv  (
    .ADR0(\timer_inst/r_reg [5]),
    .ADR1(\timer_inst/r_reg [2]),
    .ADR2(\timer_inst/r_reg [6]),
    .ADR3(\timer_inst/r_reg [0]),
    .ADR4(\timer_inst/r_reg [4]),
    .ADR5(N0),
    .O(\timer_inst/GND_3_o_GND_3_o_equal_3_o_inv_622 )
  );
  X_BUF   \serializer_inst/counter<2>/serializer_inst/counter<2>_BMUX_Delay  (
    .I(\serializer_inst/counter<1>_pack_3 ),
    .O(\serializer_inst/counter [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y125" ),
    .INIT ( 1'b0 ))
  \serializer_inst/counter_2  (
    .CE(serializer_start_574),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\serializer_inst/Mcount_counter2 ),
    .O(\serializer_inst/counter [2]),
    .SRST(\serializer_inst/_n0031_0 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y125" ),
    .INIT ( 64'h0FF0FF000FF0FF00 ))
  \serializer_inst/Mcount_counter_xor<2>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\serializer_inst/counter [0]),
    .ADR3(\serializer_inst/counter [2]),
    .ADR4(\serializer_inst/counter [1]),
    .ADR5(1'b1),
    .O(\serializer_inst/Mcount_counter2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y125" ),
    .INIT ( 32'h0F0FF0F0 ))
  \serializer_inst/Mcount_counter_xor<1>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\serializer_inst/counter [0]),
    .ADR3(1'b1),
    .ADR4(\serializer_inst/counter [1]),
    .O(\serializer_inst/Mcount_counter1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y125" ),
    .INIT ( 1'b0 ))
  \serializer_inst/counter_1  (
    .CE(serializer_start_574),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\serializer_inst/Mcount_counter1 ),
    .O(\serializer_inst/counter<1>_pack_3 ),
    .SRST(\serializer_inst/_n0031_0 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y125" ),
    .INIT ( 1'b0 ))
  \serializer_inst/counter_0  (
    .CE(serializer_start_574),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\serializer_inst/Mcount_counter ),
    .O(\serializer_inst/counter [0]),
    .SRST(\serializer_inst/_n0031_0 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y125" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \serializer_inst/Mcount_counter_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\serializer_inst/counter [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\serializer_inst/Mcount_counter )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y126" ),
    .INIT ( 1'b0 ))
  \serializer_inst/done  (
    .CE(VCC),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\serializer_inst/done_glue_set_234 ),
    .O(\serializer_inst/done_597 ),
    .SRST(\serializer_inst/_n0031_0 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y126" ),
    .INIT ( 64'hFF000000FF000000 ))
  \status_d_FSM_FFd2-In_SW0_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\serializer_inst/done_597 ),
    .ADR4(termin_status_605),
    .ADR5(1'b1),
    .O(N14)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y126" ),
    .INIT ( 32'hFFC0FFC0 ))
  \serializer_inst/done_glue_set  (
    .ADR0(1'b1),
    .ADR1(serializer_start_574),
    .ADR2(\serializer_inst/done_flag_602 ),
    .ADR3(\serializer_inst/done_597 ),
    .ADR4(1'b1),
    .O(\serializer_inst/done_glue_set_234 )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y126" ),
    .INIT ( 1'b0 ))
  \serializer_inst/done_flag  (
    .CE(VCC),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\serializer_inst/done_flag_glue_set_240 ),
    .O(\serializer_inst/done_flag_602 ),
    .SRST(\serializer_inst/_n0031_0 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y126" ),
    .INIT ( 64'hFFC0FF00FF00FF00 ))
  \serializer_inst/done_flag_glue_set  (
    .ADR0(1'b1),
    .ADR1(serializer_start_574),
    .ADR2(\serializer_inst/counter [2]),
    .ADR3(\serializer_inst/done_flag_602 ),
    .ADR4(\serializer_inst/counter [1]),
    .ADR5(\serializer_inst/counter [0]),
    .O(\serializer_inst/done_flag_glue_set_240 )
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y127" ),
    .INIT ( 1'b0 ))
  serializer_start (
    .CE(VCC),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(serializer_start_rstpot_250),
    .O(serializer_start_574),
    .SRST(_n0194),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y127" ),
    .INIT ( 64'hFF00FF00FF00FF02 ))
  serializer_start_rstpot (
    .ADR0(start_IBUF_571),
    .ADR1(init_status_FSM_FFd2_572),
    .ADR2(init_status_FSM_FFd1_573),
    .ADR3(serializer_start_574),
    .ADR4(status_d_FSM_FFd1_575),
    .ADR5(status_d_FSM_FFd2_576),
    .O(serializer_start_rstpot_250)
  );
  X_BUF   \serializer_data_in<5>/serializer_data_in<5>_CMUX_Delay  (
    .I(\serializer_data_in<3>_pack_12 ),
    .O(\serializer_data_in[3] )
  );
  X_FF #(
    .LOC ( "SLICE_X46Y128" ),
    .INIT ( 1'b0 ))
  serializer_data_in_5 (
    .CE(_n0265_inv1_0),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(serializer_data_in_5_dpot_259),
    .O(\serializer_data_in[5] ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y128" ),
    .INIT ( 64'h00000F0F00000F0F ))
  timer_reset_rstpot_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(status_d_FSM_FFd1_575),
    .ADR3(1'b1),
    .ADR4(status_d_FSM_FFd2_576),
    .ADR5(1'b1),
    .O(N22)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y128" ),
    .INIT ( 32'hBF8CFBC8 ))
  serializer_data_in_5_dpot (
    .ADR0(init_status_FSM_FFd1_573),
    .ADR1(_n0265_inv3_rstpot_596),
    .ADR2(status_d_FSM_FFd1_575),
    .ADR3(\serializer_data_in[5] ),
    .ADR4(status_d_FSM_FFd2_576),
    .O(serializer_data_in_5_dpot_259)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y128" ),
    .INIT ( 1'b0 ))
  serializer_data_in_1 (
    .CE(_n0265_inv1_0),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(serializer_data_in_1_dpot_268),
    .O(\serializer_data_in[1] ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y128" ),
    .INIT ( 64'hC3C3FF00C3C3FF00 ))
  serializer_data_in_1_dpot (
    .ADR0(1'b1),
    .ADR1(status_d_FSM_FFd1_575),
    .ADR2(status_d_FSM_FFd2_576),
    .ADR3(\serializer_data_in[1] ),
    .ADR4(_n0265_inv3_rstpot_596),
    .ADR5(1'b1),
    .O(serializer_data_in_1_dpot_268)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y128" ),
    .INIT ( 32'h3C3CAAAA ))
  serializer_data_in_3_dpot (
    .ADR0(\serializer_data_in[3] ),
    .ADR1(status_d_FSM_FFd1_575),
    .ADR2(status_d_FSM_FFd2_576),
    .ADR3(1'b1),
    .ADR4(_n0265_inv3_rstpot_596),
    .O(serializer_data_in_3_dpot_269)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y128" ),
    .INIT ( 1'b0 ))
  serializer_data_in_3 (
    .CE(_n0265_inv1_0),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(serializer_data_in_3_dpot_269),
    .O(\serializer_data_in<3>_pack_12 ),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y128" ),
    .INIT ( 1'b0 ))
  serializer_data_in_0 (
    .CE(_n0265_inv1_0),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(serializer_data_in_0_dpot_277),
    .O(\serializer_data_in[0] ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y128" ),
    .INIT ( 64'h3F3FF3F3FF00FF00 ))
  serializer_data_in_0_dpot (
    .ADR0(1'b1),
    .ADR1(init_status_FSM_FFd1_573),
    .ADR2(status_d_FSM_FFd1_575),
    .ADR3(\serializer_data_in[0] ),
    .ADR4(status_d_FSM_FFd2_576),
    .ADR5(_n0265_inv3_rstpot_596),
    .O(serializer_data_in_0_dpot_277)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y128" ),
    .INIT ( 64'h8888FFFF8888000F ))
  _n0265_inv3_rstpot (
    .ADR0(trans_status_604),
    .ADR1(\serializer_inst/done_597 ),
    .ADR2(init_status_FSM_FFd2_572),
    .ADR3(init_status_FSM_FFd1_573),
    .ADR4(status_d_FSM_FFd2_576),
    .ADR5(\status_d_FSM_FFd2-In1_593 ),
    .O(_n0265_inv3_rstpot_596)
  );
  X_BUF   \serializer_reset/serializer_reset_AMUX_Delay  (
    .I(_n0265_inv1_309),
    .O(_n0265_inv1_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y129" ),
    .INIT ( 64'hF3F3FFFFF3F300FF ))
  _n0337_inv1 (
    .ADR0(1'b1),
    .ADR1(trans_status_604),
    .ADR2(\serializer_inst/done_597 ),
    .ADR3(init_status_FSM_FFd1_573),
    .ADR4(status_d_FSM_FFd2_576),
    .ADR5(\status_d_FSM_FFd2-In1_593 ),
    .O(_n0337_inv1_649)
  );
  X_SFF #(
    .LOC ( "SLICE_X46Y129" ),
    .INIT ( 1'b1 ))
  serializer_reset (
    .CE(VCC),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(serializer_reset_rstpot_301),
    .O(serializer_reset_615),
    .SSET(_n0194),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y129" ),
    .INIT ( 64'hFF2AD500FF08F700 ))
  serializer_reset_rstpot (
    .ADR0(start_IBUF_571),
    .ADR1(status_d_FSM_FFd1_575),
    .ADR2(N12_0),
    .ADR3(serializer_reset_615),
    .ADR4(serializer_reset_serializer_reset_MUX_98_o),
    .ADR5(_n0337_inv1_649),
    .O(serializer_reset_rstpot_301)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y129" ),
    .INIT ( 64'hFF000000FF000000 ))
  _n01941 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(start_IBUF_571),
    .ADR4(reset_IBUF_641),
    .ADR5(1'b1),
    .O(_n0194)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y129" ),
    .INIT ( 32'h00000F00 ))
  _n0265_inv1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(status_d_FSM_FFd1_575),
    .ADR3(start_IBUF_571),
    .ADR4(reset_IBUF_641),
    .O(_n0265_inv1_309)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 1'b0 ))
  \counter_inst/count_flag  (
    .CE(VCC),
    .CLK(clicks_BUFGP),
    .I(Result),
    .O(\counter_inst/count_flag_591 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y135" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \counter_inst/Mcount_count_flag_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\counter_inst/count_flag_591 ),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(Result)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y126" ),
    .INIT ( 64'hFF3FC303FC3CC000 ))
  \serializer_inst/Mmux_counter[2]_data_in[7]_Mux_2_o_41  (
    .ADR0(1'b1),
    .ADR1(\serializer_inst/counter [1]),
    .ADR2(\serializer_inst/counter [0]),
    .ADR3(\serializer_data_in[3] ),
    .ADR4(\serializer_data_in[1] ),
    .ADR5(\serializer_data_in[0] ),
    .O(\serializer_inst/Mmux_counter[2]_data_in[7]_Mux_2_o_4 )
  );
  X_FF #(
    .LOC ( "SLICE_X47Y126" ),
    .INIT ( 1'b0 ))
  \serializer_inst/data_out  (
    .CE(VCC),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\serializer_inst/data_out_rstpot_334 ),
    .O(\serializer_inst/data_out_632 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y126" ),
    .INIT ( 64'hFFCC3F0CF3C03300 ))
  \serializer_inst/data_out_rstpot  (
    .ADR0(1'b1),
    .ADR1(\serializer_inst/_n0046_inv ),
    .ADR2(\serializer_inst/counter [2]),
    .ADR3(\serializer_inst/data_out_632 ),
    .ADR4(\serializer_inst/Mmux_counter[2]_data_in[7]_Mux_2_o_3 ),
    .ADR5(\serializer_inst/Mmux_counter[2]_data_in[7]_Mux_2_o_4 ),
    .O(\serializer_inst/data_out_rstpot_334 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y126" ),
    .INIT ( 64'hFF3FF333CC0CC000 ))
  \serializer_inst/Mmux_counter[2]_data_in[7]_Mux_2_o_31  (
    .ADR0(1'b1),
    .ADR1(\serializer_inst/counter [0]),
    .ADR2(\serializer_inst/counter [1]),
    .ADR3(\serializer_data_in[1] ),
    .ADR4(\serializer_data_in[5] ),
    .ADR5(\serializer_data_in[4] ),
    .O(\serializer_inst/Mmux_counter[2]_data_in[7]_Mux_2_o_3 )
  );
  X_SFF #(
    .LOC ( "SLICE_X47Y127" ),
    .INIT ( 1'b0 ))
  init_status_FSM_FFd2 (
    .CE(VCC),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\init_status_FSM_FFd2-In ),
    .O(init_status_FSM_FFd2_572),
    .SRST(_n0194),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y127" ),
    .INIT ( 64'hEF00FF00FF11FF00 ))
  \init_status_FSM_FFd2-In1  (
    .ADR0(status_d_FSM_FFd1_575),
    .ADR1(status_d_FSM_FFd2_576),
    .ADR2(\serializer_inst/done_597 ),
    .ADR3(init_status_FSM_FFd2_572),
    .ADR4(start_IBUF_571),
    .ADR5(init_status_FSM_FFd1_573),
    .O(\init_status_FSM_FFd2-In )
  );
  X_SFF #(
    .LOC ( "SLICE_X47Y127" ),
    .INIT ( 1'b0 ))
  status_d_FSM_FFd2 (
    .CE(VCC),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\status_d_FSM_FFd2-In_342 ),
    .O(status_d_FSM_FFd2_576),
    .SRST(_n0194),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y127" ),
    .INIT ( 64'h7F227F007F007F00 ))
  \status_d_FSM_FFd2-In  (
    .ADR0(start_IBUF_571),
    .ADR1(status_d_FSM_FFd1_575),
    .ADR2(N14),
    .ADR3(status_d_FSM_FFd2_576),
    .ADR4(\status_d_FSM_FFd2-In1_593 ),
    .ADR5(init_status_FSM_FFd1_573),
    .O(\status_d_FSM_FFd2-In_342 )
  );
  X_BUF   \init_status_FSM_FFd1/init_status_FSM_FFd1_DMUX_Delay  (
    .I(\serializer_inst/_n0031 ),
    .O(\serializer_inst/_n0031_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y128" ),
    .INIT ( 64'h000000F0000000F0 ))
  \serializer_inst/_n0046_inv1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(serializer_start_574),
    .ADR3(serializer_reset_615),
    .ADR4(\serializer_inst/done_flag_602 ),
    .ADR5(1'b1),
    .O(\serializer_inst/_n0046_inv )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X47Y128" ),
    .INIT ( 32'hF000F000 ))
  \serializer_inst/_n00311  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(serializer_start_574),
    .ADR3(serializer_reset_615),
    .ADR4(1'b1),
    .O(\serializer_inst/_n0031 )
  );
  X_SFF #(
    .LOC ( "SLICE_X47Y128" ),
    .INIT ( 1'b0 ))
  init_status_FSM_FFd1 (
    .CE(VCC),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\init_status_FSM_FFd1-In ),
    .O(init_status_FSM_FFd1_573),
    .SRST(_n0194),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y128" ),
    .INIT ( 64'hFF10FF10EF00FF00 ))
  \init_status_FSM_FFd1-In1  (
    .ADR0(status_d_FSM_FFd1_575),
    .ADR1(status_d_FSM_FFd2_576),
    .ADR2(start_IBUF_571),
    .ADR3(init_status_FSM_FFd1_573),
    .ADR4(\timer_inst/timeout_600 ),
    .ADR5(init_status_FSM_FFd2_572),
    .O(\init_status_FSM_FFd1-In )
  );
  X_SFF #(
    .LOC ( "SLICE_X47Y128" ),
    .INIT ( 1'b0 ))
  status_d_FSM_FFd1 (
    .CE(VCC),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\status_d_FSM_FFd1-In ),
    .O(status_d_FSM_FFd1_575),
    .SRST(_n0194),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y128" ),
    .INIT ( 64'h00FFFF0000FFFF00 ))
  \status_d_status[0]1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(status_d_FSM_FFd1_575),
    .ADR4(status_d_FSM_FFd2_576),
    .ADR5(1'b1),
    .O(status_0_OBUF_636)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X47Y128" ),
    .INIT ( 32'hFF80FF00 ))
  \status_d_FSM_FFd1-In1  (
    .ADR0(start_IBUF_571),
    .ADR1(\serializer_inst/done_597 ),
    .ADR2(trans_status_604),
    .ADR3(status_d_FSM_FFd1_575),
    .ADR4(status_d_FSM_FFd2_576),
    .O(\status_d_FSM_FFd1-In )
  );
  X_BUF   \trans_status/trans_status_BMUX_Delay  (
    .I(N12),
    .O(N12_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y129" ),
    .INIT ( 64'hFFFFFFFFFFFF0111 ))
  trans_status_glue_set_SW1 (
    .ADR0(\counter_inst/clicks_count [6]),
    .ADR1(\counter_inst/clicks_count [7]),
    .ADR2(N6),
    .ADR3(\counter_inst/clicks_count [5]),
    .ADR4(init_status_FSM_FFd2_572),
    .ADR5(\timer_inst/timeout_600 ),
    .O(N24)
  );
  X_SFF #(
    .LOC ( "SLICE_X47Y129" ),
    .INIT ( 1'b0 ))
  trans_status (
    .CE(VCC),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(trans_status_glue_set_406),
    .O(trans_status_604),
    .SRST(_n0194),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y129" ),
    .INIT ( 64'hFF00FFF0FF00BF00 ))
  trans_status_glue_set (
    .ADR0(N24),
    .ADR1(init_status_FSM_FFd1_573),
    .ADR2(start_IBUF_571),
    .ADR3(trans_status_604),
    .ADR4(status_d_FSM_FFd1_575),
    .ADR5(status_d_FSM_FFd2_576),
    .O(trans_status_glue_set_406)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y129" ),
    .INIT ( 64'hFFFFFFF0FFFFFFF0 ))
  \status_d_FSM_FFd2-In1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\counter_inst/clicks_count [2]),
    .ADR3(\counter_inst/clicks_count [3]),
    .ADR4(\counter_inst/clicks_count [4]),
    .ADR5(1'b1),
    .O(N6)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X47Y129" ),
    .INIT ( 32'hBBBBBBBB ))
  _n0337_inv2_SW0 (
    .ADR0(termin_status_605),
    .ADR1(status_d_FSM_FFd2_576),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(N12)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y129" ),
    .INIT ( 64'h000000000000FFEA ))
  \status_d_FSM_FFd2-In1  (
    .ADR0(\counter_inst/clicks_count [6]),
    .ADR1(N6),
    .ADR2(\counter_inst/clicks_count [5]),
    .ADR3(\counter_inst/clicks_count [7]),
    .ADR4(\timer_inst/timeout_600 ),
    .ADR5(init_status_FSM_FFd2_572),
    .O(\status_d_FSM_FFd2-In1_593 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y130" ),
    .INIT ( 64'h3330333303000303 ))
  Mmux_serializer_reset_serializer_reset_MUX_98_o11 (
    .ADR0(1'b1),
    .ADR1(status_d_FSM_FFd1_575),
    .ADR2(status_d_FSM_FFd2_576),
    .ADR3(init_status_FSM_FFd1_573),
    .ADR4(init_status_FSM_FFd2_572),
    .ADR5(trans_status_604),
    .O(serializer_reset_serializer_reset_MUX_98_o)
  );
  X_SFF #(
    .LOC ( "SLICE_X47Y130" ),
    .INIT ( 1'b0 ))
  termin_status (
    .CE(VCC),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(termin_status_rstpot_427),
    .O(termin_status_605),
    .SRST(_n0194),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y130" ),
    .INIT ( 64'hFFC0FFC07F00FF00 ))
  termin_status_rstpot (
    .ADR0(trans_status_604),
    .ADR1(status_d_FSM_FFd2_576),
    .ADR2(start_IBUF_571),
    .ADR3(termin_status_605),
    .ADR4(\serializer_inst/done_597 ),
    .ADR5(status_d_FSM_FFd1_575),
    .O(termin_status_rstpot_427)
  );
  X_SFF #(
    .LOC ( "SLICE_X47Y130" ),
    .INIT ( 1'b1 ))
  timer_reset (
    .CE(VCC),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(timer_reset_rstpot_435),
    .O(timer_reset_598),
    .SSET(_n0194),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y130" ),
    .INIT ( 64'h7F00FF0AFF00FF00 ))
  timer_reset_rstpot (
    .ADR0(start_IBUF_571),
    .ADR1(\serializer_inst/done_597 ),
    .ADR2(init_status_FSM_FFd1_573),
    .ADR3(timer_reset_598),
    .ADR4(init_status_FSM_FFd2_572),
    .ADR5(N22),
    .O(timer_reset_rstpot_435)
  );
  X_FF #(
    .LOC ( "SLICE_X47Y131" ),
    .INIT ( 1'b0 ))
  serializer_data_in_4 (
    .CE(_n0265_inv1_0),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(serializer_data_in_4_dpot_440),
    .O(\serializer_data_in[4] ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y131" ),
    .INIT ( 64'h30300303FF00FF00 ))
  serializer_data_in_4_dpot (
    .ADR0(1'b1),
    .ADR1(init_status_FSM_FFd1_573),
    .ADR2(status_d_FSM_FFd1_575),
    .ADR3(\serializer_data_in[4] ),
    .ADR4(status_d_FSM_FFd2_576),
    .ADR5(_n0265_inv3_rstpot_596),
    .O(serializer_data_in_4_dpot_440)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y132" ),
    .INIT ( 64'hFFFFFF00FFFFFFFF ))
  \timer_inst/GND_3_o_GND_3_o_equal_3_o<9>_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\timer_inst/r_reg [2]),
    .ADR4(\timer_inst/r_reg [4]),
    .ADR5(\timer_inst/r_reg [5]),
    .O(N16)
  );
  X_FF #(
    .LOC ( "SLICE_X47Y132" ),
    .INIT ( 1'b0 ))
  \timer_inst/timeout  (
    .CE(VCC),
    .CLK(\clock_divider_inst/clk_track_BUFG_566 ),
    .I(\timer_inst/timeout_rstpot_452 ),
    .O(\timer_inst/timeout_600 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y132" ),
    .INIT ( 64'h5500550055105500 ))
  \timer_inst/timeout_rstpot  (
    .ADR0(timer_reset_598),
    .ADR1(N0),
    .ADR2(\timer_inst/r_reg [0]),
    .ADR3(\timer_inst/timeout_600 ),
    .ADR4(\timer_inst/r_reg [6]),
    .ADR5(N16),
    .O(\timer_inst/timeout_rstpot_452 )
  );
  X_FF #(
    .LOC ( "SLICE_X47Y135" ),
    .INIT ( 1'b0 ))
  \counter_inst/count_flag_prev  (
    .CE(VCC),
    .CLK(clk_undiv_BUFG_570),
    .I(\counter_inst/count_flag_prev_rstpot_462 ),
    .O(\counter_inst/count_flag_prev_655 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y135" ),
    .INIT ( 64'h00FFFF0000FFFF00 ))
  \counter_inst/Mxor_count_flag_prev_count_flag_XOR_37_o_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\counter_inst/count_flag_prev_655 ),
    .ADR4(\counter_inst/count_flag_591 ),
    .ADR5(1'b1),
    .O(\counter_inst/count_flag_prev_count_flag_XOR_37_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X47Y135" ),
    .INIT ( 32'hFF0FF000 ))
  \counter_inst/count_flag_prev_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(timer_reset_598),
    .ADR3(\counter_inst/count_flag_prev_655 ),
    .ADR4(\counter_inst/count_flag_591 ),
    .O(\counter_inst/count_flag_prev_rstpot_462 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y139" ),
    .INIT ( 64'h0000FFFFFFFF0000 ))
  \init_status_initialization_status[0]1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(init_status_FSM_FFd2_572),
    .ADR5(init_status_FSM_FFd1_573),
    .O(initialization_status_0_OBUF_634)
  );
  X_FF #(
    .LOC ( "SLICE_X107Y205" ),
    .INIT ( 1'b0 ))
  \clock_divider_inst/r_reg_1  (
    .CE(VCC),
    .CLK(clk_undiv_BUFG_570),
    .I(\clock_divider_inst/r_reg_1_rstpot_472 ),
    .O(\clock_divider_inst/r_reg [1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X107Y205" ),
    .INIT ( 64'h00000000FFFF0000 ))
  \clock_divider_inst/r_reg_1_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<1>1_0 ),
    .ADR5(\clock_divider_inst/GND_6_o_GND_6_o_equal_3_o ),
    .O(\clock_divider_inst/r_reg_1_rstpot_472 )
  );
  X_FF #(
    .LOC ( "SLICE_X109Y205" ),
    .INIT ( 1'b0 ))
  \clock_divider_inst/r_reg_5  (
    .CE(VCC),
    .CLK(clk_undiv_BUFG_570),
    .I(\clock_divider_inst/r_reg_5_rstpot_477 ),
    .O(\clock_divider_inst/r_reg [5]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X109Y205" ),
    .INIT ( 64'h00000000FFFF0000 ))
  \clock_divider_inst/r_reg_5_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<5>1_0 ),
    .ADR5(\clock_divider_inst/GND_6_o_GND_6_o_equal_3_o ),
    .O(\clock_divider_inst/r_reg_5_rstpot_477 )
  );
  X_FF #(
    .LOC ( "SLICE_X109Y205" ),
    .INIT ( 1'b0 ))
  \clock_divider_inst/r_reg_3  (
    .CE(VCC),
    .CLK(clk_undiv_BUFG_570),
    .I(\clock_divider_inst/r_reg_3_rstpot_481 ),
    .O(\clock_divider_inst/r_reg [3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X109Y205" ),
    .INIT ( 64'h00000000FFFF0000 ))
  \clock_divider_inst/r_reg_3_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<3>1_0 ),
    .ADR5(\clock_divider_inst/GND_6_o_GND_6_o_equal_3_o ),
    .O(\clock_divider_inst/r_reg_3_rstpot_481 )
  );
  X_FF #(
    .LOC ( "SLICE_X109Y206" ),
    .INIT ( 1'b0 ))
  \clock_divider_inst/r_reg_2  (
    .CE(VCC),
    .CLK(clk_undiv_BUFG_570),
    .I(\clock_divider_inst/r_reg_2_rstpot_486 ),
    .O(\clock_divider_inst/r_reg [2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X109Y206" ),
    .INIT ( 64'h00000000FFFF0000 ))
  \clock_divider_inst/r_reg_2_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<2>1_0 ),
    .ADR5(\clock_divider_inst/GND_6_o_GND_6_o_equal_3_o ),
    .O(\clock_divider_inst/r_reg_2_rstpot_486 )
  );
  X_FF #(
    .LOC ( "SLICE_X109Y207" ),
    .INIT ( 1'b0 ))
  \clock_divider_inst/r_reg_4  (
    .CE(VCC),
    .CLK(clk_undiv_BUFG_570),
    .I(\clock_divider_inst/r_reg_4_rstpot_504 ),
    .O(\clock_divider_inst/r_reg [4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X109Y207" ),
    .INIT ( 64'h00000000FFFF0000 ))
  \clock_divider_inst/r_reg_4_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<4>1_0 ),
    .ADR5(\clock_divider_inst/GND_6_o_GND_6_o_equal_3_o ),
    .O(\clock_divider_inst/r_reg_4_rstpot_504 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X109Y207" ),
    .INIT ( 64'h0000000080000000 ))
  \clock_divider_inst/GND_6_o_GND_6_o_equal_3_o<10>  (
    .ADR0(\clock_divider_inst/r_reg [0]),
    .ADR1(\clock_divider_inst/r_reg [1]),
    .ADR2(\clock_divider_inst/r_reg [9]),
    .ADR3(\clock_divider_inst/r_reg [8]),
    .ADR4(\clock_divider_inst/r_reg [3]),
    .ADR5(N4),
    .O(\clock_divider_inst/GND_6_o_GND_6_o_equal_3_o )
  );
  X_FF #(
    .LOC ( "SLICE_X109Y207" ),
    .INIT ( 1'b0 ))
  \clock_divider_inst/r_reg_0  (
    .CE(VCC),
    .CLK(clk_undiv_BUFG_570),
    .I(\clock_divider_inst/r_reg_0_rstpot_499 ),
    .O(\clock_divider_inst/r_reg [0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X109Y207" ),
    .INIT ( 64'h00000000FFFF0000 ))
  \clock_divider_inst/r_reg_0_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Result<0>1_0 ),
    .ADR5(\clock_divider_inst/GND_6_o_GND_6_o_equal_3_o ),
    .O(\clock_divider_inst/r_reg_0_rstpot_499 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X108Y207" ),
    .INIT ( 64'hFFFFFF7FFFFFFFFF ))
  \clock_divider_inst/GND_6_o_GND_6_o_equal_3_o<10>_SW0  (
    .ADR0(\clock_divider_inst/r_reg [2]),
    .ADR1(\clock_divider_inst/r_reg [10]),
    .ADR2(\clock_divider_inst/r_reg [7]),
    .ADR3(\clock_divider_inst/r_reg [4]),
    .ADR4(\clock_divider_inst/r_reg [5]),
    .ADR5(\clock_divider_inst/r_reg [6]),
    .O(N4)
  );
  X_SFF #(
    .LOC ( "SLICE_X108Y207" ),
    .INIT ( 1'b0 ))
  \clock_divider_inst/r_reg_10  (
    .CE(VCC),
    .CLK(clk_undiv_BUFG_570),
    .I(\Result[10] ),
    .O(\clock_divider_inst/r_reg [10]),
    .SRST(\clock_divider_inst/GND_6_o_GND_6_o_equal_3_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X108Y207" ))
  \clock_divider_inst/Mcount_r_reg_xor<10>  (
    .CI(\clock_divider_inst/Mcount_r_reg_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_clock_divider_inst/Mcount_r_reg_xor<10>_CO[3]_UNCONNECTED , \NLW_clock_divider_inst/Mcount_r_reg_xor<10>_CO[2]_UNCONNECTED , 
\NLW_clock_divider_inst/Mcount_r_reg_xor<10>_CO[1]_UNCONNECTED , \NLW_clock_divider_inst/Mcount_r_reg_xor<10>_CO[0]_UNCONNECTED }),
    .DI({\NLW_clock_divider_inst/Mcount_r_reg_xor<10>_DI[3]_UNCONNECTED , \NLW_clock_divider_inst/Mcount_r_reg_xor<10>_DI[2]_UNCONNECTED , 1'b0, 1'b0
}),
    .O({\NLW_clock_divider_inst/Mcount_r_reg_xor<10>_O[3]_UNCONNECTED , \Result[10] , \Result<9>1 , \Result<8>1 }),
    .S({\NLW_clock_divider_inst/Mcount_r_reg_xor<10>_S[3]_UNCONNECTED , \clock_divider_inst/r_reg<10>_rt_519 , \clock_divider_inst/r_reg<9>_rt_522 , 
\clock_divider_inst/r_reg<8>_rt_526 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X108Y207" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \clock_divider_inst/r_reg<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\clock_divider_inst/r_reg [10]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\clock_divider_inst/r_reg<10>_rt_519 )
  );
  X_SFF #(
    .LOC ( "SLICE_X108Y207" ),
    .INIT ( 1'b0 ))
  \clock_divider_inst/r_reg_9  (
    .CE(VCC),
    .CLK(clk_undiv_BUFG_570),
    .I(\Result<9>1 ),
    .O(\clock_divider_inst/r_reg [9]),
    .SRST(\clock_divider_inst/GND_6_o_GND_6_o_equal_3_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X108Y207" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \clock_divider_inst/r_reg<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\clock_divider_inst/r_reg [9]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\clock_divider_inst/r_reg<9>_rt_522 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X108Y207" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_26.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_26.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X108Y207" ),
    .INIT ( 1'b0 ))
  \clock_divider_inst/r_reg_8  (
    .CE(VCC),
    .CLK(clk_undiv_BUFG_570),
    .I(\Result<8>1 ),
    .O(\clock_divider_inst/r_reg [8]),
    .SRST(\clock_divider_inst/GND_6_o_GND_6_o_equal_3_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X108Y207" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \clock_divider_inst/r_reg<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\clock_divider_inst/r_reg [8]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\clock_divider_inst/r_reg<8>_rt_526 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X108Y207" ),
    .INIT ( 32'h00000000 ))
  \timer_inst/Madd_r_nxt_lut<7>_25.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_timer_inst/Madd_r_nxt_lut<7>_25.A5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X108Y208" ),
    .INIT ( 64'h0000FFFFFFFFFFFF ))
  \clock_divider_inst/GND_6_o_GND_6_o_equal_3_o<10>_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\clock_divider_inst/r_reg [9]),
    .ADR5(\clock_divider_inst/r_reg [8]),
    .O(N18)
  );
  X_FF #(
    .LOC ( "SLICE_X108Y208" ),
    .INIT ( 1'b0 ))
  \clock_divider_inst/clk_track  (
    .CE(VCC),
    .CLK(clk_undiv_BUFG_570),
    .I(\clock_divider_inst/clk_track_rstpot_536 ),
    .O(\clock_divider_inst/clk_track_565 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X108Y208" ),
    .INIT ( 64'hFF00FF00FF007F80 ))
  \clock_divider_inst/clk_track_rstpot  (
    .ADR0(\clock_divider_inst/r_reg [0]),
    .ADR1(\clock_divider_inst/r_reg [1]),
    .ADR2(\clock_divider_inst/r_reg [3]),
    .ADR3(\clock_divider_inst/clk_track_565 ),
    .ADR4(N4),
    .ADR5(N18),
    .O(\clock_divider_inst/clk_track_rstpot_536 )
  );
  X_ZERO   NlwBlock_transmit_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_transmit_VCC (
    .O(VCC)
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

