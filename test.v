`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:45:01 07/11/2018 
// Design Name: 
// Module Name:    test 
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
module test(clk, traffic_sensor, wr_to_fsm, reset, reprogram, expired,
	wr_reset, requesting_interval, start_timer, Gm, Ym, Rm, W, Gs, Ys, Rs
    );
	 
	 input clk, traffic_sensor, wr_to_fsm, reset, reprogram, expired;
	output wr_reset, start_timer;
	output [1:0] requesting_interval;
	output Gm, Ym, Rm, W, Gs, Ys, Rs;

	reg start_timer = 0;
	reg[1:0] requesting_interval;
	reg wr_reset = 0;
	reg[2:0] state;
	reg Gm, Ym, Rm, W, Gs, Ys, Rs;

	parameter T_BASE = 2'b00;
	parameter T_EXT = 2'b01;
	parameter T_YEL = 2'b10;

	parameter MAIN_GREEN_FOR_FIRST_T_BASE = 3'b000;
	parameter MAIN_GREEN_FOR_T_EXT = 3'b001;
	parameter MAIN_GREEN_FOR_SECOND_T_BASE = 3'b010;
	parameter MAIN_YELLOW = 3'b011;
	parameter WALK_ON = 3'b100;
	parameter SIDE_GREEN_FOR_T_BASE = 3'b101;
	parameter SIDE_GREEN_FOR_T_EXT = 3'b110;
	parameter SIDE_YELLOW = 3'b111;

	parameter ON = 1'b1;
	parameter OFF = 1'b0;
	
	always @ (posedge clk)
	
	begin
		wr_reset = 0;
		if(reset || reprogram)
		begin
			start_timer = 1;
			requesting_interval <= T_BASE;
			state <= MAIN_GREEN_FOR_FIRST_T_BASE;
		end
		else if (~expired)
		begin
			start_timer = 0;
			case (state)
				MAIN_GREEN_FOR_FIRST_T_BASE, MAIN_GREEN_FOR_T_EXT, MAIN_GREEN_FOR_SECOND_T_BASE:
					{Gm, Ym, Rm, Gs, Ys, Rs, W} <= {ON, OFF, OFF, OFF, OFF, ON, OFF};
				MAIN_YELLOW:
					{Gm, Ym, Rm, Gs, Ys, Rs, W} <= {OFF, ON, OFF, OFF, OFF, ON, OFF};
				SIDE_GREEN_FOR_T_BASE, SIDE_GREEN_FOR_T_EXT:
					{Gm, Ym, Rm, Gs, Ys, Rs, W} <= {OFF, OFF, ON, ON, OFF, OFF, OFF};
				SIDE_YELLOW:
					{Gm, Ym, Rm, Gs, Ys, Rs, W} <= {OFF, OFF, ON, OFF, ON, OFF, OFF};
				WALK_ON:
					{Gm, Ym, Rm, Gs, Ys, Rs, W} <= {OFF, OFF, ON, OFF, OFF, ON, ON};
			endcase
		end
		else if (expired)
		begin
		start_timer = 1;
		case (state)
			MAIN_GREEN_FOR_FIRST_T_BASE:
				if(traffic_sensor)
				begin
					requesting_interval <= MAIN_GREEN_FOR_T_EXT;
					state <= MAIN_GREEN_FOR_T_EXT ;
				end
				else
				begin
					requesting_interval <= T_BASE;
					state <= MAIN_GREEN_FOR_SECOND_T_BASE;
				end
				
			WALK_ON:
				requesting_interval <= T_BASE;  
				state <= SIDE_GREEN_FOR_T_BASE;
			
			endcase
			
		end
	end



endmodule
