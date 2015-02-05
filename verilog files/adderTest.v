`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:34:44 01/28/2015
// Design Name:   adder16bit
// Module Name:   C:/Users/bonattt/Documents/School/2 Winter Sophomore/CSSE 232 Comp Arc/Final Project/Verilog/processor/adderTest.v
// Project Name:  processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adderTest;

	// Inputs
	reg [15:0] aIn;
	reg [15:0] bIn;

	// Outputs
	wire [15:0] out;
	reg [15:0] expected;

	// Instantiate the Unit Under Test (UUT)
	adder16bit uut (
		.aIn(aIn), 
		.bIn(bIn), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		aIn = 0;
		bIn = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		aIn = 15; bIn = 15; expected = 30; #10;
		aIn = 0; bIn = 67; expected = 67; #10;
		aIn = 15; bIn = 0; expected = 15; #10;
		aIn = -5; bIn = 12; expected = 7; #10;
		aIn = 15; bIn = -15; expected = 0; #10;

	end
      
endmodule

