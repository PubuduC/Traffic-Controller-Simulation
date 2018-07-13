`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:45:01 07/11/2018
// Design Name:   TrafficController
// Module Name:   /home/anjalee/Documents/XilinxProjects/Traffic-Light-Controller-Simulation/TestTrafficController.v
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

module TestTrafficController;

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
		sensor = 0;
		walk_request = 0;
		reprogram = 0;
		time_param_selector = 0;
		time_value = 0;


		// Wait 100 ns for global reset to finish
		#100;
        
		 
		// Add stimulus here
		#400;
		reset = 1;
		
		#50;
		
		reset = 0;
		
		#100;
		
		sensor = 1;
		
		#200;
		
		walk_request = 1;
		
		#50;
		
		walk_request = 0;
		
		#4000;
		
		sensor = 0;
		
		
		
		

	end
      
endmodule

