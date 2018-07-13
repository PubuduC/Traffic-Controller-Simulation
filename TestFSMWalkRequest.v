`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:36:14 07/10/2018
// Design Name:   TrafficController
// Module Name:   /home/anjalee/Documents/XilinxProjects/Traffic-Light-Controller-Simulation/TestFSMWalkRequest.v
// Project Name:  Traffic-Light-Controller-Simulation
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TrafficController
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestFSMWalkRequest;

	// Inputs
	reg reset;
	reg clk;
	reg sensor;
	reg walk_request;
	reg reprogram;
	reg [1:0] time_param_selector;
	reg [3:0] time_value;

	// Outputs
	wire Rm;
	wire Ym;
	wire Gm;
	wire Rs;
	wire Ys;
	wire Gs;
	wire W;

	// Instantiate the Unit Under Test (UUT)
	TrafficController uut (
		.reset(reset), 
		.clk(clk), 
		.sensor(sensor), 
		.walk_request(walk_request), 
		.reprogram(reprogram), 
		.time_param_selector(time_param_selector), 
		.time_value(time_value), 
		.Rm(Rm), 
		.Ym(Ym), 
		.Gm(Gm), 
		.Rs(Rs), 
		.Ys(Ys), 
		.Gs(Gs), 
		.W(W)
	);
	
	initial begin
		clk = 0;
		forever #25 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		reset = 0;
		clk = 0;
		sensor = 0;
		walk_request = 0;
		reprogram = 0;
		time_param_selector = 0;
		time_value = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#50;
		
		//global reset
		reset = 1;
		
		#50;
		
		reset = 0;
		
		#150;
		
		walk_request = 1;
		
		#50;
		
		walk_request = 0;
		
		#50;
		 
		expired = 1;
		//Gm 1st t_base expired
		
		#50;
		
		expired = 0;
		
		#100;
		
		walk_request = 1;
		
		#50;
		
		walk_request = 0;
		
		#100;
		
		expired = 1;
		//Gm 2nd t_base expired 
		
		#50;
		
		expired = 0;
		
		#100;
		 
		expired = 1;
		//Ym t_yel expired
		
		#50;
		
		expired = 0;
		
		#300;
		
		expired =1;
		
		#50;
		
		expired = 0;
		
		#300;
		
		expired =1;

		#50;
		
		expired = 0;
		
		#300;
		
		expired = 1;

		#50;
		
		expired = 0;
		
		#300;
		
		
		expired = 1;
		#50
		
		expired = 0;
		

	end
      
endmodule

