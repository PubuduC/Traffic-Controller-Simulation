`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:28:49 07/07/2018 
// Design Name: 
// Module Name:    TimeParameters 
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
module TimeParameters( clk, global_reset, time_param_selector, input_time_value, reprogram, fsm_requested_interval, 
	output_time_value);
	input clk, reprogram, global_reset;
	input[1:0] time_param_selector, fsm_requested_interval;
	input[3:0] input_time_value; 
	
	output[3:0] output_time_value;
	
	//defining parameters for default selector values and time intervals
	parameter BASE_INTERVAL_SELECTOR = 2'b00;
	parameter EXTENDED_INTERVAL_SELECTOR = 2'b01;
	parameter YELLOW_INTERVAL_SELECTOR = 2'b10;
	
	parameter DEFAULT_BASE_INTERVAL = 4'b0110;
	parameter DEFAULT_EXTENDED_INTERVAL = 4'b0011;
	parameter DEFAULT_YELLOW_INTERVAL = 4'b0010;
	
	parameter MAX_TIME_VALUE = 4'b1111;
	
	reg[3:0] base_time_interval = DEFAULT_BASE_INTERVAL;
	reg[3:0] extended_time_interval = DEFAULT_EXTENDED_INTERVAL;
	reg[3:0] yellow_time_interval = DEFAULT_YELLOW_INTERVAL;
	reg[3:0] output_time_value;
	
	always @ (posedge clk)
	begin
		if (global_reset)
		begin
			base_time_interval = DEFAULT_BASE_INTERVAL;
			extended_time_interval = DEFAULT_EXTENDED_INTERVAL;
			yellow_time_interval = DEFAULT_YELLOW_INTERVAL;
		end
		else if (reprogram)
		begin
			case(time_param_selector)
				BASE_INTERVAL_SELECTOR : base_time_interval = (input_time_value == 4'b0000) ? DEFAULT_BASE_INTERVAL : input_time_value;
				EXTENDED_INTERVAL_SELECTOR : extended_time_interval = (input_time_value == 4'b0000) ? DEFAULT_EXTENDED_INTERVAL : input_time_value;
				YELLOW_INTERVAL_SELECTOR : yellow_time_interval = (input_time_value == 4'b0000) ? DEFAULT_EXTENDED_INTERVAL : input_time_value;
				default: // assigning maximum value for each register
				begin
				base_time_interval = MAX_TIME_VALUE;
				extended_time_interval = MAX_TIME_VALUE;
				yellow_time_interval = MAX_TIME_VALUE;
				end
			endcase
		end
		else
		begin
		case(fsm_requested_interval)
			BASE_INTERVAL_SELECTOR : output_time_value = base_time_interval;
			EXTENDED_INTERVAL_SELECTOR : output_time_value = extended_time_interval;
			YELLOW_INTERVAL_SELECTOR : output_time_value = yellow_time_interval;
			default:
			begin
			output_time_value = MAX_TIME_VALUE;
			end
		endcase
		end
	end

endmodule