`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:30:15 07/11/2018 
// Design Name: 
// Module Name:    TrafficTest 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module TrafficTest(reset, clk, sensor, walk_request, reprogram, time_param_selector, time_value, 
	Rm, Ym, Gm, Rs, Ys, Gs, W);
	input reset, clk, sensor, walk_request, reprogram;
	input[1:0] time_param_selector; 
	input[3:0] time_value;
	output Rm, Ym, Gm, Rs, Ys, Gs, W;
	
	wire WR, WR_reset, enable_1Hz, divider_reset, start_timer, expired;
	wire[1:0] interval;
	wire[3:0] time_value_out;
	/*
	Debouncer debouncer(.clk(clk), .global_reset(reset), 
								.traffic_sensor(sensor), .walk_request(walk_request), 
								.reprogram(reprogram), .global_reset_debounce(global_reset_debounce), 
								.traffic_sensor_debounce(traffic_sensor_debounce), 
								.walk_request_debounce(walk_request_debounce), 
								.reprogram_debounce(reprogram_debounce));
	Synchronizer synchronizer(.clk(clk), .global_reset(global_reset_debounce), 
										.traffic_sensor(traffic_sensor_debounce), 
										.walk_request(walk_request_debounce), 
										.reprogram(reprogram_debounce), .global_reset_sync(reset_sync), 
										.traffic_sensor_sync(sensor_sync), .walk_request_sync(WR_sync), 
										.reprogram_sync(prog_sync));*/
	WalkRegister walkRegister(.clk(clk), .walk_request(walk_request), 
										.walk_request_reset(WR_reset), 
										.global_reset(reset), .wr_to_fsm(WR));
	TrafficControllerFSM trafficControllerFSM (.clk(clk), .traffic_sensor(sensor),
															.wr_to_fsm(WR), .reset(reset), 
															.reprogram(prog_sync), .expired(expired),
															.wr_reset(WR_reset), .requesting_interval(interval), 
															.start_timer(start_timer), .Gm(Gm), .Ym(Ym), 
															.Rm(Rm), .W(W), .Gs(Gs), .Ys(Ys), .Rs(Rs));

	TimeParameters timeParameters(.clk(clk), .global_reset(reset), 
										.time_param_selector(time_param_selector), 
										.input_time_value(time_value), .reprogram(reprogram), 
										.fsm_requested_interval(interval), .output_time_value(time_value_out));
	Timer timer(.clk(clk), .start_timer(start_timer), .time_param_output_value(time_value_out),
					.enable_1Hz(enable_1Hz), .reset_global(reset), .expired(expired), 
					.divider_reset(divider_reset));
	Divider divider(.clk(clk), .divider_reset(divider_reset), .enable_1Hz(enable_1Hz));
	
endmodule
