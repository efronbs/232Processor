`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:40:40 02/13/2015
// Design Name:   CombineIRwPCJUMP
// Module Name:   C:/Users/humphrjm/Documents/Xilinx/232FinalProject/FinalProject/Test_CombineIRwPCJUMP.v
// Project Name:  FinalProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CombineIRwPCJUMP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_CombineIRwPCJUMP;

	// Inputs
	reg [15:0] irIN;
	reg [15:0] pcIN;

	// Outputs
	wire [15:0] jumpAddrOUT;

	// Instantiate the Unit Under Test (UUT)
	CombineIRwPCJUMP uut (
		.irIN(irIN), 
		.pcIN(pcIN), 
		.jumpAddrOUT(jumpAddrOUT)
	);

	initial begin
		// Initialize Inputs
		irIN = 0;
		pcIN = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		irIN = 5; pcIN = 'b1111000000000000;
		#100;
	end
      
endmodule

