`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:31:42 07/07/2018 
// Design Name: 
// Module Name:    BaseSynchronizer 
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
//pulse synchronizer
module BaseSynchronizer( clk,in,
	out);
	parameter NSYNC = 2;  // number of sync flops.  must be >= 2
	input clk;
	input in;
	output out;

	reg [NSYNC-2:0] sync;
	reg out;

	always @ (posedge clk)
	begin
		{out,sync} <= {sync[NSYNC-2:0],in};
	end

endmodule
