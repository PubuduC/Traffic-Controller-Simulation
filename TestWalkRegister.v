`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:46:11 07/09/2018
// Design Name:   WalkRegister
// Module Name:   /home/anjalee/Documents/XilinxProjects/Traffic-Light-Controller-Simulation/TestWalkRegister.v
// Project Name:  Traffic-Light-Controller-Simulation
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: WalkRegister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestWalkRegister;

	// Inputs
	reg clk;
	reg walk_request;
	reg walk_request_reset;
	reg global_reset;

	// Outputs
	wire wr_to_fsm;

	// Instantiate the Unit Under Test (UUT)
	WalkRegister uut (
		.clk(clk), 
		.walk_request(walk_request), 
		.walk_request_reset(walk_request_reset), 
		.global_reset(global_reset), 
		.wr_to_fsm(wr_to_fsm)
	);

	initial begin
		clk = 0;
		forever #25 clk = ~ clk ;
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		walk_request = 0;
		walk_request_reset = 0;
		global_reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		//reset the system
		global_reset = 1;
		
		#50
		
		global_reset = 0;
		
		#100
		
		//walk request
		walk_request = 1;
		
		#50;
		
		walk_request = 0;
		
		#300
		
		//walk request is serviced
		walk_request_reset = 1;
		
		#50;
		
		walk_request_reset = 0;
		
		#100
		
		//walk request
		walk_request = 1;
		
		#50;
		
		walk_request = 0;
		
		#200
		
		//walk request is serviced
		global_reset = 1;
		
		#50;
		
		global_reset = 0;

	end
      
endmodule

