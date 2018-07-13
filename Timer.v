`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:37 07/07/2018 
// Design Name: 
// Module Name:    Timer 
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
module Timer(clk, start_timer, time_param_output_value, enable_1Hz, reset_global,
    expired);
	 //as divider and timer is cohesive divider reset will be handled by timer
	 input clk, start_timer, enable_1Hz, reset_global;
	 input[3:0] time_param_output_value;
    output expired;
	 
	 reg expired = 0;
	 reg[3:0] time_value = 4'b0000;
	 
	 always @ (posedge clk)
	 begin
		expired <= 0;
		
		if(reset_global)
		begin
		time_value <= 0;
		expired <= 0;
		end
		else if(start_timer)
		begin
			time_value <= time_param_output_value;
			expired <= 0;
		end
		else if(enable_1Hz)
		begin
			time_value <= time_value - 1;
			if(time_value == 4'b0001)
			begin
				expired <= 1;
			end
		end
			
	 end


endmodule
