`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:12:49 07/07/2018 
// Design Name: 
// Module Name:    Debouncer 
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
module Debouncer(clk, global_reset, traffic_sensor, walk_request, reprogram, global_reset_debounce, traffic_sensor_debounce, walk_request_debounce, reprogram_debounce);
	input clk, global_reset, traffic_sensor, walk_request, reprogram;
	output global_reset_debounce, traffic_sensor_debounce, walk_request_debounce, reprogram_debounce;
	
	BaseDebouncer reset_debouncer(.reset(0), .clock(clk), .noisy(global_reset), .clean(global_reset_debounce));
	BaseDebouncer traffic_sensor_debouncer(.reset(0), .clock(clk), .noisy(traffic_sensor), .clean(traffic_sensor_debounce));
	BaseDebouncer reset_walk_request_debouncer(.reset(0), .clock(clk), .noisy(walk_request), .clean(walk_request_debounce));
	BaseDebouncer reprogram_debouncer(.reset(0), .clock(clk), .noisy(reprogram), .clean(reprogram_debounce));
	
endmodule
