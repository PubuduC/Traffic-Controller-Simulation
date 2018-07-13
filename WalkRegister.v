`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:51:20 07/07/2018 
// Design Name: 
// Module Name:    WalkRegister 
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
module WalkRegister( clk, walk_request, walk_request_reset, global_reset, 
	wr_to_fsm);
	
	input  clk, walk_request, walk_request_reset, global_reset;
	output wr_to_fsm;
	reg wr_to_fsm = 0;
	
	always @ (posedge clk)
	begin
		wr_to_fsm <= (global_reset || walk_request_reset) ? 0 : wr_to_fsm ? wr_to_fsm : walk_request ;
	end

endmodule
