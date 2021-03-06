`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:08:17 07/09/2018
// Design Name:   TimeParameters
// Module Name:   /home/anjalee/Documents/XilinxProjects/Traffic-Light-Controller-Simulation/TestTimeParam.v
// Project Name:  Traffic-Light-Controller-Simulation
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TimeParameters
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestTimeParam;

	// Inputs
	reg clk;
	reg global_reset;
	reg [1:0] time_param_selector;
	reg [3:0] input_time_value;
	reg reprogram;
	reg [1:0] fsm_requested_interval;

	// Outputs
	wire [3:0] output_time_value;

	// Instantiate the Unit Under Test (UUT)
	TimeParameters uut (
		.clk(clk), 
		.global_reset(global_reset), 
		.time_param_selector(time_param_selector), 
		.input_time_value(input_time_value), 
		.reprogram(reprogram), 
		.fsm_requested_interval(fsm_requested_interval), 
		.output_time_value(output_time_value)
	);
	
	initial begin
		clk = 0;
		forever #25 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		global_reset = 0;
		time_param_selector = 0;
		input_time_value = 0;
		reprogram = 0;
		fsm_requested_interval = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
        
		global_reset = 1;
		
		#50;
        
		global_reset = 0;
		
		#100;
		
		fsm_requested_interval = 1;
		
		#100;
		
		reprogram = 1;
		time_param_selector = 1;
		input_time_value = 9;
		
		#50;
		
		reprogram = 0;
		fsm_requested_interval = 1;
		
		#100
		
		fsm_requested_interval = 0;
		
		#100
		
		reprogram = 1;
		time_param_selector = 0;
		input_time_value = 12;
		
		#50;
		
		reprogram = 0;
		fsm_requested_interval = 0;
		
		#1000
		
		global_reset = 1;
		
		#50;
        
		global_reset = 0;
		
	end
      
endmodule

