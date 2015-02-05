`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:53:12 02/02/2015
// Design Name:   PCadderConstant
// Module Name:   C:/Users/bonattt/Documents/School/2 Winter Sophomore/CSSE 232 Comp Arc/Final Project/Verilog/processor/testPCadderConstant.v
// Project Name:  processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCadderConstant
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testPCadderConstant;

	// Outputs
	wire [15:0] constant;

	// Instantiate the Unit Under Test (UUT)
	PCadderConstant uut (
		.constant(constant)
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
		
		
        
		// Add stimulus here

	end
      
endmodule

