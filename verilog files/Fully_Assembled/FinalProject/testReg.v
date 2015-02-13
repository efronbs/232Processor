`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:41:43 02/12/2015
// Design Name:   register16bit
// Module Name:   C:/Users/bonattt/Documents/School/2 Winter Sophomore/CSSE 232 Comp Arc/Final Project/Verilog/processorIntegration/testReg.v
// Project Name:  processorIntegration
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testReg;

	// Inputs
	reg [15:0] dataIn;
	reg clk;
	reg write;
	reg reset;

	// Outputs
	wire [15:0] dataOut;
	reg [15:0] exp;

	// Instantiate the Unit Under Test (UUT)
	register16bit uut (
		.dataIn(dataIn), 
		.clk(clk), 
		.write(write), 
		.reset(reset), 
		.dataOut(dataOut)
	);

	initial begin
		// Initialize Inputs
		dataIn = 0;
		clk = 0;
		write = 0;
		reset = 0;
		exp = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		reset = 1;
		#5; clk = 1; #5; clk = 0;
		reset = 0;
		
		write = 1;
		dataIn = 1;
		#5; clk = 1; #5; clk = 0;
		#5; clk = 1; #5; clk = 0;
		write = 0;
		#5; clk = 1; #5; clk = 0;
		dataIn = 2;
		#5; clk = 1; #5; clk = 0;
		dataIn = 2;
		#5; clk = 1; #5; clk = 0;
		dataIn = 3;
		#5; clk = 1; #5; clk = 0;
		
		write = 1;
		dataIn = 1;
		#5; clk = 1; exp = 1; #5; clk = 0;
		dataIn = 2;
		#5; clk = 1; exp = 2; #5; clk = 0; 
		dataIn = 2;
		#5; clk = 1; exp = 3; #5; clk = 0;
		dataIn = 3;
		#5; clk = 1; exp = 4;#5; clk = 0;
        
		// Add stimulus here

	end
      
endmodule

