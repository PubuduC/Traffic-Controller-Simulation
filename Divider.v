`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:30 07/07/2018 
// Design Name: 
// Module Name:    Divider 
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
module Divider(clk, global_reset,
    enable_1Hz);
	 
	input clk, global_reset;
	output enable_1Hz;
	reg[24:0] counter = 0;
	reg enable_1Hz = 0;
	
	parameter ONE_SECOND_COUNT = 25'd3; //25'd27_999_999
	//as it is difficult to simulate for 1hz the divider has reduced the frequency to clk_frequency/2.
	
	always @ (posedge clk)
	begin
		enable_1Hz = 0;
		if(global_reset || counter == ONE_SECOND_COUNT)
				counter <= 0;
		else
				counter <= counter+1;
		
		if (counter == ONE_SECOND_COUNT)
				enable_1Hz = 1;
	end
	
endmodule
