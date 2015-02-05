`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:43:45 02/05/2015
// Design Name:   SignExtend
// Module Name:   C:/Users/humphrjm/Documents/Xilinx/232FinalProject/FinalProject/SignExtend_Test.v
// Project Name:  FinalProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SignExtend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SignExtend_Test;

	// Inputs
	reg [15:0] in;
	reg CLK;
	reg reset;
	reg imSlct;// 0 - 12 bit    1 - 10 bit
	
	wire out[15:0];
	reg expected[15:0];

	// Instantiate the Unit Under Test (UUT)
	SignExtend uut (
		.in(in)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		in = 'b0000001111111100; imSlct = 1; expected = 'b1111111111111100; #10;
		in = 'b0000001001111100; imSlct = 1; expected = 'b1111111001111100; #10;
		in = 'b0000001000000000; imSlct = 1; expected = 'b1111111000000000; #10;
		in = 'b0000000000000000; imSlct = 1; expected = 'b0000000000000000; #10;
		
		
		in = 'b0000001111111100; imSlct = 0; expected = 'b0000001111111100; #10;
		in = 'b0000101111111100; imSlct = 0; expected = 'b1111101111111100; #10;
		in = 'b0000011010110101; imSlct = 0; expected = 'b0000011010110101; #10;
		in = 'b0000001111111100; imSlct = 0; expected = 'b0000001111111100; #10;
		
		
		in = 'b0000001111111100; imSlct = 1; expected = 'b1111111111111100; #10;
		in = 'b0000001111111100; imSlct = 1; expected = 'b1111111111111100; #10;
		

	end
      
endmodule

