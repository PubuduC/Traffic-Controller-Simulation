`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:24 07/07/2018 
// Design Name: 
// Module Name:    Synchronizer 
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
module Synchronizer(clk, global_reset, traffic_sensor, walk_request, reprogram, global_reset_sync, traffic_sensor_sync, walk_request_sync, reprogram_sync);
	input clk, global_reset, traffic_sensor, walk_request, reprogram;
	output global_reset_sync, traffic_sensor_sync, walk_request_sync, reprogram_sync;
	
	BaseSynchronizer reset_synchronizer(.clk(clk), .in(global_reset), .out(global_reset_sync));
	BaseSynchronizer traffic_sensor_synchronizer(.clk(clk), .in(traffic_sensor), .out(traffic_sensor_sync));
	BaseSynchronizer walk_request_synchronizer(.clk(clk), .in(walk_request), .out(walk_request_sync));
	BaseSynchronizer reprogram_synchronizer(.clk(clk), .in(reprogram), .out(reprogram_sync));
	
endmodule
