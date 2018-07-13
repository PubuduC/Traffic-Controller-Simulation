`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:57:16 07/11/2018
// Design Name:   TrafficControllerFSM
// Module Name:   /home/anjalee/Documents/XilinxProjects/Traffic-Light-Controller-Simulation/TestFSMWRInterrupt.v
// Project Name:  Traffic-Light-Controller-Simulation
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TrafficControllerFSM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestFSMWRInterrupt;

	// Inputs
	reg clk;
	reg traffic_sensor;
	reg wr_to_fsm;
	reg reset;
	reg reprogram;
	reg expired;

	// Outputs
	wire wr_reset;
	wire [1:0] requesting_interval;
	wire start_timer;
	wire Gm;
	wire Ym;
	wire Rm;
	wire W;
	wire Gs;
	wire Ys;
	wire Rs;

	// Instantiate the Unit Under Test (UUT)
	TrafficControllerFSM uut (
		.clk(clk), 
		.traffic_sensor(traffic_sensor), 
		.wr_to_fsm(wr_to_fsm), 
		.reset(reset), 
		.reprogram(reprogram), 
		.expired(expired), 
		.wr_reset(wr_reset), 
		.requesting_interval(requesting_interval), 
		.start_timer(start_timer), 
		.Gm(Gm), 
		.Ym(Ym), 
		.Rm(Rm), 
		.W(W), 
		.Gs(Gs), 
		.Ys(Ys), 
		.Rs(Rs)
	);
	
	initial begin
	forever #25 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		traffic_sensor = 0;
		wr_to_fsm = 0;
		reset = 0;
		reprogram = 0;
		expired = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#50;
		
		//global reset
		reset = 1;
		
		#50;
		
		reset = 0;
		
		#150;
		
		wr_to_fsm = 1;
		
		#50;
		
		#50;
		 
		expired = 1;
		//Gm 1st t_base expired
		
		#50;
		
		expired = 0;
		
		#250;
		
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

