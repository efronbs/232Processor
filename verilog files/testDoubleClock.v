`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:35:24 02/10/2015
// Design Name:   clockDoubler
// Module Name:   C:/Users/bonattt/Documents/School/2 Winter Sophomore/CSSE 232 Comp Arc/Final Project/Verilog/processor/testDoubleClock.v
// Project Name:  processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clockDoubler
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testDoubleClock;

	// Inputs
	reg clkIn;

	// Outputs
	wire dClk;
	reg expected;

	// Instantiate the Unit Under Test (UUT)
	clockDoubler uut (
		.clkIn(clkIn), 
		.dClk(dClk)
	);

	initial begin
		// Initialize Inputs
		clkIn = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		clkIn = 1; expected = 1; #1;
		expected = 0; #4;
		clkIn = 0; expected = 1; #1;
		expected = 0; #4;
		clkIn = 1; expected = 1; #1;
		expected = 0; #4;
		clkIn = 0; expected = 1; #1;
		expected = 0; #4;
		clkIn = 1; expected = 1; #1;
		expected = 0; #4;
		clkIn = 0; expected = 1; #1;
		expected = 0; #4;
		clkIn = 1; expected = 1; #1;
		expected = 0; #4;
		clkIn = 0; expected = 1; #1;
		expected = 0; #4;
		clkIn = 1; expected = 1; #1;
		expected = 0; #4;
		clkIn = 0; expected = 1; #1;
		expected = 0; #4;
		clkIn = 1; expected = 1; #1;
		expected = 0; #4;
		clkIn = 0; expected = 1; #1;
		expected = 0; #4;
        
		// Add stimulus here

	end
      
endmodule

