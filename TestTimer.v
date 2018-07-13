`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:45:54 07/12/2018
// Design Name:   Timer
// Module Name:   /home/anjalee/Documents/XilinxProjects/Traffic-Light-Controller-Simulation/TestTimer.v
// Project Name:  Traffic-Light-Controller-Simulation
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Timer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestTimer;

	// Inputs
	reg clk;
	reg start_timer;
	reg [3:0] time_param_output_value;
	reg enable_1Hz;
	reg reset_global;

	// Outputs
	wire expired;

	// Instantiate the Unit Under Test (UUT)
	Timer uut (
		.clk(clk), 
		.start_timer(start_timer), 
		.time_param_output_value(time_param_output_value), 
		.enable_1Hz(enable_1Hz), 
		.reset_global(reset_global), 
		.expired(expired)
	);
	
	initial begin
	forever #25 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		start_timer = 0;
		time_param_output_value = 0;
		enable_1Hz = 0;
		reset_global = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset_global = 1;
		
		#50;
		
		reset_global = 0;
		
		#100;
		
		start_timer = 1;
		time_param_output_value = 3;
		
		#50;
		
		start_timer = 0;
		
		#50;
		enable_1Hz = 0;
		#50;
		enable_1Hz = 1;
		#50;
		enable_1Hz = 0;
		#50;
		enable_1Hz = 1;
		#50;
		enable_1Hz = 0;
		#50
		enable_1Hz = 1;
		#50;
		enable_1Hz = 0;
		#50
		enable_1Hz = 1;
		#50;
		enable_1Hz = 0;
		#50
		enable_1Hz = 1;
		#50;
		enable_1Hz = 0;
		#50
		enable_1Hz = 1;
		#50;
		enable_1Hz = 0;

	end
      
endmodule

