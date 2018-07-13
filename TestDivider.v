`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:58:47 07/09/2018
// Design Name:   Divider
// Module Name:   /home/anjalee/Documents/XilinxProjects/Traffic-Light-Controller-Simulation/TestDivider.v
// Project Name:  Traffic-Light-Controller-Simulation
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestDivider;

	// Inputs
	reg clk;
	reg global_reset;

	// Outputs
	wire enable_1Hz;

	// Instantiate the Unit Under Test (UUT)
	Divider uut (
		.clk(clk), 
		.global_reset(global_reset), 
		.enable_1Hz(enable_1Hz)
	);
	
	initial begin
	clk = 0;
	forever #10 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		global_reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		//divider_reset by the time parameters
		#30;
		global_reset = 1;
		
		#20
		
		global_reset = 0;

	end
      
endmodule

