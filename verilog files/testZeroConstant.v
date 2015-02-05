`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:11:36 01/28/2015
// Design Name:   mainRegAdrs
// Module Name:   C:/Users/bonattt/Documents/School/2 Winter Sophomore/CSSE 232 Comp Arc/Final Project/Verilog/processor/testZeroConstant.v
// Project Name:  processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mainRegAdrs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testZeroConstant;

	// Outputs
	wire [2:0] adrsOut;

	// Instantiate the Unit Under Test (UUT)
	mainRegAdrs uut (
		.adrsOut(adrsOut)
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
		#100000;
        
		// Add stimulus here

	end
      
endmodule

