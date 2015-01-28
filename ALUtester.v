`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:24:05 01/27/2015
// Design Name:   ALU16bit
// Module Name:   C:/Users/bonattt/Documents/School/2 Winter Sophomore/CSSE 232 Comp Arc/Final Project/Verilog/processor/ALUtester.v
// Project Name:  processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUtester;

	// Inputs
	reg [2:0] aluOp;
	reg [15:0] aIn;
	reg [15:0] bIn;

	// Outputs
	wire isZero;
	wire [15:0] outPut;

	// Instantiate the Unit Under Test (UUT)
	ALU16bit uut (
		.aluOp(aluOp), 
		.aIn(aIn), 
		.bIn(bIn), 
		.isZero(isZero), 
		.outPut(outPut)
	);

	initial begin
		// Initialize Inputs
		aluOp = 0;
		aIn = 0;
		bIn = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		aIn = 1; bIn = 1; #15;	 // = 2
		aIn = 10; bIn = 0; #15;  // = 10
		aIn = 0; bIn = 10; #15;  // = 10
		aIn = 10; bIn = 10; #15; // = 20
		aIn = 13; bIn = 24; #15; // = 37
		
		aluOp = 'b0001;
		aIn = 2; bIn = 0; #15; // = 2
		aIn = 3; bIn = 0; #15; // = 3
		aIn = 4; bIn = 0; #15; // = 4
		aIn = 5; bIn = 0; #15; // = 5
		aIn = 6; bIn = 0; #15; // = 6
		aIn = 7; bIn = 0; #15; // = 7
		aIn = 8; bIn = 0; #15; // = 8
		aIn = 'b1101110111011101; bIn = 'b0010001000100010 ; #15; // = 'b1111111111111111
		aIn = 'b1111111111111111; bIn = 0; #15; // = 'b1111111111111111
		aIn = 'b1010101010101010; bIn = 'b0101010101010101; #15; // = 'b1111111111111111
		
		
		

	end
      
endmodule

