////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: TrafficController_synthesis.v
// /___/   /\     Timestamp: Wed Jul 11 20:14:12 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim TrafficController.ngc TrafficController_synthesis.v 
// Device	: xc3s500e-4-fg320
// Input file	: TrafficController.ngc
// Output file	: /home/anjalee/Documents/XilinxProjects/Traffic-Light-Controller-Simulation/netgen/synthesis/TrafficController_synthesis.v
// # of Modules	: 1
// Design Name	: TrafficController
// Xilinx        : /home/anjalee/Programs/Xilinx/14.7/ISE_DS/ISE/
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

module TrafficController (
  clk, sensor, reset, Gm, Gs, W, Rm, Rs, walk_request, reprogram, Ym, Ys, time_value, time_param_selector
);
  input clk;
  input sensor;
  input reset;
  output Gm;
  output Gs;
  output W;
  output Rm;
  output Rs;
  input walk_request;
  input reprogram;
  output Ym;
  output Ys;
  input [3 : 0] time_value;
  input [1 : 0] time_param_selector;
  wire N0;
  wire N1;
  wire N12;
  wire N14;
  wire N15;
  wire N16;
  wire N17;
  wire N18;
  wire N19;
  wire clk_BUFGP_17;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<10>_rt_20 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<11>_rt_22 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<12>_rt_24 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<13>_rt_26 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<14>_rt_28 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<15>_rt_30 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<16>_rt_32 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<17>_rt_34 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<1>_rt_36 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<2>_rt_38 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<3>_rt_40 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<4>_rt_42 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<5>_rt_44 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<6>_rt_46 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<7>_rt_48 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<8>_rt_50 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_cy<9>_rt_52 ;
  wire \debouncer/reprogram_debouncer/Mcount_count_xor<18>_rt_54 ;
  wire \debouncer/reprogram_debouncer/clean_74 ;
  wire \debouncer/reprogram_debouncer/clean_not0001 ;
  wire \debouncer/reprogram_debouncer/count_cmp_eq0000 ;
  wire \debouncer/reprogram_debouncer/count_not0001 ;
  wire \debouncer/reprogram_debouncer/count_or0000 ;
  wire \debouncer/reprogram_debouncer/new_107 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<10>_rt_110 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<11>_rt_112 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<12>_rt_114 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<13>_rt_116 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<14>_rt_118 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<15>_rt_120 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<16>_rt_122 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<17>_rt_124 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<1>_rt_126 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<2>_rt_128 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<3>_rt_130 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<4>_rt_132 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<5>_rt_134 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<6>_rt_136 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<7>_rt_138 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<8>_rt_140 ;
  wire \debouncer/reset_debouncer/Mcount_count_cy<9>_rt_142 ;
  wire \debouncer/reset_debouncer/Mcount_count_xor<18>_rt_144 ;
  wire \debouncer/reset_debouncer/clean_164 ;
  wire \debouncer/reset_debouncer/clean_not0001 ;
  wire \debouncer/reset_debouncer/count_cmp_eq0000 ;
  wire \debouncer/reset_debouncer/count_not0001 ;
  wire \debouncer/reset_debouncer/count_or0000 ;
  wire \debouncer/reset_debouncer/new_197 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<10>_rt_200 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<11>_rt_202 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<12>_rt_204 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<13>_rt_206 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<14>_rt_208 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<15>_rt_210 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<16>_rt_212 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<17>_rt_214 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<1>_rt_216 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<2>_rt_218 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<3>_rt_220 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<4>_rt_222 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<5>_rt_224 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<6>_rt_226 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<7>_rt_228 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<8>_rt_230 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_cy<9>_rt_232 ;
  wire \debouncer/reset_walk_request_debouncer/Mcount_count_xor<18>_rt_234 ;
  wire \debouncer/reset_walk_request_debouncer/clean_254 ;
  wire \debouncer/reset_walk_request_debouncer/clean_not0001 ;
  wire \debouncer/reset_walk_request_debouncer/count_cmp_eq0000 ;
  wire \debouncer/reset_walk_request_debouncer/count_not0001 ;
  wire \debouncer/reset_walk_request_debouncer/count_or0000 ;
  wire \debouncer/reset_walk_request_debouncer/new_287 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<10>_rt_290 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<11>_rt_292 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<12>_rt_294 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<13>_rt_296 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<14>_rt_298 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<15>_rt_300 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<16>_rt_302 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<17>_rt_304 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<1>_rt_306 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<2>_rt_308 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<3>_rt_310 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<4>_rt_312 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<5>_rt_314 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<6>_rt_316 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<7>_rt_318 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<8>_rt_320 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_cy<9>_rt_322 ;
  wire \debouncer/traffic_sensor_debouncer/Mcount_count_xor<18>_rt_324 ;
  wire \debouncer/traffic_sensor_debouncer/clean_344 ;
  wire \debouncer/traffic_sensor_debouncer/clean_not0001 ;
  wire \debouncer/traffic_sensor_debouncer/count_cmp_eq0000 ;
  wire \debouncer/traffic_sensor_debouncer/count_not0001 ;
  wire \debouncer/traffic_sensor_debouncer/count_or0000 ;
  wire \debouncer/traffic_sensor_debouncer/new_377 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<10>_rt_380 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<11>_rt_382 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<12>_rt_384 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<13>_rt_386 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<14>_rt_388 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<15>_rt_390 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<16>_rt_392 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<17>_rt_394 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<18>_rt_396 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<19>_rt_398 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<1>_rt_400 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<20>_rt_402 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<21>_rt_404 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<22>_rt_406 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<23>_rt_408 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<2>_rt_410 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<3>_rt_412 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<4>_rt_414 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<5>_rt_416 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<6>_rt_418 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<7>_rt_420 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<8>_rt_422 ;
  wire \divider/Madd_old_counter_8_addsub0000_cy<9>_rt_424 ;
  wire \divider/Madd_old_counter_8_addsub0000_xor<24>_rt_426 ;
  wire \divider/enable_1Hz_452 ;
  wire \divider/enable_1Hz_cmp_eq0000 ;
  wire \divider/enable_1Hz_or0000 ;
  wire \divider/enable_1Hz_or0000107_468 ;
  wire \divider/enable_1Hz_or000011_469 ;
  wire \divider/enable_1Hz_or0000121_470 ;
  wire \divider/enable_1Hz_or0000148_471 ;
  wire \divider/enable_1Hz_or000016_472 ;
  wire \divider/enable_1Hz_or000031_473 ;
  wire \divider/enable_1Hz_or000057_474 ;
  wire \divider/enable_1Hz_or000070_475 ;
  wire \divider/enable_1Hz_or000094_476 ;
  wire reprogram_IBUF_503;
  wire reset_IBUF_505;
  wire sensor_IBUF_507;
  wire \synchronizer/reprogram_synchronizer/Mshreg_out_508 ;
  wire \synchronizer/reprogram_synchronizer/out_509 ;
  wire \synchronizer/reset_synchronizer/Mshreg_out_510 ;
  wire \synchronizer/reset_synchronizer/out_511 ;
  wire \synchronizer/traffic_sensor_synchronizer/Mshreg_out_512 ;
  wire \synchronizer/traffic_sensor_synchronizer/out_513 ;
  wire \synchronizer/walk_request_synchronizer/Mshreg_out_514 ;
  wire \synchronizer/walk_request_synchronizer/out_515 ;
  wire \timeParameters/Mmux_output_time_value_mux00002 ;
  wire \timeParameters/Mmux_output_time_value_mux000021_517 ;
  wire \timeParameters/Mmux_output_time_value_mux00004 ;
  wire \timeParameters/Mmux_output_time_value_mux000041_519 ;
  wire \timeParameters/Mmux_output_time_value_mux00006 ;
  wire \timeParameters/Mmux_output_time_value_mux000061_521 ;
  wire \timeParameters/Mmux_output_time_value_mux00008 ;
  wire \timeParameters/Mmux_output_time_value_mux000081_523 ;
  wire \timeParameters/output_time_value_or0000_inv ;
  wire time_param_selector_0_IBUF_559;
  wire time_param_selector_1_IBUF_560;
  wire time_value_0_IBUF_565;
  wire time_value_1_IBUF_566;
  wire time_value_2_IBUF_567;
  wire time_value_3_IBUF_568;
  wire \timer/divider_reset_573 ;
  wire \timer/divider_reset_or0000 ;
  wire \timer/expired_575 ;
  wire \timer/expired_cmp_eq0000 ;
  wire \timer/expired_mux0000 ;
  wire \timer/expired_not0001 ;
  wire \trafficControllerFSM/Gm_587 ;
  wire \trafficControllerFSM/Gs_588 ;
  wire \trafficControllerFSM/Rm_589 ;
  wire \trafficControllerFSM/Rs_590 ;
  wire \trafficControllerFSM/W_591 ;
  wire \trafficControllerFSM/Ym_592 ;
  wire \trafficControllerFSM/Ys_593 ;
  wire \trafficControllerFSM/_mux0001 ;
  wire \trafficControllerFSM/_mux0003 ;
  wire \trafficControllerFSM/_mux0004 ;
  wire \trafficControllerFSM/_mux0006 ;
  wire \trafficControllerFSM/start_timer_602 ;
  wire \trafficControllerFSM/start_timer_or0000 ;
  wire \trafficControllerFSM/start_timer_or0000_inv ;
  wire \trafficControllerFSM/state_FSM_FFd1_605 ;
  wire \trafficControllerFSM/state_FSM_FFd1-In ;
  wire \trafficControllerFSM/state_FSM_FFd2_607 ;
  wire \trafficControllerFSM/state_FSM_FFd2-In ;
  wire \trafficControllerFSM/state_FSM_FFd3_609 ;
  wire \trafficControllerFSM/state_FSM_FFd3-In ;
  wire \trafficControllerFSM/state_FSM_FFd4_611 ;
  wire \trafficControllerFSM/state_FSM_FFd4-In ;
  wire \trafficControllerFSM/state_FSM_FFd5_613 ;
  wire \trafficControllerFSM/state_FSM_FFd5-In ;
  wire \trafficControllerFSM/state_FSM_FFd6_615 ;
  wire \trafficControllerFSM/state_FSM_FFd6-In ;
  wire \trafficControllerFSM/state_FSM_FFd7_617 ;
  wire \trafficControllerFSM/state_FSM_FFd7-In ;
  wire \trafficControllerFSM/state_FSM_FFd8_619 ;
  wire \trafficControllerFSM/state_or0000 ;
  wire \trafficControllerFSM/wr_reset_621 ;
  wire \trafficControllerFSM/wr_reset_or0000 ;
  wire \walkRegister/wr_to_fsm_623 ;
  wire \walkRegister/wr_to_fsm_inv ;
  wire \walkRegister/wr_to_fsm_or0000 ;
  wire walk_request_IBUF_627;
  wire [17 : 0] \debouncer/reprogram_debouncer/Mcount_count_cy ;
  wire [0 : 0] \debouncer/reprogram_debouncer/Mcount_count_lut ;
  wire [18 : 0] \debouncer/reprogram_debouncer/Result ;
  wire [18 : 0] \debouncer/reprogram_debouncer/count ;
  wire [3 : 0] \debouncer/reprogram_debouncer/count_cmp_eq0000_wg_cy ;
  wire [4 : 0] \debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut ;
  wire [17 : 0] \debouncer/reset_debouncer/Mcount_count_cy ;
  wire [0 : 0] \debouncer/reset_debouncer/Mcount_count_lut ;
  wire [18 : 0] \debouncer/reset_debouncer/Result ;
  wire [18 : 0] \debouncer/reset_debouncer/count ;
  wire [3 : 0] \debouncer/reset_debouncer/count_cmp_eq0000_wg_cy ;
  wire [4 : 0] \debouncer/reset_debouncer/count_cmp_eq0000_wg_lut ;
  wire [17 : 0] \debouncer/reset_walk_request_debouncer/Mcount_count_cy ;
  wire [0 : 0] \debouncer/reset_walk_request_debouncer/Mcount_count_lut ;
  wire [18 : 0] \debouncer/reset_walk_request_debouncer/Result ;
  wire [18 : 0] \debouncer/reset_walk_request_debouncer/count ;
  wire [3 : 0] \debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_cy ;
  wire [4 : 0] \debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut ;
  wire [17 : 0] \debouncer/traffic_sensor_debouncer/Mcount_count_cy ;
  wire [0 : 0] \debouncer/traffic_sensor_debouncer/Mcount_count_lut ;
  wire [18 : 0] \debouncer/traffic_sensor_debouncer/Result ;
  wire [18 : 0] \debouncer/traffic_sensor_debouncer/count ;
  wire [3 : 0] \debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_cy ;
  wire [4 : 0] \debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut ;
  wire [23 : 0] \divider/Madd_old_counter_8_addsub0000_cy ;
  wire [0 : 0] \divider/Madd_old_counter_8_addsub0000_lut ;
  wire [24 : 0] \divider/counter ;
  wire [5 : 0] \divider/enable_1Hz_cmp_eq0000_wg_cy ;
  wire [6 : 0] \divider/enable_1Hz_cmp_eq0000_wg_lut ;
  wire [24 : 0] \divider/old_counter_8_addsub0000 ;
  wire [3 : 0] \timeParameters/base_time_interval ;
  wire [3 : 0] \timeParameters/base_time_interval_mux0000 ;
  wire [3 : 0] \timeParameters/extended_time_interval ;
  wire [3 : 0] \timeParameters/extended_time_interval_mux0000 ;
  wire [3 : 0] \timeParameters/output_time_value ;
  wire [3 : 0] \timeParameters/output_time_value_mux0000 ;
  wire [3 : 0] \timeParameters/yellow_time_interval ;
  wire [3 : 0] \timeParameters/yellow_time_interval_mux0000 ;
  wire [0 : 0] \timer/Msub__old_time_value_7_cy ;
  wire [3 : 1] \timer/_old_time_value_6 ;
  wire [3 : 0] \timer/time_value ;
  wire [3 : 0] \timer/time_value_mux0000 ;
  wire [1 : 0] \trafficControllerFSM/requesting_interval ;
  wire [1 : 0] \trafficControllerFSM/requesting_interval_mux0000 ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDRE   \walkRegister/wr_to_fsm  (
    .C(clk_BUFGP_17),
    .CE(\walkRegister/wr_to_fsm_inv ),
    .D(\synchronizer/walk_request_synchronizer/out_515 ),
    .R(\walkRegister/wr_to_fsm_or0000 ),
    .Q(\walkRegister/wr_to_fsm_623 )
  );
  FDE   \timeParameters/output_time_value_3  (
    .C(clk_BUFGP_17),
    .CE(\timeParameters/output_time_value_or0000_inv ),
    .D(\timeParameters/output_time_value_mux0000 [3]),
    .Q(\timeParameters/output_time_value [3])
  );
  FDE   \timeParameters/output_time_value_2  (
    .C(clk_BUFGP_17),
    .CE(\timeParameters/output_time_value_or0000_inv ),
    .D(\timeParameters/output_time_value_mux0000 [2]),
    .Q(\timeParameters/output_time_value [2])
  );
  FDE   \timeParameters/output_time_value_1  (
    .C(clk_BUFGP_17),
    .CE(\timeParameters/output_time_value_or0000_inv ),
    .D(\timeParameters/output_time_value_mux0000 [1]),
    .Q(\timeParameters/output_time_value [1])
  );
  FDE   \timeParameters/output_time_value_0  (
    .C(clk_BUFGP_17),
    .CE(\timeParameters/output_time_value_or0000_inv ),
    .D(\timeParameters/output_time_value_mux0000 [0]),
    .Q(\timeParameters/output_time_value [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \timeParameters/yellow_time_interval_3  (
    .C(clk_BUFGP_17),
    .CE(\synchronizer/reprogram_synchronizer/out_509 ),
    .D(\timeParameters/yellow_time_interval_mux0000 [3]),
    .R(\synchronizer/reset_synchronizer/out_511 ),
    .Q(\timeParameters/yellow_time_interval [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \timeParameters/yellow_time_interval_2  (
    .C(clk_BUFGP_17),
    .CE(\synchronizer/reprogram_synchronizer/out_509 ),
    .D(\timeParameters/yellow_time_interval_mux0000 [2]),
    .R(\synchronizer/reset_synchronizer/out_511 ),
    .Q(\timeParameters/yellow_time_interval [2])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \timeParameters/yellow_time_interval_1  (
    .C(clk_BUFGP_17),
    .CE(\synchronizer/reprogram_synchronizer/out_509 ),
    .D(\timeParameters/yellow_time_interval_mux0000 [1]),
    .S(\synchronizer/reset_synchronizer/out_511 ),
    .Q(\timeParameters/yellow_time_interval [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \timeParameters/yellow_time_interval_0  (
    .C(clk_BUFGP_17),
    .CE(\synchronizer/reprogram_synchronizer/out_509 ),
    .D(\timeParameters/yellow_time_interval_mux0000 [0]),
    .R(\synchronizer/reset_synchronizer/out_511 ),
    .Q(\timeParameters/yellow_time_interval [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \timeParameters/extended_time_interval_3  (
    .C(clk_BUFGP_17),
    .CE(\synchronizer/reprogram_synchronizer/out_509 ),
    .D(\timeParameters/extended_time_interval_mux0000 [3]),
    .R(\synchronizer/reset_synchronizer/out_511 ),
    .Q(\timeParameters/extended_time_interval [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \timeParameters/extended_time_interval_2  (
    .C(clk_BUFGP_17),
    .CE(\synchronizer/reprogram_synchronizer/out_509 ),
    .D(\timeParameters/extended_time_interval_mux0000 [2]),
    .R(\synchronizer/reset_synchronizer/out_511 ),
    .Q(\timeParameters/extended_time_interval [2])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \timeParameters/extended_time_interval_1  (
    .C(clk_BUFGP_17),
    .CE(\synchronizer/reprogram_synchronizer/out_509 ),
    .D(\timeParameters/extended_time_interval_mux0000 [1]),
    .S(\synchronizer/reset_synchronizer/out_511 ),
    .Q(\timeParameters/extended_time_interval [1])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \timeParameters/extended_time_interval_0  (
    .C(clk_BUFGP_17),
    .CE(\synchronizer/reprogram_synchronizer/out_509 ),
    .D(\timeParameters/extended_time_interval_mux0000 [0]),
    .S(\synchronizer/reset_synchronizer/out_511 ),
    .Q(\timeParameters/extended_time_interval [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \timeParameters/base_time_interval_3  (
    .C(clk_BUFGP_17),
    .CE(\synchronizer/reprogram_synchronizer/out_509 ),
    .D(\timeParameters/base_time_interval_mux0000 [3]),
    .R(\synchronizer/reset_synchronizer/out_511 ),
    .Q(\timeParameters/base_time_interval [3])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \timeParameters/base_time_interval_2  (
    .C(clk_BUFGP_17),
    .CE(\synchronizer/reprogram_synchronizer/out_509 ),
    .D(\timeParameters/base_time_interval_mux0000 [2]),
    .S(\synchronizer/reset_synchronizer/out_511 ),
    .Q(\timeParameters/base_time_interval [2])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \timeParameters/base_time_interval_1  (
    .C(clk_BUFGP_17),
    .CE(\synchronizer/reprogram_synchronizer/out_509 ),
    .D(\timeParameters/base_time_interval_mux0000 [1]),
    .S(\synchronizer/reset_synchronizer/out_511 ),
    .Q(\timeParameters/base_time_interval [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \timeParameters/base_time_interval_0  (
    .C(clk_BUFGP_17),
    .CE(\synchronizer/reprogram_synchronizer/out_509 ),
    .D(\timeParameters/base_time_interval_mux0000 [0]),
    .R(\synchronizer/reset_synchronizer/out_511 ),
    .Q(\timeParameters/base_time_interval [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \timer/expired  (
    .C(clk_BUFGP_17),
    .CE(\timer/expired_not0001 ),
    .D(\timer/expired_mux0000 ),
    .Q(\timer/expired_575 )
  );
  FD   \timer/time_value_3  (
    .C(clk_BUFGP_17),
    .D(\timer/time_value_mux0000 [3]),
    .Q(\timer/time_value [3])
  );
  FD   \timer/time_value_2  (
    .C(clk_BUFGP_17),
    .D(\timer/time_value_mux0000 [2]),
    .Q(\timer/time_value [2])
  );
  FD   \timer/time_value_1  (
    .C(clk_BUFGP_17),
    .D(\timer/time_value_mux0000 [1]),
    .Q(\timer/time_value [1])
  );
  FD   \timer/time_value_0  (
    .C(clk_BUFGP_17),
    .D(\timer/time_value_mux0000 [0]),
    .Q(\timer/time_value [0])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \timer/divider_reset  (
    .C(clk_BUFGP_17),
    .D(N0),
    .S(\timer/divider_reset_or0000 ),
    .Q(\timer/divider_reset_573 )
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<24>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [23]),
    .LI(\divider/Madd_old_counter_8_addsub0000_xor<24>_rt_426 ),
    .O(\divider/old_counter_8_addsub0000 [24])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<23>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [22]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<23>_rt_408 ),
    .O(\divider/old_counter_8_addsub0000 [23])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<23>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [22]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<23>_rt_408 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [23])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<22>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [21]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<22>_rt_406 ),
    .O(\divider/old_counter_8_addsub0000 [22])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<22>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [21]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<22>_rt_406 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [22])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<21>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [20]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<21>_rt_404 ),
    .O(\divider/old_counter_8_addsub0000 [21])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<21>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [20]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<21>_rt_404 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [21])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<20>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [19]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<20>_rt_402 ),
    .O(\divider/old_counter_8_addsub0000 [20])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<20>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [19]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<20>_rt_402 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [20])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<19>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [18]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<19>_rt_398 ),
    .O(\divider/old_counter_8_addsub0000 [19])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<19>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [18]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<19>_rt_398 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [19])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<18>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [17]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<18>_rt_396 ),
    .O(\divider/old_counter_8_addsub0000 [18])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<18>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [17]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<18>_rt_396 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [18])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<17>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [16]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<17>_rt_394 ),
    .O(\divider/old_counter_8_addsub0000 [17])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<17>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [16]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<17>_rt_394 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [17])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<16>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [15]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<16>_rt_392 ),
    .O(\divider/old_counter_8_addsub0000 [16])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<16>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [15]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<16>_rt_392 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [16])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<15>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [14]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<15>_rt_390 ),
    .O(\divider/old_counter_8_addsub0000 [15])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<15>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [14]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<15>_rt_390 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [15])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<14>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [13]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<14>_rt_388 ),
    .O(\divider/old_counter_8_addsub0000 [14])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<14>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [13]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<14>_rt_388 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [14])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<13>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [12]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<13>_rt_386 ),
    .O(\divider/old_counter_8_addsub0000 [13])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<13>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [12]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<13>_rt_386 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [13])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<12>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [11]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<12>_rt_384 ),
    .O(\divider/old_counter_8_addsub0000 [12])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<12>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [11]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<12>_rt_384 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [12])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<11>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [10]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<11>_rt_382 ),
    .O(\divider/old_counter_8_addsub0000 [11])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<11>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [10]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<11>_rt_382 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [11])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<10>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [9]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<10>_rt_380 ),
    .O(\divider/old_counter_8_addsub0000 [10])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<10>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [9]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<10>_rt_380 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [10])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<9>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [8]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<9>_rt_424 ),
    .O(\divider/old_counter_8_addsub0000 [9])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<9>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [8]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<9>_rt_424 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [9])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<8>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [7]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<8>_rt_422 ),
    .O(\divider/old_counter_8_addsub0000 [8])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<8>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [7]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<8>_rt_422 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [8])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<7>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [6]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<7>_rt_420 ),
    .O(\divider/old_counter_8_addsub0000 [7])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<7>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [6]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<7>_rt_420 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [7])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<6>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [5]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<6>_rt_418 ),
    .O(\divider/old_counter_8_addsub0000 [6])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<6>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [5]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<6>_rt_418 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [6])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<5>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [4]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<5>_rt_416 ),
    .O(\divider/old_counter_8_addsub0000 [5])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<5>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [4]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<5>_rt_416 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [5])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<4>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [3]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<4>_rt_414 ),
    .O(\divider/old_counter_8_addsub0000 [4])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<4>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [3]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<4>_rt_414 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [4])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<3>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [2]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<3>_rt_412 ),
    .O(\divider/old_counter_8_addsub0000 [3])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<3>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [2]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<3>_rt_412 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [3])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<2>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [1]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<2>_rt_410 ),
    .O(\divider/old_counter_8_addsub0000 [2])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<2>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [1]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<2>_rt_410 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [2])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<1>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [0]),
    .LI(\divider/Madd_old_counter_8_addsub0000_cy<1>_rt_400 ),
    .O(\divider/old_counter_8_addsub0000 [1])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<1>  (
    .CI(\divider/Madd_old_counter_8_addsub0000_cy [0]),
    .DI(N0),
    .S(\divider/Madd_old_counter_8_addsub0000_cy<1>_rt_400 ),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [1])
  );
  XORCY   \divider/Madd_old_counter_8_addsub0000_xor<0>  (
    .CI(N0),
    .LI(\divider/Madd_old_counter_8_addsub0000_lut [0]),
    .O(\divider/old_counter_8_addsub0000 [0])
  );
  MUXCY   \divider/Madd_old_counter_8_addsub0000_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\divider/Madd_old_counter_8_addsub0000_lut [0]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy [0])
  );
  FDSE   \divider/enable_1Hz  (
    .C(clk_BUFGP_17),
    .CE(\divider/enable_1Hz_or0000 ),
    .D(N0),
    .S(\divider/enable_1Hz_cmp_eq0000 ),
    .Q(\divider/enable_1Hz_452 )
  );
  FDSE   \trafficControllerFSM/state_FSM_FFd8  (
    .C(clk_BUFGP_17),
    .CE(\timer/expired_575 ),
    .D(\trafficControllerFSM/state_FSM_FFd1_605 ),
    .S(\trafficControllerFSM/state_or0000 ),
    .Q(\trafficControllerFSM/state_FSM_FFd8_619 )
  );
  FDRE   \trafficControllerFSM/state_FSM_FFd7  (
    .C(clk_BUFGP_17),
    .CE(\timer/expired_575 ),
    .D(\trafficControllerFSM/state_FSM_FFd7-In ),
    .R(\trafficControllerFSM/state_or0000 ),
    .Q(\trafficControllerFSM/state_FSM_FFd7_617 )
  );
  FDRE   \trafficControllerFSM/state_FSM_FFd6  (
    .C(clk_BUFGP_17),
    .CE(\timer/expired_575 ),
    .D(\trafficControllerFSM/state_FSM_FFd6-In ),
    .R(\trafficControllerFSM/state_or0000 ),
    .Q(\trafficControllerFSM/state_FSM_FFd6_615 )
  );
  FDRE   \trafficControllerFSM/state_FSM_FFd5  (
    .C(clk_BUFGP_17),
    .CE(\timer/expired_575 ),
    .D(\trafficControllerFSM/state_FSM_FFd5-In ),
    .R(\trafficControllerFSM/state_or0000 ),
    .Q(\trafficControllerFSM/state_FSM_FFd5_613 )
  );
  FDRE   \trafficControllerFSM/state_FSM_FFd4  (
    .C(clk_BUFGP_17),
    .CE(\timer/expired_575 ),
    .D(\trafficControllerFSM/state_FSM_FFd4-In ),
    .R(\trafficControllerFSM/state_or0000 ),
    .Q(\trafficControllerFSM/state_FSM_FFd4_611 )
  );
  FDRE   \trafficControllerFSM/state_FSM_FFd3  (
    .C(clk_BUFGP_17),
    .CE(\timer/expired_575 ),
    .D(\trafficControllerFSM/state_FSM_FFd3-In ),
    .R(\trafficControllerFSM/state_or0000 ),
    .Q(\trafficControllerFSM/state_FSM_FFd3_609 )
  );
  FDRE   \trafficControllerFSM/state_FSM_FFd2  (
    .C(clk_BUFGP_17),
    .CE(\timer/expired_575 ),
    .D(\trafficControllerFSM/state_FSM_FFd2-In ),
    .R(\trafficControllerFSM/state_or0000 ),
    .Q(\trafficControllerFSM/state_FSM_FFd2_607 )
  );
  FDRE   \trafficControllerFSM/state_FSM_FFd1  (
    .C(clk_BUFGP_17),
    .CE(\timer/expired_575 ),
    .D(\trafficControllerFSM/state_FSM_FFd1-In ),
    .R(\trafficControllerFSM/state_or0000 ),
    .Q(\trafficControllerFSM/state_FSM_FFd1_605 )
  );
  FDE   \trafficControllerFSM/Gm  (
    .C(clk_BUFGP_17),
    .CE(\trafficControllerFSM/start_timer_or0000_inv ),
    .D(\trafficControllerFSM/_mux0006 ),
    .Q(\trafficControllerFSM/Gm_587 )
  );
  FDE   \trafficControllerFSM/Ym  (
    .C(clk_BUFGP_17),
    .CE(\trafficControllerFSM/start_timer_or0000_inv ),
    .D(\trafficControllerFSM/state_FSM_FFd5_613 ),
    .Q(\trafficControllerFSM/Ym_592 )
  );
  FDE   \trafficControllerFSM/Gs  (
    .C(clk_BUFGP_17),
    .CE(\trafficControllerFSM/start_timer_or0000_inv ),
    .D(\trafficControllerFSM/_mux0003 ),
    .Q(\trafficControllerFSM/Gs_588 )
  );
  FDE   \trafficControllerFSM/Ys  (
    .C(clk_BUFGP_17),
    .CE(\trafficControllerFSM/start_timer_or0000_inv ),
    .D(\trafficControllerFSM/state_FSM_FFd1_605 ),
    .Q(\trafficControllerFSM/Ys_593 )
  );
  FDE   \trafficControllerFSM/Rm  (
    .C(clk_BUFGP_17),
    .CE(\trafficControllerFSM/start_timer_or0000_inv ),
    .D(\trafficControllerFSM/_mux0004 ),
    .Q(\trafficControllerFSM/Rm_589 )
  );
  FDE   \trafficControllerFSM/W  (
    .C(clk_BUFGP_17),
    .CE(\trafficControllerFSM/start_timer_or0000_inv ),
    .D(\trafficControllerFSM/state_FSM_FFd4_611 ),
    .Q(\trafficControllerFSM/W_591 )
  );
  FDE   \trafficControllerFSM/Rs  (
    .C(clk_BUFGP_17),
    .CE(\trafficControllerFSM/start_timer_or0000_inv ),
    .D(\trafficControllerFSM/_mux0001 ),
    .Q(\trafficControllerFSM/Rs_590 )
  );
  FDRE   \trafficControllerFSM/requesting_interval_1  (
    .C(clk_BUFGP_17),
    .CE(\timer/expired_575 ),
    .D(\trafficControllerFSM/requesting_interval_mux0000 [0]),
    .R(\trafficControllerFSM/state_or0000 ),
    .Q(\trafficControllerFSM/requesting_interval [1])
  );
  FDRE   \trafficControllerFSM/requesting_interval_0  (
    .C(clk_BUFGP_17),
    .CE(\timer/expired_575 ),
    .D(\trafficControllerFSM/requesting_interval_mux0000 [1]),
    .R(\trafficControllerFSM/state_or0000 ),
    .Q(\trafficControllerFSM/requesting_interval [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \trafficControllerFSM/wr_reset  (
    .C(clk_BUFGP_17),
    .D(N1),
    .R(\trafficControllerFSM/wr_reset_or0000 ),
    .Q(\trafficControllerFSM/wr_reset_621 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \trafficControllerFSM/start_timer  (
    .C(clk_BUFGP_17),
    .D(N0),
    .S(\trafficControllerFSM/start_timer_or0000 ),
    .Q(\trafficControllerFSM/start_timer_602 )
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<18>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [17]),
    .LI(\debouncer/reset_debouncer/Mcount_count_xor<18>_rt_144 ),
    .O(\debouncer/reset_debouncer/Result [18])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<17>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [16]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<17>_rt_124 ),
    .O(\debouncer/reset_debouncer/Result [17])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<17>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [16]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<17>_rt_124 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [17])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<16>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [15]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<16>_rt_122 ),
    .O(\debouncer/reset_debouncer/Result [16])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<16>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [15]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<16>_rt_122 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [16])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<15>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [14]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<15>_rt_120 ),
    .O(\debouncer/reset_debouncer/Result [15])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<15>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [14]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<15>_rt_120 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [15])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<14>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [13]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<14>_rt_118 ),
    .O(\debouncer/reset_debouncer/Result [14])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<14>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [13]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<14>_rt_118 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [14])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<13>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [12]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<13>_rt_116 ),
    .O(\debouncer/reset_debouncer/Result [13])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<13>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [12]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<13>_rt_116 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [13])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<12>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [11]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<12>_rt_114 ),
    .O(\debouncer/reset_debouncer/Result [12])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<12>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [11]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<12>_rt_114 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [12])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<11>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [10]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<11>_rt_112 ),
    .O(\debouncer/reset_debouncer/Result [11])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<11>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [10]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<11>_rt_112 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [11])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<10>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [9]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<10>_rt_110 ),
    .O(\debouncer/reset_debouncer/Result [10])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<10>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [9]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<10>_rt_110 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [10])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<9>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [8]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<9>_rt_142 ),
    .O(\debouncer/reset_debouncer/Result [9])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<9>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [8]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<9>_rt_142 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [9])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<8>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [7]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<8>_rt_140 ),
    .O(\debouncer/reset_debouncer/Result [8])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<8>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [7]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<8>_rt_140 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [8])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<7>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [6]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<7>_rt_138 ),
    .O(\debouncer/reset_debouncer/Result [7])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<7>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [6]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<7>_rt_138 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [7])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<6>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [5]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<6>_rt_136 ),
    .O(\debouncer/reset_debouncer/Result [6])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<6>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [5]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<6>_rt_136 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [6])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<5>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [4]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<5>_rt_134 ),
    .O(\debouncer/reset_debouncer/Result [5])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<5>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [4]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<5>_rt_134 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [5])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<4>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [3]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<4>_rt_132 ),
    .O(\debouncer/reset_debouncer/Result [4])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<4>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [3]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<4>_rt_132 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [4])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<3>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [2]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<3>_rt_130 ),
    .O(\debouncer/reset_debouncer/Result [3])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<3>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [2]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<3>_rt_130 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [3])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<2>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [1]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<2>_rt_128 ),
    .O(\debouncer/reset_debouncer/Result [2])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<2>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [1]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<2>_rt_128 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [2])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<1>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [0]),
    .LI(\debouncer/reset_debouncer/Mcount_count_cy<1>_rt_126 ),
    .O(\debouncer/reset_debouncer/Result [1])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<1>  (
    .CI(\debouncer/reset_debouncer/Mcount_count_cy [0]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/Mcount_count_cy<1>_rt_126 ),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [1])
  );
  XORCY   \debouncer/reset_debouncer/Mcount_count_xor<0>  (
    .CI(N0),
    .LI(\debouncer/reset_debouncer/Mcount_count_lut [0]),
    .O(\debouncer/reset_debouncer/Result [0])
  );
  MUXCY   \debouncer/reset_debouncer/Mcount_count_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\debouncer/reset_debouncer/Mcount_count_lut [0]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy [0])
  );
  FDRE   \debouncer/reset_debouncer/count_18  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [18]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [18])
  );
  FDRE   \debouncer/reset_debouncer/count_17  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [17]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [17])
  );
  FDRE   \debouncer/reset_debouncer/count_16  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [16]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [16])
  );
  FDRE   \debouncer/reset_debouncer/count_15  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [15]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [15])
  );
  FDRE   \debouncer/reset_debouncer/count_14  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [14]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [14])
  );
  FDRE   \debouncer/reset_debouncer/count_13  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [13]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [13])
  );
  FDRE   \debouncer/reset_debouncer/count_12  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [12]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [12])
  );
  FDRE   \debouncer/reset_debouncer/count_11  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [11]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [11])
  );
  FDRE   \debouncer/reset_debouncer/count_10  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [10]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [10])
  );
  FDRE   \debouncer/reset_debouncer/count_9  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [9]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [9])
  );
  FDRE   \debouncer/reset_debouncer/count_8  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [8]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [8])
  );
  FDRE   \debouncer/reset_debouncer/count_7  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [7]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [7])
  );
  FDRE   \debouncer/reset_debouncer/count_6  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [6]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [6])
  );
  FDRE   \debouncer/reset_debouncer/count_5  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [5]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [5])
  );
  FDRE   \debouncer/reset_debouncer/count_4  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [4]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [4])
  );
  FDRE   \debouncer/reset_debouncer/count_3  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [3]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [3])
  );
  FDRE   \debouncer/reset_debouncer/count_2  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [2]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [2])
  );
  FDRE   \debouncer/reset_debouncer/count_1  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [1]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [1])
  );
  FDRE   \debouncer/reset_debouncer/count_0  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_not0001 ),
    .D(\debouncer/reset_debouncer/Result [0]),
    .R(\debouncer/reset_debouncer/count_or0000 ),
    .Q(\debouncer/reset_debouncer/count [0])
  );
  FDE   \debouncer/reset_debouncer/clean  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/clean_not0001 ),
    .D(\debouncer/reset_debouncer/new_197 ),
    .Q(\debouncer/reset_debouncer/clean_164 )
  );
  FDE   \debouncer/reset_debouncer/new  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_debouncer/count_or0000 ),
    .D(reset_IBUF_505),
    .Q(\debouncer/reset_debouncer/new_197 )
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<18>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [17]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_xor<18>_rt_324 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [18])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<17>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [16]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<17>_rt_304 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [17])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<17>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [16]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<17>_rt_304 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [17])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<16>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [15]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<16>_rt_302 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [16])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<16>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [15]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<16>_rt_302 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [16])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<15>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [14]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<15>_rt_300 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [15])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<15>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [14]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<15>_rt_300 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [15])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<14>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [13]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<14>_rt_298 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [14])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<14>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [13]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<14>_rt_298 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [14])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<13>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [12]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<13>_rt_296 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [13])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<13>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [12]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<13>_rt_296 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [13])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<12>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [11]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<12>_rt_294 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [12])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<12>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [11]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<12>_rt_294 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [12])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<11>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [10]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<11>_rt_292 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [11])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<11>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [10]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<11>_rt_292 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [11])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<10>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [9]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<10>_rt_290 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [10])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<10>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [9]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<10>_rt_290 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [10])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<9>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [8]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<9>_rt_322 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [9])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<9>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [8]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<9>_rt_322 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [9])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<8>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [7]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<8>_rt_320 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [8])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<8>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [7]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<8>_rt_320 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [8])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<7>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [6]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<7>_rt_318 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [7])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<7>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [6]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<7>_rt_318 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [7])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<6>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [5]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<6>_rt_316 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [6])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<6>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [5]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<6>_rt_316 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [6])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<5>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [4]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<5>_rt_314 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [5])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<5>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [4]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<5>_rt_314 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [5])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<4>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [3]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<4>_rt_312 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [4])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<4>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [3]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<4>_rt_312 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [4])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<3>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [2]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<3>_rt_310 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [3])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<3>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [2]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<3>_rt_310 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [3])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<2>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [1]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<2>_rt_308 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [2])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<2>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [1]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<2>_rt_308 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [2])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<1>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [0]),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<1>_rt_306 ),
    .O(\debouncer/traffic_sensor_debouncer/Result [1])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<1>  (
    .CI(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [0]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<1>_rt_306 ),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [1])
  );
  XORCY   \debouncer/traffic_sensor_debouncer/Mcount_count_xor<0>  (
    .CI(N0),
    .LI(\debouncer/traffic_sensor_debouncer/Mcount_count_lut [0]),
    .O(\debouncer/traffic_sensor_debouncer/Result [0])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/Mcount_count_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\debouncer/traffic_sensor_debouncer/Mcount_count_lut [0]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy [0])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_18  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [18]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [18])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_17  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [17]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [17])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_16  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [16]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [16])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_15  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [15]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [15])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_14  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [14]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [14])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_13  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [13]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [13])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_12  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [12]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [12])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_11  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [11]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [11])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_10  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [10]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [10])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_9  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [9]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [9])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_8  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [8]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [8])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_7  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [7]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [7])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_6  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [6]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [6])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_5  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [5]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [5])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_4  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [4]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [4])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_3  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [3]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [3])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_2  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [2]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [2])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_1  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [1]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [1])
  );
  FDRE   \debouncer/traffic_sensor_debouncer/count_0  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/Result [0]),
    .R(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .Q(\debouncer/traffic_sensor_debouncer/count [0])
  );
  FDE   \debouncer/traffic_sensor_debouncer/clean  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/clean_not0001 ),
    .D(\debouncer/traffic_sensor_debouncer/new_377 ),
    .Q(\debouncer/traffic_sensor_debouncer/clean_344 )
  );
  FDE   \debouncer/traffic_sensor_debouncer/new  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/traffic_sensor_debouncer/count_or0000 ),
    .D(sensor_IBUF_507),
    .Q(\debouncer/traffic_sensor_debouncer/new_377 )
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<18>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [17]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_xor<18>_rt_234 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [18])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<17>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [16]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<17>_rt_214 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [17])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<17>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [16]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<17>_rt_214 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [17])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<16>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [15]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<16>_rt_212 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [16])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<16>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [15]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<16>_rt_212 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [16])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<15>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [14]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<15>_rt_210 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [15])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<15>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [14]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<15>_rt_210 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [15])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<14>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [13]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<14>_rt_208 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [14])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<14>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [13]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<14>_rt_208 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [14])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<13>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [12]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<13>_rt_206 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [13])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<13>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [12]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<13>_rt_206 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [13])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<12>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [11]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<12>_rt_204 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [12])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<12>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [11]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<12>_rt_204 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [12])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<11>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [10]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<11>_rt_202 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [11])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<11>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [10]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<11>_rt_202 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [11])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<10>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [9]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<10>_rt_200 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [10])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<10>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [9]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<10>_rt_200 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [10])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<9>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [8]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<9>_rt_232 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [9])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<9>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [8]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<9>_rt_232 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [9])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<8>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [7]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<8>_rt_230 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [8])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<8>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [7]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<8>_rt_230 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [8])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<7>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [6]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<7>_rt_228 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [7])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<7>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [6]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<7>_rt_228 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [7])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<6>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [5]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<6>_rt_226 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [6])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<6>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [5]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<6>_rt_226 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [6])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<5>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [4]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<5>_rt_224 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [5])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<5>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [4]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<5>_rt_224 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [5])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<4>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [3]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<4>_rt_222 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [4])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<4>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [3]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<4>_rt_222 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [4])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<3>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [2]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<3>_rt_220 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [3])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<3>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [2]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<3>_rt_220 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [3])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<2>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [1]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<2>_rt_218 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [2])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<2>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [1]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<2>_rt_218 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [2])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<1>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [0]),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<1>_rt_216 ),
    .O(\debouncer/reset_walk_request_debouncer/Result [1])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<1>  (
    .CI(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [0]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<1>_rt_216 ),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [1])
  );
  XORCY   \debouncer/reset_walk_request_debouncer/Mcount_count_xor<0>  (
    .CI(N0),
    .LI(\debouncer/reset_walk_request_debouncer/Mcount_count_lut [0]),
    .O(\debouncer/reset_walk_request_debouncer/Result [0])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/Mcount_count_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\debouncer/reset_walk_request_debouncer/Mcount_count_lut [0]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy [0])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_18  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [18]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [18])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_17  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [17]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [17])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_16  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [16]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [16])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_15  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [15]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [15])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_14  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [14]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [14])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_13  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [13]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [13])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_12  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [12]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [12])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_11  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [11]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [11])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_10  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [10]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [10])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_9  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [9]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [9])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_8  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [8]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [8])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_7  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [7]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [7])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_6  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [6]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [6])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_5  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [5]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [5])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_4  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [4]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [4])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_3  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [3]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [3])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_2  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [2]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [2])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_1  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [1]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [1])
  );
  FDRE   \debouncer/reset_walk_request_debouncer/count_0  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/Result [0]),
    .R(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .Q(\debouncer/reset_walk_request_debouncer/count [0])
  );
  FDE   \debouncer/reset_walk_request_debouncer/clean  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/clean_not0001 ),
    .D(\debouncer/reset_walk_request_debouncer/new_287 ),
    .Q(\debouncer/reset_walk_request_debouncer/clean_254 )
  );
  FDE   \debouncer/reset_walk_request_debouncer/new  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reset_walk_request_debouncer/count_or0000 ),
    .D(walk_request_IBUF_627),
    .Q(\debouncer/reset_walk_request_debouncer/new_287 )
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<18>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [17]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_xor<18>_rt_54 ),
    .O(\debouncer/reprogram_debouncer/Result [18])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<17>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [16]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<17>_rt_34 ),
    .O(\debouncer/reprogram_debouncer/Result [17])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<17>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [16]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<17>_rt_34 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [17])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<16>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [15]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<16>_rt_32 ),
    .O(\debouncer/reprogram_debouncer/Result [16])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<16>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [15]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<16>_rt_32 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [16])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<15>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [14]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<15>_rt_30 ),
    .O(\debouncer/reprogram_debouncer/Result [15])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<15>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [14]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<15>_rt_30 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [15])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<14>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [13]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<14>_rt_28 ),
    .O(\debouncer/reprogram_debouncer/Result [14])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<14>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [13]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<14>_rt_28 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [14])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<13>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [12]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<13>_rt_26 ),
    .O(\debouncer/reprogram_debouncer/Result [13])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<13>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [12]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<13>_rt_26 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [13])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<12>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [11]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<12>_rt_24 ),
    .O(\debouncer/reprogram_debouncer/Result [12])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<12>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [11]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<12>_rt_24 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [12])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<11>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [10]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<11>_rt_22 ),
    .O(\debouncer/reprogram_debouncer/Result [11])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<11>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [10]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<11>_rt_22 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [11])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<10>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [9]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<10>_rt_20 ),
    .O(\debouncer/reprogram_debouncer/Result [10])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<10>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [9]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<10>_rt_20 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [10])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<9>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [8]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<9>_rt_52 ),
    .O(\debouncer/reprogram_debouncer/Result [9])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<9>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [8]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<9>_rt_52 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [9])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<8>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [7]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<8>_rt_50 ),
    .O(\debouncer/reprogram_debouncer/Result [8])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<8>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [7]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<8>_rt_50 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [8])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<7>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [6]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<7>_rt_48 ),
    .O(\debouncer/reprogram_debouncer/Result [7])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<7>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [6]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<7>_rt_48 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [7])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<6>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [5]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<6>_rt_46 ),
    .O(\debouncer/reprogram_debouncer/Result [6])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<6>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [5]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<6>_rt_46 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [6])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<5>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [4]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<5>_rt_44 ),
    .O(\debouncer/reprogram_debouncer/Result [5])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<5>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [4]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<5>_rt_44 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [5])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<4>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [3]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<4>_rt_42 ),
    .O(\debouncer/reprogram_debouncer/Result [4])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<4>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [3]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<4>_rt_42 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [4])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<3>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [2]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<3>_rt_40 ),
    .O(\debouncer/reprogram_debouncer/Result [3])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<3>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [2]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<3>_rt_40 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [3])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<2>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [1]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<2>_rt_38 ),
    .O(\debouncer/reprogram_debouncer/Result [2])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<2>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [1]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<2>_rt_38 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [2])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<1>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [0]),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_cy<1>_rt_36 ),
    .O(\debouncer/reprogram_debouncer/Result [1])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<1>  (
    .CI(\debouncer/reprogram_debouncer/Mcount_count_cy [0]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/Mcount_count_cy<1>_rt_36 ),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [1])
  );
  XORCY   \debouncer/reprogram_debouncer/Mcount_count_xor<0>  (
    .CI(N0),
    .LI(\debouncer/reprogram_debouncer/Mcount_count_lut [0]),
    .O(\debouncer/reprogram_debouncer/Result [0])
  );
  MUXCY   \debouncer/reprogram_debouncer/Mcount_count_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\debouncer/reprogram_debouncer/Mcount_count_lut [0]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy [0])
  );
  FDRE   \debouncer/reprogram_debouncer/count_18  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [18]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [18])
  );
  FDRE   \debouncer/reprogram_debouncer/count_17  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [17]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [17])
  );
  FDRE   \debouncer/reprogram_debouncer/count_16  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [16]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [16])
  );
  FDRE   \debouncer/reprogram_debouncer/count_15  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [15]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [15])
  );
  FDRE   \debouncer/reprogram_debouncer/count_14  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [14]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [14])
  );
  FDRE   \debouncer/reprogram_debouncer/count_13  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [13]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [13])
  );
  FDRE   \debouncer/reprogram_debouncer/count_12  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [12]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [12])
  );
  FDRE   \debouncer/reprogram_debouncer/count_11  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [11]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [11])
  );
  FDRE   \debouncer/reprogram_debouncer/count_10  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [10]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [10])
  );
  FDRE   \debouncer/reprogram_debouncer/count_9  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [9]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [9])
  );
  FDRE   \debouncer/reprogram_debouncer/count_8  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [8]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [8])
  );
  FDRE   \debouncer/reprogram_debouncer/count_7  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [7]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [7])
  );
  FDRE   \debouncer/reprogram_debouncer/count_6  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [6]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [6])
  );
  FDRE   \debouncer/reprogram_debouncer/count_5  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [5]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [5])
  );
  FDRE   \debouncer/reprogram_debouncer/count_4  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [4]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [4])
  );
  FDRE   \debouncer/reprogram_debouncer/count_3  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [3]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [3])
  );
  FDRE   \debouncer/reprogram_debouncer/count_2  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [2]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [2])
  );
  FDRE   \debouncer/reprogram_debouncer/count_1  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [1]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [1])
  );
  FDRE   \debouncer/reprogram_debouncer/count_0  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_not0001 ),
    .D(\debouncer/reprogram_debouncer/Result [0]),
    .R(\debouncer/reprogram_debouncer/count_or0000 ),
    .Q(\debouncer/reprogram_debouncer/count [0])
  );
  FDE   \debouncer/reprogram_debouncer/clean  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/clean_not0001 ),
    .D(\debouncer/reprogram_debouncer/new_107 ),
    .Q(\debouncer/reprogram_debouncer/clean_74 )
  );
  FDE   \debouncer/reprogram_debouncer/new  (
    .C(clk_BUFGP_17),
    .CE(\debouncer/reprogram_debouncer/count_or0000 ),
    .D(reprogram_IBUF_503),
    .Q(\debouncer/reprogram_debouncer/new_107 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \divider/enable_1Hz_cmp_eq0000_wg_lut<0>  (
    .I0(\divider/old_counter_8_addsub0000 [17]),
    .I1(\divider/old_counter_8_addsub0000 [18]),
    .O(\divider/enable_1Hz_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \divider/enable_1Hz_cmp_eq0000_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\divider/enable_1Hz_cmp_eq0000_wg_lut [0]),
    .O(\divider/enable_1Hz_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \divider/enable_1Hz_cmp_eq0000_wg_lut<1>  (
    .I0(\divider/old_counter_8_addsub0000 [14]),
    .I1(\divider/old_counter_8_addsub0000 [15]),
    .I2(\divider/old_counter_8_addsub0000 [16]),
    .I3(\divider/old_counter_8_addsub0000 [19]),
    .O(\divider/enable_1Hz_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \divider/enable_1Hz_cmp_eq0000_wg_cy<1>  (
    .CI(\divider/enable_1Hz_cmp_eq0000_wg_cy [0]),
    .DI(N0),
    .S(\divider/enable_1Hz_cmp_eq0000_wg_lut [1]),
    .O(\divider/enable_1Hz_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \divider/enable_1Hz_cmp_eq0000_wg_lut<2>  (
    .I0(\divider/old_counter_8_addsub0000 [11]),
    .I1(\divider/old_counter_8_addsub0000 [12]),
    .I2(\divider/old_counter_8_addsub0000 [13]),
    .I3(\divider/old_counter_8_addsub0000 [20]),
    .O(\divider/enable_1Hz_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \divider/enable_1Hz_cmp_eq0000_wg_cy<2>  (
    .CI(\divider/enable_1Hz_cmp_eq0000_wg_cy [1]),
    .DI(N0),
    .S(\divider/enable_1Hz_cmp_eq0000_wg_lut [2]),
    .O(\divider/enable_1Hz_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \divider/enable_1Hz_cmp_eq0000_wg_lut<3>  (
    .I0(\divider/old_counter_8_addsub0000 [9]),
    .I1(\divider/old_counter_8_addsub0000 [10]),
    .I2(\divider/old_counter_8_addsub0000 [21]),
    .I3(\divider/enable_1Hz_or0000148_471 ),
    .O(\divider/enable_1Hz_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \divider/enable_1Hz_cmp_eq0000_wg_cy<3>  (
    .CI(\divider/enable_1Hz_cmp_eq0000_wg_cy [2]),
    .DI(N0),
    .S(\divider/enable_1Hz_cmp_eq0000_wg_lut [3]),
    .O(\divider/enable_1Hz_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \divider/enable_1Hz_cmp_eq0000_wg_lut<4>  (
    .I0(\divider/old_counter_8_addsub0000 [6]),
    .I1(\divider/old_counter_8_addsub0000 [7]),
    .I2(\divider/old_counter_8_addsub0000 [8]),
    .I3(\divider/old_counter_8_addsub0000 [22]),
    .O(\divider/enable_1Hz_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \divider/enable_1Hz_cmp_eq0000_wg_cy<4>  (
    .CI(\divider/enable_1Hz_cmp_eq0000_wg_cy [3]),
    .DI(N0),
    .S(\divider/enable_1Hz_cmp_eq0000_wg_lut [4]),
    .O(\divider/enable_1Hz_cmp_eq0000_wg_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \divider/enable_1Hz_cmp_eq0000_wg_lut<5>  (
    .I0(\divider/old_counter_8_addsub0000 [3]),
    .I1(\divider/old_counter_8_addsub0000 [4]),
    .I2(\divider/old_counter_8_addsub0000 [5]),
    .I3(\divider/old_counter_8_addsub0000 [23]),
    .O(\divider/enable_1Hz_cmp_eq0000_wg_lut [5])
  );
  MUXCY   \divider/enable_1Hz_cmp_eq0000_wg_cy<5>  (
    .CI(\divider/enable_1Hz_cmp_eq0000_wg_cy [4]),
    .DI(N0),
    .S(\divider/enable_1Hz_cmp_eq0000_wg_lut [5]),
    .O(\divider/enable_1Hz_cmp_eq0000_wg_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \divider/enable_1Hz_cmp_eq0000_wg_lut<6>  (
    .I0(\divider/old_counter_8_addsub0000 [0]),
    .I1(\divider/old_counter_8_addsub0000 [1]),
    .I2(\divider/old_counter_8_addsub0000 [2]),
    .I3(\divider/old_counter_8_addsub0000 [24]),
    .O(\divider/enable_1Hz_cmp_eq0000_wg_lut [6])
  );
  MUXCY   \divider/enable_1Hz_cmp_eq0000_wg_cy<6>  (
    .CI(\divider/enable_1Hz_cmp_eq0000_wg_cy [5]),
    .DI(N0),
    .S(\divider/enable_1Hz_cmp_eq0000_wg_lut [6]),
    .O(\divider/enable_1Hz_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer/reset_debouncer/count_cmp_eq0000_wg_lut<0>  (
    .I0(\debouncer/reset_debouncer/count [7]),
    .I1(\debouncer/reset_debouncer/count [4]),
    .I2(\debouncer/reset_debouncer/count [5]),
    .O(\debouncer/reset_debouncer/count_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \debouncer/reset_debouncer/count_cmp_eq0000_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\debouncer/reset_debouncer/count_cmp_eq0000_wg_lut [0]),
    .O(\debouncer/reset_debouncer/count_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \debouncer/reset_debouncer/count_cmp_eq0000_wg_lut<1>  (
    .I0(\debouncer/reset_debouncer/count [9]),
    .I1(\debouncer/reset_debouncer/count [6]),
    .I2(\debouncer/reset_debouncer/count [8]),
    .I3(\debouncer/reset_debouncer/count [3]),
    .O(\debouncer/reset_debouncer/count_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \debouncer/reset_debouncer/count_cmp_eq0000_wg_cy<1>  (
    .CI(\debouncer/reset_debouncer/count_cmp_eq0000_wg_cy [0]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/count_cmp_eq0000_wg_lut [1]),
    .O(\debouncer/reset_debouncer/count_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \debouncer/reset_debouncer/count_cmp_eq0000_wg_lut<2>  (
    .I0(\debouncer/reset_debouncer/count [12]),
    .I1(\debouncer/reset_debouncer/count [10]),
    .I2(\debouncer/reset_debouncer/count [1]),
    .I3(\debouncer/reset_debouncer/count [11]),
    .O(\debouncer/reset_debouncer/count_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \debouncer/reset_debouncer/count_cmp_eq0000_wg_cy<2>  (
    .CI(\debouncer/reset_debouncer/count_cmp_eq0000_wg_cy [1]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/count_cmp_eq0000_wg_lut [2]),
    .O(\debouncer/reset_debouncer/count_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \debouncer/reset_debouncer/count_cmp_eq0000_wg_lut<3>  (
    .I0(\debouncer/reset_debouncer/count [13]),
    .I1(\debouncer/reset_debouncer/count [14]),
    .I2(\debouncer/reset_debouncer/count [0]),
    .I3(\debouncer/reset_debouncer/count [15]),
    .O(\debouncer/reset_debouncer/count_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \debouncer/reset_debouncer/count_cmp_eq0000_wg_cy<3>  (
    .CI(\debouncer/reset_debouncer/count_cmp_eq0000_wg_cy [2]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/count_cmp_eq0000_wg_lut [3]),
    .O(\debouncer/reset_debouncer/count_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \debouncer/reset_debouncer/count_cmp_eq0000_wg_lut<4>  (
    .I0(\debouncer/reset_debouncer/count [18]),
    .I1(\debouncer/reset_debouncer/count [16]),
    .I2(\debouncer/reset_debouncer/count [17]),
    .I3(\debouncer/reset_debouncer/count [2]),
    .O(\debouncer/reset_debouncer/count_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \debouncer/reset_debouncer/count_cmp_eq0000_wg_cy<4>  (
    .CI(\debouncer/reset_debouncer/count_cmp_eq0000_wg_cy [3]),
    .DI(N0),
    .S(\debouncer/reset_debouncer/count_cmp_eq0000_wg_lut [4]),
    .O(\debouncer/reset_debouncer/count_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut<0>  (
    .I0(\debouncer/traffic_sensor_debouncer/count [7]),
    .I1(\debouncer/traffic_sensor_debouncer/count [4]),
    .I2(\debouncer/traffic_sensor_debouncer/count [5]),
    .O(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut [0]),
    .O(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut<1>  (
    .I0(\debouncer/traffic_sensor_debouncer/count [9]),
    .I1(\debouncer/traffic_sensor_debouncer/count [6]),
    .I2(\debouncer/traffic_sensor_debouncer/count [8]),
    .I3(\debouncer/traffic_sensor_debouncer/count [3]),
    .O(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_cy<1>  (
    .CI(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_cy [0]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut [1]),
    .O(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut<2>  (
    .I0(\debouncer/traffic_sensor_debouncer/count [12]),
    .I1(\debouncer/traffic_sensor_debouncer/count [10]),
    .I2(\debouncer/traffic_sensor_debouncer/count [1]),
    .I3(\debouncer/traffic_sensor_debouncer/count [11]),
    .O(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_cy<2>  (
    .CI(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_cy [1]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut [2]),
    .O(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut<3>  (
    .I0(\debouncer/traffic_sensor_debouncer/count [13]),
    .I1(\debouncer/traffic_sensor_debouncer/count [14]),
    .I2(\debouncer/traffic_sensor_debouncer/count [0]),
    .I3(\debouncer/traffic_sensor_debouncer/count [15]),
    .O(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_cy<3>  (
    .CI(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_cy [2]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut [3]),
    .O(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut<4>  (
    .I0(\debouncer/traffic_sensor_debouncer/count [18]),
    .I1(\debouncer/traffic_sensor_debouncer/count [16]),
    .I2(\debouncer/traffic_sensor_debouncer/count [17]),
    .I3(\debouncer/traffic_sensor_debouncer/count [2]),
    .O(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_cy<4>  (
    .CI(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_cy [3]),
    .DI(N0),
    .S(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000_wg_lut [4]),
    .O(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut<0>  (
    .I0(\debouncer/reset_walk_request_debouncer/count [7]),
    .I1(\debouncer/reset_walk_request_debouncer/count [4]),
    .I2(\debouncer/reset_walk_request_debouncer/count [5]),
    .O(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut [0]),
    .O(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut<1>  (
    .I0(\debouncer/reset_walk_request_debouncer/count [9]),
    .I1(\debouncer/reset_walk_request_debouncer/count [6]),
    .I2(\debouncer/reset_walk_request_debouncer/count [8]),
    .I3(\debouncer/reset_walk_request_debouncer/count [3]),
    .O(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_cy<1>  (
    .CI(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_cy [0]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut [1]),
    .O(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut<2>  (
    .I0(\debouncer/reset_walk_request_debouncer/count [12]),
    .I1(\debouncer/reset_walk_request_debouncer/count [10]),
    .I2(\debouncer/reset_walk_request_debouncer/count [1]),
    .I3(\debouncer/reset_walk_request_debouncer/count [11]),
    .O(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_cy<2>  (
    .CI(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_cy [1]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut [2]),
    .O(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut<3>  (
    .I0(\debouncer/reset_walk_request_debouncer/count [13]),
    .I1(\debouncer/reset_walk_request_debouncer/count [14]),
    .I2(\debouncer/reset_walk_request_debouncer/count [0]),
    .I3(\debouncer/reset_walk_request_debouncer/count [15]),
    .O(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_cy<3>  (
    .CI(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_cy [2]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut [3]),
    .O(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut<4>  (
    .I0(\debouncer/reset_walk_request_debouncer/count [18]),
    .I1(\debouncer/reset_walk_request_debouncer/count [16]),
    .I2(\debouncer/reset_walk_request_debouncer/count [17]),
    .I3(\debouncer/reset_walk_request_debouncer/count [2]),
    .O(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_cy<4>  (
    .CI(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_cy [3]),
    .DI(N0),
    .S(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000_wg_lut [4]),
    .O(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut<0>  (
    .I0(\debouncer/reprogram_debouncer/count [7]),
    .I1(\debouncer/reprogram_debouncer/count [4]),
    .I2(\debouncer/reprogram_debouncer/count [5]),
    .O(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \debouncer/reprogram_debouncer/count_cmp_eq0000_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut [0]),
    .O(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut<1>  (
    .I0(\debouncer/reprogram_debouncer/count [9]),
    .I1(\debouncer/reprogram_debouncer/count [6]),
    .I2(\debouncer/reprogram_debouncer/count [8]),
    .I3(\debouncer/reprogram_debouncer/count [3]),
    .O(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \debouncer/reprogram_debouncer/count_cmp_eq0000_wg_cy<1>  (
    .CI(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_cy [0]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut [1]),
    .O(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut<2>  (
    .I0(\debouncer/reprogram_debouncer/count [12]),
    .I1(\debouncer/reprogram_debouncer/count [10]),
    .I2(\debouncer/reprogram_debouncer/count [1]),
    .I3(\debouncer/reprogram_debouncer/count [11]),
    .O(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \debouncer/reprogram_debouncer/count_cmp_eq0000_wg_cy<2>  (
    .CI(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_cy [1]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut [2]),
    .O(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut<3>  (
    .I0(\debouncer/reprogram_debouncer/count [13]),
    .I1(\debouncer/reprogram_debouncer/count [14]),
    .I2(\debouncer/reprogram_debouncer/count [0]),
    .I3(\debouncer/reprogram_debouncer/count [15]),
    .O(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \debouncer/reprogram_debouncer/count_cmp_eq0000_wg_cy<3>  (
    .CI(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_cy [2]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut [3]),
    .O(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut<4>  (
    .I0(\debouncer/reprogram_debouncer/count [18]),
    .I1(\debouncer/reprogram_debouncer/count [16]),
    .I2(\debouncer/reprogram_debouncer/count [17]),
    .I3(\debouncer/reprogram_debouncer/count [2]),
    .O(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \debouncer/reprogram_debouncer/count_cmp_eq0000_wg_cy<4>  (
    .CI(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_cy [3]),
    .DI(N0),
    .S(\debouncer/reprogram_debouncer/count_cmp_eq0000_wg_lut [4]),
    .O(\debouncer/reprogram_debouncer/count_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \trafficControllerFSM/state_FSM_Out101  (
    .I0(\trafficControllerFSM/state_FSM_FFd3_609 ),
    .I1(\trafficControllerFSM/state_FSM_FFd2_607 ),
    .O(\trafficControllerFSM/_mux0003 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \trafficControllerFSM/state_FSM_FFd7-In1  (
    .I0(\synchronizer/traffic_sensor_synchronizer/out_513 ),
    .I1(\trafficControllerFSM/state_FSM_FFd8_619 ),
    .O(\trafficControllerFSM/state_FSM_FFd7-In )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \trafficControllerFSM/state_FSM_FFd6-In1  (
    .I0(\synchronizer/traffic_sensor_synchronizer/out_513 ),
    .I1(\trafficControllerFSM/state_FSM_FFd8_619 ),
    .O(\trafficControllerFSM/state_FSM_FFd6-In )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \trafficControllerFSM/state_FSM_FFd5-In1  (
    .I0(\trafficControllerFSM/state_FSM_FFd6_615 ),
    .I1(\trafficControllerFSM/state_FSM_FFd7_617 ),
    .O(\trafficControllerFSM/state_FSM_FFd5-In )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \trafficControllerFSM/state_FSM_FFd4-In1  (
    .I0(\walkRegister/wr_to_fsm_623 ),
    .I1(\trafficControllerFSM/state_FSM_FFd5_613 ),
    .O(\trafficControllerFSM/state_FSM_FFd4-In )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \trafficControllerFSM/state_FSM_FFd2-In1  (
    .I0(\synchronizer/traffic_sensor_synchronizer/out_513 ),
    .I1(\trafficControllerFSM/state_FSM_FFd3_609 ),
    .O(\trafficControllerFSM/state_FSM_FFd2-In )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \trafficControllerFSM/state_FSM_Out91  (
    .I0(\trafficControllerFSM/state_FSM_FFd1_605 ),
    .I1(\trafficControllerFSM/state_FSM_FFd2_607 ),
    .I2(\trafficControllerFSM/state_FSM_FFd3_609 ),
    .O(\trafficControllerFSM/_mux0001 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \trafficControllerFSM/state_FSM_Out121  (
    .I0(\trafficControllerFSM/state_FSM_FFd6_615 ),
    .I1(\trafficControllerFSM/state_FSM_FFd8_619 ),
    .I2(\trafficControllerFSM/state_FSM_FFd7_617 ),
    .O(\trafficControllerFSM/_mux0006 )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \trafficControllerFSM/state_FSM_FFd3-In1  (
    .I0(\walkRegister/wr_to_fsm_623 ),
    .I1(\trafficControllerFSM/state_FSM_FFd5_613 ),
    .I2(\trafficControllerFSM/state_FSM_FFd4_611 ),
    .O(\trafficControllerFSM/state_FSM_FFd3-In )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \trafficControllerFSM/state_FSM_FFd1-In1  (
    .I0(\synchronizer/traffic_sensor_synchronizer/out_513 ),
    .I1(\trafficControllerFSM/state_FSM_FFd3_609 ),
    .I2(\trafficControllerFSM/state_FSM_FFd2_607 ),
    .O(\trafficControllerFSM/state_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \trafficControllerFSM/state_FSM_Out111  (
    .I0(\trafficControllerFSM/state_FSM_FFd1_605 ),
    .I1(\trafficControllerFSM/state_FSM_FFd3_609 ),
    .I2(\trafficControllerFSM/state_FSM_FFd2_607 ),
    .I3(\trafficControllerFSM/state_FSM_FFd4_611 ),
    .O(\trafficControllerFSM/_mux0004 )
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \timeParameters/Mmux_yellow_time_interval_mux000041  (
    .I0(time_param_selector_1_IBUF_560),
    .I1(time_value_3_IBUF_568),
    .I2(time_param_selector_0_IBUF_559),
    .I3(\timeParameters/yellow_time_interval [3]),
    .O(\timeParameters/yellow_time_interval_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \timeParameters/Mmux_yellow_time_interval_mux000031  (
    .I0(time_param_selector_1_IBUF_560),
    .I1(time_value_2_IBUF_567),
    .I2(time_param_selector_0_IBUF_559),
    .I3(\timeParameters/yellow_time_interval [2]),
    .O(\timeParameters/yellow_time_interval_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \timeParameters/Mmux_yellow_time_interval_mux000021  (
    .I0(time_param_selector_1_IBUF_560),
    .I1(time_value_1_IBUF_566),
    .I2(time_param_selector_0_IBUF_559),
    .I3(\timeParameters/yellow_time_interval [1]),
    .O(\timeParameters/yellow_time_interval_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \timeParameters/Mmux_yellow_time_interval_mux000011  (
    .I0(time_param_selector_1_IBUF_560),
    .I1(time_value_0_IBUF_565),
    .I2(time_param_selector_0_IBUF_559),
    .I3(\timeParameters/yellow_time_interval [0]),
    .O(\timeParameters/yellow_time_interval_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \timeParameters/Mmux_extended_time_interval_mux000081  (
    .I0(time_param_selector_0_IBUF_559),
    .I1(time_value_3_IBUF_568),
    .I2(time_param_selector_1_IBUF_560),
    .I3(\timeParameters/extended_time_interval [3]),
    .O(\timeParameters/extended_time_interval_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \timeParameters/Mmux_extended_time_interval_mux000061  (
    .I0(time_param_selector_0_IBUF_559),
    .I1(time_value_2_IBUF_567),
    .I2(time_param_selector_1_IBUF_560),
    .I3(\timeParameters/extended_time_interval [2]),
    .O(\timeParameters/extended_time_interval_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \timeParameters/Mmux_extended_time_interval_mux000041  (
    .I0(time_param_selector_0_IBUF_559),
    .I1(time_value_1_IBUF_566),
    .I2(time_param_selector_1_IBUF_560),
    .I3(\timeParameters/extended_time_interval [1]),
    .O(\timeParameters/extended_time_interval_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \timeParameters/Mmux_extended_time_interval_mux000021  (
    .I0(time_param_selector_0_IBUF_559),
    .I1(time_value_0_IBUF_565),
    .I2(time_param_selector_1_IBUF_560),
    .I3(\timeParameters/extended_time_interval [0]),
    .O(\timeParameters/extended_time_interval_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hEBE8 ))
  \timeParameters/Mmux_base_time_interval_mux000081  (
    .I0(\timeParameters/base_time_interval [3]),
    .I1(time_param_selector_0_IBUF_559),
    .I2(time_param_selector_1_IBUF_560),
    .I3(time_value_3_IBUF_568),
    .O(\timeParameters/base_time_interval_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hEBE8 ))
  \timeParameters/Mmux_base_time_interval_mux000061  (
    .I0(\timeParameters/base_time_interval [2]),
    .I1(time_param_selector_0_IBUF_559),
    .I2(time_param_selector_1_IBUF_560),
    .I3(time_value_2_IBUF_567),
    .O(\timeParameters/base_time_interval_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hEBE8 ))
  \timeParameters/Mmux_base_time_interval_mux000041  (
    .I0(\timeParameters/base_time_interval [1]),
    .I1(time_param_selector_0_IBUF_559),
    .I2(time_param_selector_1_IBUF_560),
    .I3(time_value_1_IBUF_566),
    .O(\timeParameters/base_time_interval_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hEBE8 ))
  \timeParameters/Mmux_base_time_interval_mux000021  (
    .I0(\timeParameters/base_time_interval [0]),
    .I1(time_param_selector_0_IBUF_559),
    .I2(time_param_selector_1_IBUF_560),
    .I3(time_value_0_IBUF_565),
    .O(\timeParameters/base_time_interval_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \timeParameters/output_time_value_or0000_inv1  (
    .I0(\synchronizer/reset_synchronizer/out_511 ),
    .I1(\synchronizer/reprogram_synchronizer/out_509 ),
    .O(\timeParameters/output_time_value_or0000_inv )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \trafficControllerFSM/start_timer_or0000_inv1  (
    .I0(\synchronizer/reprogram_synchronizer/out_509 ),
    .I1(\synchronizer/reset_synchronizer/out_511 ),
    .I2(\timer/expired_575 ),
    .O(\trafficControllerFSM/start_timer_or0000_inv )
  );
  LUT4 #(
    .INIT ( 16'hEEEA ))
  \trafficControllerFSM/requesting_interval_mux0000<1>  (
    .I0(\trafficControllerFSM/state_FSM_FFd4-In ),
    .I1(\synchronizer/traffic_sensor_synchronizer/out_513 ),
    .I2(\trafficControllerFSM/state_FSM_FFd3_609 ),
    .I3(\trafficControllerFSM/state_FSM_FFd8_619 ),
    .O(\trafficControllerFSM/requesting_interval_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hEEFE ))
  \trafficControllerFSM/requesting_interval_mux0000<0>  (
    .I0(\trafficControllerFSM/state_FSM_FFd2_607 ),
    .I1(\trafficControllerFSM/state_FSM_FFd5-In ),
    .I2(\trafficControllerFSM/state_FSM_FFd3_609 ),
    .I3(\synchronizer/traffic_sensor_synchronizer/out_513 ),
    .O(\trafficControllerFSM/requesting_interval_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \walkRegister/wr_to_fsm_or00001  (
    .I0(\synchronizer/reset_synchronizer/out_511 ),
    .I1(\trafficControllerFSM/wr_reset_621 ),
    .O(\walkRegister/wr_to_fsm_or0000 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \trafficControllerFSM/state_or00001  (
    .I0(\synchronizer/reset_synchronizer/out_511 ),
    .I1(\synchronizer/reprogram_synchronizer/out_509 ),
    .O(\trafficControllerFSM/state_or0000 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \timer/divider_reset_or00001  (
    .I0(\synchronizer/reset_synchronizer/out_511 ),
    .I1(\trafficControllerFSM/start_timer_602 ),
    .O(\timer/divider_reset_or0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \debouncer/traffic_sensor_debouncer/count_or00001  (
    .I0(\debouncer/traffic_sensor_debouncer/new_377 ),
    .I1(sensor_IBUF_507),
    .O(\debouncer/traffic_sensor_debouncer/count_or0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \debouncer/reset_walk_request_debouncer/count_or00001  (
    .I0(\debouncer/reset_walk_request_debouncer/new_287 ),
    .I1(walk_request_IBUF_627),
    .O(\debouncer/reset_walk_request_debouncer/count_or0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \debouncer/reset_debouncer/count_or00001  (
    .I0(\debouncer/reset_debouncer/new_197 ),
    .I1(reset_IBUF_505),
    .O(\debouncer/reset_debouncer/count_or0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \debouncer/reprogram_debouncer/count_or00001  (
    .I0(\debouncer/reprogram_debouncer/new_107 ),
    .I1(reprogram_IBUF_503),
    .O(\debouncer/reprogram_debouncer/count_or0000 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \trafficControllerFSM/start_timer_or00001  (
    .I0(\synchronizer/reprogram_synchronizer/out_509 ),
    .I1(\synchronizer/reset_synchronizer/out_511 ),
    .I2(\timer/expired_575 ),
    .O(\trafficControllerFSM/start_timer_or0000 )
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \trafficControllerFSM/wr_reset_or00001  (
    .I0(\trafficControllerFSM/state_FSM_FFd4_611 ),
    .I1(\synchronizer/reset_synchronizer/out_511 ),
    .I2(\synchronizer/reprogram_synchronizer/out_509 ),
    .I3(\timer/expired_575 ),
    .O(\trafficControllerFSM/wr_reset_or0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \timer/time_value_mux0000<0>1  (
    .I0(\timer/Msub__old_time_value_7_cy [0]),
    .I1(\divider/enable_1Hz_452 ),
    .O(\timer/time_value_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'h9C ))
  \timer/time_value_mux0000<1>1  (
    .I0(\timer/Msub__old_time_value_7_cy [0]),
    .I1(N17),
    .I2(\divider/enable_1Hz_452 ),
    .O(\timer/time_value_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hAAA6 ))
  \timer/time_value_mux0000<2>1  (
    .I0(N16),
    .I1(\divider/enable_1Hz_452 ),
    .I2(\timer/Msub__old_time_value_7_cy [0]),
    .I3(\timer/_old_time_value_6 [1]),
    .O(\timer/time_value_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \timer/expired_mux00001  (
    .I0(\divider/enable_1Hz_452 ),
    .I1(\timer/expired_cmp_eq0000 ),
    .O(\timer/expired_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \timer/time_value_mux0000<3>_SW0  (
    .I0(\divider/enable_1Hz_452 ),
    .I1(N18),
    .O(N12)
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \timer/time_value_mux0000<3>  (
    .I0(N15),
    .I1(\timer/_old_time_value_6 [2]),
    .I2(\timer/_old_time_value_6 [1]),
    .I3(N12),
    .O(\timer/time_value_mux0000 [3])
  );
  LUT3 #(
    .INIT ( 8'h82 ))
  \debouncer/traffic_sensor_debouncer/clean_not00011  (
    .I0(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000 ),
    .I1(\debouncer/traffic_sensor_debouncer/new_377 ),
    .I2(sensor_IBUF_507),
    .O(\debouncer/traffic_sensor_debouncer/clean_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h82 ))
  \debouncer/reset_walk_request_debouncer/clean_not00011  (
    .I0(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000 ),
    .I1(\debouncer/reset_walk_request_debouncer/new_287 ),
    .I2(walk_request_IBUF_627),
    .O(\debouncer/reset_walk_request_debouncer/clean_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h82 ))
  \debouncer/reset_debouncer/clean_not00011  (
    .I0(\debouncer/reset_debouncer/count_cmp_eq0000 ),
    .I1(\debouncer/reset_debouncer/new_197 ),
    .I2(reset_IBUF_505),
    .O(\debouncer/reset_debouncer/clean_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h82 ))
  \debouncer/reprogram_debouncer/clean_not00011  (
    .I0(\debouncer/reprogram_debouncer/count_cmp_eq0000 ),
    .I1(\debouncer/reprogram_debouncer/new_107 ),
    .I2(reprogram_IBUF_503),
    .O(\debouncer/reprogram_debouncer/clean_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFEEE ))
  \timer/expired_not00011  (
    .I0(\trafficControllerFSM/start_timer_602 ),
    .I1(\synchronizer/reset_synchronizer/out_511 ),
    .I2(N14),
    .I3(\divider/enable_1Hz_452 ),
    .O(\timer/expired_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \divider/enable_1Hz_or000016  (
    .I0(\divider/counter [2]),
    .I1(\divider/counter [3]),
    .I2(\divider/counter [18]),
    .I3(\divider/enable_1Hz_or000011_469 ),
    .O(\divider/enable_1Hz_or000016_472 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \divider/enable_1Hz_or000070  (
    .I0(\divider/counter [12]),
    .I1(\divider/counter [13]),
    .I2(\divider/counter [14]),
    .I3(\divider/counter [15]),
    .O(\divider/enable_1Hz_or000070_475 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \divider/enable_1Hz_or000094  (
    .I0(\divider/counter [16]),
    .I1(\divider/counter [17]),
    .I2(\divider/counter [6]),
    .I3(\divider/counter [7]),
    .O(\divider/enable_1Hz_or000094_476 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \divider/enable_1Hz_or0000107  (
    .I0(\divider/counter [8]),
    .I1(\divider/counter [9]),
    .I2(\divider/counter [4]),
    .I3(\divider/counter [5]),
    .O(\divider/enable_1Hz_or0000107_468 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \divider/enable_1Hz_or0000121  (
    .I0(\divider/enable_1Hz_or000057_474 ),
    .I1(\divider/enable_1Hz_or000070_475 ),
    .I2(\divider/enable_1Hz_or000094_476 ),
    .I3(\divider/enable_1Hz_or0000107_468 ),
    .O(\divider/enable_1Hz_or0000121_470 )
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \divider/enable_1Hz_or0000148  (
    .I0(\timer/divider_reset_573 ),
    .I1(\divider/enable_1Hz_or000031_473 ),
    .I2(\divider/enable_1Hz_or000016_472 ),
    .I3(\divider/enable_1Hz_or0000121_470 ),
    .O(\divider/enable_1Hz_or0000 )
  );
  IBUF   sensor_IBUF (
    .I(sensor),
    .O(sensor_IBUF_507)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_505)
  );
  IBUF   walk_request_IBUF (
    .I(walk_request),
    .O(walk_request_IBUF_627)
  );
  IBUF   reprogram_IBUF (
    .I(reprogram),
    .O(reprogram_IBUF_503)
  );
  IBUF   time_value_3_IBUF (
    .I(time_value[3]),
    .O(time_value_3_IBUF_568)
  );
  IBUF   time_value_2_IBUF (
    .I(time_value[2]),
    .O(time_value_2_IBUF_567)
  );
  IBUF   time_value_1_IBUF (
    .I(time_value[1]),
    .O(time_value_1_IBUF_566)
  );
  IBUF   time_value_0_IBUF (
    .I(time_value[0]),
    .O(time_value_0_IBUF_565)
  );
  IBUF   time_param_selector_1_IBUF (
    .I(time_param_selector[1]),
    .O(time_param_selector_1_IBUF_560)
  );
  IBUF   time_param_selector_0_IBUF (
    .I(time_param_selector[0]),
    .O(time_param_selector_0_IBUF_559)
  );
  OBUF   Gm_OBUF (
    .I(\trafficControllerFSM/Gm_587 ),
    .O(Gm)
  );
  OBUF   Gs_OBUF (
    .I(\trafficControllerFSM/Gs_588 ),
    .O(Gs)
  );
  OBUF   W_OBUF (
    .I(\trafficControllerFSM/W_591 ),
    .O(W)
  );
  OBUF   Rm_OBUF (
    .I(\trafficControllerFSM/Rm_589 ),
    .O(Rm)
  );
  OBUF   Rs_OBUF (
    .I(\trafficControllerFSM/Rs_590 ),
    .O(Rs)
  );
  OBUF   Ym_OBUF (
    .I(\trafficControllerFSM/Ym_592 ),
    .O(Ym)
  );
  OBUF   Ys_OBUF (
    .I(\trafficControllerFSM/Ys_593 ),
    .O(Ys)
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_24  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [24]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [24])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_23  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [23]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [23])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_22  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [22]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [22])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_21  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [21]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [21])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_20  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [20]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [20])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_19  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [19]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [19])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_18  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [18]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [18])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_17  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [17]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [17])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_16  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [16]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [16])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_15  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [15]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [15])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_14  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [14]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [14])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_13  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [13]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [13])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_12  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [12]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [12])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_11  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [11]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [11])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_10  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [10]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [10])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_9  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [9]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [9])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_8  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [8]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_7  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [7]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_6  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [6]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_5  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [5]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_4  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [4]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_3  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [3]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_2  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [2]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_1  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [1]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \divider/counter_0  (
    .C(clk_BUFGP_17),
    .D(\divider/old_counter_8_addsub0000 [0]),
    .R(\divider/enable_1Hz_or0000148_471 ),
    .Q(\divider/counter [0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<23>_rt  (
    .I0(\divider/counter [23]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<23>_rt_408 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<22>_rt  (
    .I0(\divider/counter [22]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<22>_rt_406 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<21>_rt  (
    .I0(\divider/counter [21]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<21>_rt_404 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<20>_rt  (
    .I0(\divider/counter [20]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<20>_rt_402 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<19>_rt  (
    .I0(\divider/counter [19]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<19>_rt_398 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<18>_rt  (
    .I0(\divider/counter [18]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<18>_rt_396 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<17>_rt  (
    .I0(\divider/counter [17]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<17>_rt_394 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<16>_rt  (
    .I0(\divider/counter [16]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<16>_rt_392 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<15>_rt  (
    .I0(\divider/counter [15]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<15>_rt_390 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<14>_rt  (
    .I0(\divider/counter [14]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<14>_rt_388 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<13>_rt  (
    .I0(\divider/counter [13]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<13>_rt_386 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<12>_rt  (
    .I0(\divider/counter [12]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<12>_rt_384 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<11>_rt  (
    .I0(\divider/counter [11]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<11>_rt_382 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<10>_rt  (
    .I0(\divider/counter [10]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<10>_rt_380 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<9>_rt  (
    .I0(\divider/counter [9]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<9>_rt_424 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<8>_rt  (
    .I0(\divider/counter [8]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<8>_rt_422 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<7>_rt  (
    .I0(\divider/counter [7]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<7>_rt_420 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<6>_rt  (
    .I0(\divider/counter [6]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<6>_rt_418 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<5>_rt  (
    .I0(\divider/counter [5]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<5>_rt_416 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<4>_rt  (
    .I0(\divider/counter [4]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<4>_rt_414 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<3>_rt  (
    .I0(\divider/counter [3]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<3>_rt_412 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<2>_rt  (
    .I0(\divider/counter [2]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<2>_rt_410 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_cy<1>_rt  (
    .I0(\divider/counter [1]),
    .O(\divider/Madd_old_counter_8_addsub0000_cy<1>_rt_400 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<17>_rt  (
    .I0(\debouncer/reset_debouncer/count [17]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<17>_rt_124 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<16>_rt  (
    .I0(\debouncer/reset_debouncer/count [16]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<16>_rt_122 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<15>_rt  (
    .I0(\debouncer/reset_debouncer/count [15]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<15>_rt_120 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<14>_rt  (
    .I0(\debouncer/reset_debouncer/count [14]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<14>_rt_118 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<13>_rt  (
    .I0(\debouncer/reset_debouncer/count [13]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<13>_rt_116 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<12>_rt  (
    .I0(\debouncer/reset_debouncer/count [12]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<12>_rt_114 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<11>_rt  (
    .I0(\debouncer/reset_debouncer/count [11]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<11>_rt_112 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<10>_rt  (
    .I0(\debouncer/reset_debouncer/count [10]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<10>_rt_110 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<9>_rt  (
    .I0(\debouncer/reset_debouncer/count [9]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<9>_rt_142 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<8>_rt  (
    .I0(\debouncer/reset_debouncer/count [8]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<8>_rt_140 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<7>_rt  (
    .I0(\debouncer/reset_debouncer/count [7]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<7>_rt_138 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<6>_rt  (
    .I0(\debouncer/reset_debouncer/count [6]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<6>_rt_136 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<5>_rt  (
    .I0(\debouncer/reset_debouncer/count [5]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<5>_rt_134 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<4>_rt  (
    .I0(\debouncer/reset_debouncer/count [4]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<4>_rt_132 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<3>_rt  (
    .I0(\debouncer/reset_debouncer/count [3]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<3>_rt_130 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<2>_rt  (
    .I0(\debouncer/reset_debouncer/count [2]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<2>_rt_128 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_cy<1>_rt  (
    .I0(\debouncer/reset_debouncer/count [1]),
    .O(\debouncer/reset_debouncer/Mcount_count_cy<1>_rt_126 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<17>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [17]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<17>_rt_304 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<16>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [16]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<16>_rt_302 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<15>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [15]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<15>_rt_300 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<14>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [14]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<14>_rt_298 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<13>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [13]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<13>_rt_296 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<12>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [12]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<12>_rt_294 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<11>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [11]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<11>_rt_292 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<10>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [10]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<10>_rt_290 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<9>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [9]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<9>_rt_322 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<8>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [8]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<8>_rt_320 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<7>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [7]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<7>_rt_318 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<6>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [6]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<6>_rt_316 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<5>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [5]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<5>_rt_314 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<4>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [4]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<4>_rt_312 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<3>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [3]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<3>_rt_310 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<2>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [2]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<2>_rt_308 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_cy<1>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [1]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_cy<1>_rt_306 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<17>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [17]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<17>_rt_214 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<16>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [16]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<16>_rt_212 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<15>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [15]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<15>_rt_210 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<14>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [14]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<14>_rt_208 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<13>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [13]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<13>_rt_206 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<12>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [12]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<12>_rt_204 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<11>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [11]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<11>_rt_202 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<10>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [10]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<10>_rt_200 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<9>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [9]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<9>_rt_232 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<8>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [8]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<8>_rt_230 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<7>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [7]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<7>_rt_228 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<6>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [6]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<6>_rt_226 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<5>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [5]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<5>_rt_224 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<4>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [4]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<4>_rt_222 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<3>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [3]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<3>_rt_220 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<2>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [2]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<2>_rt_218 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_cy<1>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [1]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_cy<1>_rt_216 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<17>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [17]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<17>_rt_34 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<16>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [16]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<16>_rt_32 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<15>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [15]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<15>_rt_30 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<14>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [14]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<14>_rt_28 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<13>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [13]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<13>_rt_26 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<12>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [12]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<12>_rt_24 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<11>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [11]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<11>_rt_22 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<10>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [10]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<10>_rt_20 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<9>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [9]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<9>_rt_52 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<8>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [8]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<8>_rt_50 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<7>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [7]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<7>_rt_48 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<6>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [6]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<6>_rt_46 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<5>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [5]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<5>_rt_44 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<4>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [4]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<4>_rt_42 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<3>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [3]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<3>_rt_40 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<2>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [2]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<2>_rt_38 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_cy<1>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [1]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_cy<1>_rt_36 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \divider/Madd_old_counter_8_addsub0000_xor<24>_rt  (
    .I0(\divider/counter [24]),
    .O(\divider/Madd_old_counter_8_addsub0000_xor<24>_rt_426 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_debouncer/Mcount_count_xor<18>_rt  (
    .I0(\debouncer/reset_debouncer/count [18]),
    .O(\debouncer/reset_debouncer/Mcount_count_xor<18>_rt_144 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/traffic_sensor_debouncer/Mcount_count_xor<18>_rt  (
    .I0(\debouncer/traffic_sensor_debouncer/count [18]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_xor<18>_rt_324 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reset_walk_request_debouncer/Mcount_count_xor<18>_rt  (
    .I0(\debouncer/reset_walk_request_debouncer/count [18]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_xor<18>_rt_234 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \debouncer/reprogram_debouncer/Mcount_count_xor<18>_rt  (
    .I0(\debouncer/reprogram_debouncer/count [18]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_xor<18>_rt_54 )
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \divider/enable_1Hz_or0000148_1  (
    .I0(\timer/divider_reset_573 ),
    .I1(N19),
    .I2(\divider/enable_1Hz_or000016_472 ),
    .I3(\divider/enable_1Hz_or0000121_470 ),
    .O(\divider/enable_1Hz_or0000148_471 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_17)
  );
  INV   \divider/Madd_old_counter_8_addsub0000_lut<0>_INV_0  (
    .I(\divider/counter [0]),
    .O(\divider/Madd_old_counter_8_addsub0000_lut [0])
  );
  INV   \debouncer/reset_debouncer/Mcount_count_lut<0>_INV_0  (
    .I(\debouncer/reset_debouncer/count [0]),
    .O(\debouncer/reset_debouncer/Mcount_count_lut [0])
  );
  INV   \debouncer/traffic_sensor_debouncer/Mcount_count_lut<0>_INV_0  (
    .I(\debouncer/traffic_sensor_debouncer/count [0]),
    .O(\debouncer/traffic_sensor_debouncer/Mcount_count_lut [0])
  );
  INV   \debouncer/reset_walk_request_debouncer/Mcount_count_lut<0>_INV_0  (
    .I(\debouncer/reset_walk_request_debouncer/count [0]),
    .O(\debouncer/reset_walk_request_debouncer/Mcount_count_lut [0])
  );
  INV   \debouncer/reprogram_debouncer/Mcount_count_lut<0>_INV_0  (
    .I(\debouncer/reprogram_debouncer/count [0]),
    .O(\debouncer/reprogram_debouncer/Mcount_count_lut [0])
  );
  INV   \walkRegister/wr_to_fsm_inv1_INV_0  (
    .I(\walkRegister/wr_to_fsm_623 ),
    .O(\walkRegister/wr_to_fsm_inv )
  );
  INV   \debouncer/traffic_sensor_debouncer/count_not00011_INV_0  (
    .I(\debouncer/traffic_sensor_debouncer/count_cmp_eq0000 ),
    .O(\debouncer/traffic_sensor_debouncer/count_not0001 )
  );
  INV   \debouncer/reset_walk_request_debouncer/count_not00011_INV_0  (
    .I(\debouncer/reset_walk_request_debouncer/count_cmp_eq0000 ),
    .O(\debouncer/reset_walk_request_debouncer/count_not0001 )
  );
  INV   \debouncer/reset_debouncer/count_not00011_INV_0  (
    .I(\debouncer/reset_debouncer/count_cmp_eq0000 ),
    .O(\debouncer/reset_debouncer/count_not0001 )
  );
  INV   \debouncer/reprogram_debouncer/count_not00011_INV_0  (
    .I(\debouncer/reprogram_debouncer/count_cmp_eq0000 ),
    .O(\debouncer/reprogram_debouncer/count_not0001 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \timeParameters/Mmux_output_time_value_mux000081  (
    .I0(\trafficControllerFSM/requesting_interval [0]),
    .I1(\timeParameters/yellow_time_interval [3]),
    .O(\timeParameters/Mmux_output_time_value_mux00008 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \timeParameters/Mmux_output_time_value_mux000082  (
    .I0(\trafficControllerFSM/requesting_interval [0]),
    .I1(\timeParameters/base_time_interval [3]),
    .I2(\timeParameters/extended_time_interval [3]),
    .O(\timeParameters/Mmux_output_time_value_mux000081_523 )
  );
  MUXF5   \timeParameters/Mmux_output_time_value_mux00008_f5  (
    .I0(\timeParameters/Mmux_output_time_value_mux000081_523 ),
    .I1(\timeParameters/Mmux_output_time_value_mux00008 ),
    .S(\trafficControllerFSM/requesting_interval [1]),
    .O(\timeParameters/output_time_value_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \timeParameters/Mmux_output_time_value_mux000061  (
    .I0(\trafficControllerFSM/requesting_interval [0]),
    .I1(\timeParameters/yellow_time_interval [2]),
    .O(\timeParameters/Mmux_output_time_value_mux00006 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \timeParameters/Mmux_output_time_value_mux000062  (
    .I0(\trafficControllerFSM/requesting_interval [0]),
    .I1(\timeParameters/base_time_interval [2]),
    .I2(\timeParameters/extended_time_interval [2]),
    .O(\timeParameters/Mmux_output_time_value_mux000061_521 )
  );
  MUXF5   \timeParameters/Mmux_output_time_value_mux00006_f5  (
    .I0(\timeParameters/Mmux_output_time_value_mux000061_521 ),
    .I1(\timeParameters/Mmux_output_time_value_mux00006 ),
    .S(\trafficControllerFSM/requesting_interval [1]),
    .O(\timeParameters/output_time_value_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \timeParameters/Mmux_output_time_value_mux000041  (
    .I0(\trafficControllerFSM/requesting_interval [0]),
    .I1(\timeParameters/yellow_time_interval [1]),
    .O(\timeParameters/Mmux_output_time_value_mux00004 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \timeParameters/Mmux_output_time_value_mux000042  (
    .I0(\trafficControllerFSM/requesting_interval [0]),
    .I1(\timeParameters/base_time_interval [1]),
    .I2(\timeParameters/extended_time_interval [1]),
    .O(\timeParameters/Mmux_output_time_value_mux000041_519 )
  );
  MUXF5   \timeParameters/Mmux_output_time_value_mux00004_f5  (
    .I0(\timeParameters/Mmux_output_time_value_mux000041_519 ),
    .I1(\timeParameters/Mmux_output_time_value_mux00004 ),
    .S(\trafficControllerFSM/requesting_interval [1]),
    .O(\timeParameters/output_time_value_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \timeParameters/Mmux_output_time_value_mux000021  (
    .I0(\trafficControllerFSM/requesting_interval [0]),
    .I1(\timeParameters/yellow_time_interval [0]),
    .O(\timeParameters/Mmux_output_time_value_mux00002 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \timeParameters/Mmux_output_time_value_mux000022  (
    .I0(\trafficControllerFSM/requesting_interval [0]),
    .I1(\timeParameters/base_time_interval [0]),
    .I2(\timeParameters/extended_time_interval [0]),
    .O(\timeParameters/Mmux_output_time_value_mux000021_517 )
  );
  MUXF5   \timeParameters/Mmux_output_time_value_mux00002_f5  (
    .I0(\timeParameters/Mmux_output_time_value_mux000021_517 ),
    .I1(\timeParameters/Mmux_output_time_value_mux00002 ),
    .S(\trafficControllerFSM/requesting_interval [1]),
    .O(\timeParameters/output_time_value_mux0000 [0])
  );
  LUT4_D #(
    .INIT ( 16'h0002 ))
  \timer/expired_cmp_eq00001  (
    .I0(\timer/Msub__old_time_value_7_cy [0]),
    .I1(\timer/_old_time_value_6 [1]),
    .I2(\timer/_old_time_value_6 [2]),
    .I3(\timer/_old_time_value_6 [3]),
    .LO(N14),
    .O(\timer/expired_cmp_eq0000 )
  );
  LUT4_D #(
    .INIT ( 16'h5410 ))
  \timer/_old_time_value_6<3>1  (
    .I0(\synchronizer/reset_synchronizer/out_511 ),
    .I1(\trafficControllerFSM/start_timer_602 ),
    .I2(\timer/time_value [3]),
    .I3(\timeParameters/output_time_value [3]),
    .LO(N15),
    .O(\timer/_old_time_value_6 [3])
  );
  LUT4_D #(
    .INIT ( 16'h5410 ))
  \timer/_old_time_value_6<2>1  (
    .I0(\synchronizer/reset_synchronizer/out_511 ),
    .I1(\trafficControllerFSM/start_timer_602 ),
    .I2(\timer/time_value [2]),
    .I3(\timeParameters/output_time_value [2]),
    .LO(N16),
    .O(\timer/_old_time_value_6 [2])
  );
  LUT4_D #(
    .INIT ( 16'h5410 ))
  \timer/_old_time_value_6<1>1  (
    .I0(\synchronizer/reset_synchronizer/out_511 ),
    .I1(\trafficControllerFSM/start_timer_602 ),
    .I2(\timer/time_value [1]),
    .I3(\timeParameters/output_time_value [1]),
    .LO(N17),
    .O(\timer/_old_time_value_6 [1])
  );
  LUT4_D #(
    .INIT ( 16'h5410 ))
  \timer/_old_time_value_6<0>1  (
    .I0(\synchronizer/reset_synchronizer/out_511 ),
    .I1(\trafficControllerFSM/start_timer_602 ),
    .I2(\timer/time_value [0]),
    .I3(\timeParameters/output_time_value [0]),
    .LO(N18),
    .O(\timer/Msub__old_time_value_7_cy [0])
  );
  LUT2_L #(
    .INIT ( 4'h1 ))
  \divider/enable_1Hz_or000011  (
    .I0(\divider/counter [19]),
    .I1(\divider/counter [20]),
    .LO(\divider/enable_1Hz_or000011_469 )
  );
  LUT4_D #(
    .INIT ( 16'h0001 ))
  \divider/enable_1Hz_or000031  (
    .I0(\divider/counter [21]),
    .I1(\divider/counter [22]),
    .I2(\divider/counter [23]),
    .I3(\divider/counter [0]),
    .LO(N19),
    .O(\divider/enable_1Hz_or000031_473 )
  );
  LUT4_L #(
    .INIT ( 16'h0001 ))
  \divider/enable_1Hz_or000057  (
    .I0(\divider/counter [1]),
    .I1(\divider/counter [24]),
    .I2(\divider/counter [10]),
    .I3(\divider/counter [11]),
    .LO(\divider/enable_1Hz_or000057_474 )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \synchronizer/reset_synchronizer/Mshreg_out  (
    .A0(N0),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CLK(clk_BUFGP_17),
    .D(\debouncer/reset_debouncer/clean_164 ),
    .Q(\synchronizer/reset_synchronizer/Mshreg_out_510 )
  );
  FD   \synchronizer/reset_synchronizer/out  (
    .C(clk_BUFGP_17),
    .D(\synchronizer/reset_synchronizer/Mshreg_out_510 ),
    .Q(\synchronizer/reset_synchronizer/out_511 )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \synchronizer/traffic_sensor_synchronizer/Mshreg_out  (
    .A0(N0),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CLK(clk_BUFGP_17),
    .D(\debouncer/traffic_sensor_debouncer/clean_344 ),
    .Q(\synchronizer/traffic_sensor_synchronizer/Mshreg_out_512 )
  );
  FD   \synchronizer/traffic_sensor_synchronizer/out  (
    .C(clk_BUFGP_17),
    .D(\synchronizer/traffic_sensor_synchronizer/Mshreg_out_512 ),
    .Q(\synchronizer/traffic_sensor_synchronizer/out_513 )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \synchronizer/walk_request_synchronizer/Mshreg_out  (
    .A0(N0),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CLK(clk_BUFGP_17),
    .D(\debouncer/reset_walk_request_debouncer/clean_254 ),
    .Q(\synchronizer/walk_request_synchronizer/Mshreg_out_514 )
  );
  FD   \synchronizer/walk_request_synchronizer/out  (
    .C(clk_BUFGP_17),
    .D(\synchronizer/walk_request_synchronizer/Mshreg_out_514 ),
    .Q(\synchronizer/walk_request_synchronizer/out_515 )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \synchronizer/reprogram_synchronizer/Mshreg_out  (
    .A0(N0),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CLK(clk_BUFGP_17),
    .D(\debouncer/reprogram_debouncer/clean_74 ),
    .Q(\synchronizer/reprogram_synchronizer/Mshreg_out_508 )
  );
  FD   \synchronizer/reprogram_synchronizer/out  (
    .C(clk_BUFGP_17),
    .D(\synchronizer/reprogram_synchronizer/Mshreg_out_508 ),
    .Q(\synchronizer/reprogram_synchronizer/out_509 )
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

