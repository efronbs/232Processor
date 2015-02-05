`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:52:42 01/28/2015
// Design Name:   register16bit
// Module Name:   C:/Users/bonattt/Documents/School/2 Winter Sophomore/CSSE 232 Comp Arc/Final Project/Verilog/processor/regTest.v
// Project Name:  processor
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

module regTest;

	// Inputs
	reg [15:0] dataIn;
	reg write;
	reg reset;

	// Outputs
	wire [15:0] dataOut;

	// Instantiate the Unit Under Test (UUT)
	register16bit uut (
		.dataIn(dataIn), 
		.write(write), 
		.reset(reset), 
		.dataOut(dataOut)
	);

	initial begin
		// Initialize Inputs
		dataIn = 0;
		write = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		reset = 1; #10;
		reset = 0; #10;
		
      dataIn = 100; #10;
      dataIn = 150; #10;
      dataIn = 50; #10;
		write = 1; #10;
      dataIn = 100; #10;
      dataIn = 150; #10;
      dataIn = 50; #10;
      

	end
      
endmodule

