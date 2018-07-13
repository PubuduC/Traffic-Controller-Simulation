`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:38:24 07/11/2018
// Design Name:   TrafficTest
// Module Name:   /home/anjalee/Documents/XilinxProjects/Traffic-Light-Controller-Simulation/testtest.v
// Project Name:  Traffic-Light-Controller-Simulation
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TrafficTest
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testtest;

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
	TrafficTest uut (
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
		forever #10 clk = ~clk;
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
		reset = 1;
		#20;
		
		reset = 0;

	end
      
endmodule

