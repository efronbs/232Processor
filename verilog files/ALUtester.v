`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:31:40 01/28/2015
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
	reg [3:0] aluOp;
	reg [15:0] aIn;
	reg [15:0] bIn;
	reg reset;

	// Outputs
	wire isZero;
	wire [15:0] outPut;
	reg [15:0] expected;

	// Instantiate the Unit Under Test (UUT)
	ALU16bit uut (
		.aluOp(aluOp), 
		.aIn(aIn), 
		.bIn(bIn), 
		.reset,
		.isZero(isZero), 
		.outPut(outPut)
	);

	initial begin
		// Initialize Inputs
		aluOp = 0;
		aIn = 0;
		bIn = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 1; #5; reset = 0;
		
		aluOp = 'b0000; // ADD
		aIn = 0; bIn = 0; expected = 0; #15;
		aIn = 1; bIn = 1; expected = 2; #15;	  
		aIn = 10; bIn = 0; expected = 10; #15;  // = 10
		aIn = 0; bIn = 10; expected = 10; #15;  // = 10
		aIn = 10; bIn = 10; expected = 20; #15; // = 20
		aIn = 13; bIn = 24; expected = 37; #15; // = 37
		
		aluOp = 'b0001; // OR
		aIn = 0; bIn = 0; expected = 0; #15;
		aIn = 2; bIn = 0; expected = 2; #15; 
		aIn = 3; bIn = 0; expected = 3; #15; // = 3
		aIn = 4; bIn = 0; expected = 4; #15; // = 4
		aIn = 5; bIn = 0; expected = 5; #15; // = 5
		aIn = 6; bIn = 0; expected = 6; #15; // = 6
		aIn = 7; bIn = 0; expected = 7; #15; // = 7
		aIn = 8; bIn = 0; expected = 8; #15; // = 8
		aIn = 'b1101110111011101; bIn = 'b0010001000100010; expected = 'b1111111111111111; #15; // = 'b1111111111111111
		aIn = 'b1111111111111111; bIn = 0; expected = 'b1111111111111111; #15; // = 'b1111111111111111
		aIn = 'b1010101010101010; bIn = 'b0101010101010101; expected = 'b1111111111111111; #15; // = 'b1111111111111111
      
		aluOp = 'b0010; // XOR
		aIn = 0; bIn = 0; expected = 0; #15;
		aIn = 2; bIn = 0; expected = 2; #15;
		aIn = 5; bIn = 0; expected = 5; #15;
		aIn = 0; bIn = 109; expected = 109; #15;
		aIn = 109; bIn = 109; expected = 'b0; #15;
		aIn = 'b0000011111100000; bIn = 'b1111000000001111; expected = 'b1111011111101111; #15;
		aIn = 'b1010101010101010; bIn = 'b0101010101010101; expected = 'b1111111111111111; #15;
		aIn = 'b1100110011001100; bIn = 'b0101010101010101; expected = 'b1001100110011001; #15;
		
		aluOp = 'b0011; // AND
		aIn = 0; bIn = 0; expected = 0; #15;
		aIn = 'b0000000000000000; bIn = 'b1111111111111111; expected = 0; #15;
		aIn = 'b1111111111111111; bIn = 'b0000000000000000; expected = 0; #15;
		aIn = 'b1111111100000000; bIn = 'b0000000011111111; expected = 0; #15;
		aIn = 'b1111111111111111; bIn = 'b0000000011111111; expected = 'b0000000011111111; #15;
		aIn = 'b1111111111111111; bIn = 'b1111111111111111; expected = 'b1111111111111111; #15;
		aIn = 'b1010101010101010; bIn = 'b1100110011001100; expected = 'b1000100010001000; #15;
		aIn = 'b1110001110001110; bIn = 'b1100110011001100; expected = 'b1100000010001100; #15;
		
		aluOp = 'b0100; //NOR
		aIn = 0; bIn = 0; expected = 'b1111111111111111; #15;
		aIn = 'b0000000000000000; bIn = 'b1111111111111111; expected = 0; #15;
		aIn = 'b1111111111111111; bIn = 'b0000000000000000; expected = 0; #15;
		aIn = 'b1100110011001100; bIn = 'b0000000000000000; expected = 'b0011001100110011; #15;
		aIn = 'b1100110011001100; bIn = 'b0011001100110011; expected = 'b0000000000000000; #15;
		aIn = 'b1110001110001110; bIn = 'b0011001100110011; expected = 'b0000110001000000; #15;
		aIn = 'b1110001110001110; bIn = 'b0011001100110011; expected = 'b0000110001000000; #15;
		
		aluOp = 'b0101; // SLL 
		aIn = 'b0000000000000000; bIn = 0; expected = 'b0000000000000000; #15;
		aIn = 'b0000000000000000; bIn = 1; expected = 'b0000000000000000; #15;
		aIn = 'b0000000000000000; bIn = 2; expected = 'b0000000000000000; #15;
		aIn = 'b0000000000000000; bIn = 3; expected = 'b0000000000000000; #15;
		aIn = 'b0000000000000001; bIn = 0; expected = 'b0000000000000001; #15;
		aIn = 'b0000000000000001; bIn = 1; expected = 'b0000000000000010; #15;
		aIn = 'b0000000000000001; bIn = 2; expected = 'b0000000000000100; #15;
		aIn = 'b0000000000000001; bIn = 3; expected = 'b0000000000001000; #15;
		aIn = 'b0000000000000001; bIn = 4; expected = 'b0000000000010000; #15;
		aIn = 'b0000000000000001; bIn = 5; expected = 'b0000000000100000; #15;
		aIn = 'b0000000000000001; bIn = 6; expected = 'b0000000001000000; #15;
		aIn = 'b0000000000000001; bIn = 7; expected = 'b0000000010000000; #15;
		aIn = 'b0000000000000001; bIn = 8; expected = 'b0000000100000000; #15;
		aIn = 'b0000000000000001; bIn = 9; expected = 'b0000001000000000; #15;
		aIn = 'b0000000000000001; bIn = 'ha; expected = 'b0000010000000000; #15;
		aIn = 'b0000000000000001; bIn = 'hb; expected = 'b0000100000000000; #15;
		aIn = 'b0000000000000001; bIn = 'hc; expected = 'b0001000000000000; #15;
		aIn = 'b0000000000000001; bIn = 'hd; expected = 'b0010000000000000; #15;
		aIn = 'b0000000000000001; bIn = 'he; expected = 'b0100000000000000; #15;
		aIn = 'b0000000000000001; bIn = 'hf; expected = 'b1000000000000000; #15;
		aIn = 'b0000000000000001; bIn = 'h10; expected = 'b0000000000000000; #15;
		aIn = 'b1111111111111111; bIn = 0; expected = 'b1111111111111111; #15;
		aIn = 'b1111111111111111; bIn = 1; expected = 'b1111111111111110; #15;
		aIn = 'b1111111111111111; bIn = 2; expected = 'b1111111111111100; #15;
		aIn = 'b1111111111111111; bIn = 3; expected = 'b1111111111111000; #15;
		aIn = 'b1111111111111111; bIn = 4; expected = 'b1111111111110000; #15;
		aIn = 'b1111111111111111; bIn = 5; expected = 'b1111111111100000; #15;
		aIn = 'b1111111111111111; bIn = 6; expected = 'b1111111111000000; #15;
		aIn = 'b1111111111111111; bIn = 7; expected = 'b1111111110000000; #15;
		aIn = 'b1100110011001100; bIn = 7; expected = 'b0110011000000000; #15;
		
		aluOp = 'b0110; // SRL
		aIn = 'b0000000000000000; bIn = 0; expected = 'b0000000000000000; #15;
		aIn = 'b0000000000000000; bIn = 1; expected = 'b0000000000000000; #15;
		aIn = 'b0000000000000000; bIn = 2; expected = 'b0000000000000000; #15;
		aIn = 'b1111111111111111; bIn = 0; expected = 'b1111111111111111; #15;
		aIn = 'b1111111111111111; bIn = 1; expected = 'b0111111111111111; #15;
		aIn = 'b1111111111111111; bIn = 2; expected = 'b0011111111111111; #15;
		aIn = 'b1111111111111111; bIn = 3; expected = 'b0001111111111111; #15;
		aIn = 'b1111111111111111; bIn = 4; expected = 'b0000111111111111; #15;
		aIn = 'b1111111111111111; bIn = 5; expected = 'b0000011111111111; #15;
		aIn = 'b1111111111111111; bIn = 6; expected = 'b0000001111111111; #15;
		aIn = 'b1111111111111111; bIn = 7; expected = 'b0000000111111111; #15;
		aIn = 'b1000000000000000; bIn = 0; expected = 'b1000000000000000; #15;
		aIn = 'b1000000000000000; bIn = 1; expected = 'b0100000000000000; #15;
		aIn = 'b1000000000000000; bIn = 2; expected = 'b0010000000000000; #15;
		aIn = 'b1000000000000000; bIn = 3; expected = 'b0001000000000000; #15;
		aIn = 'b1000000000000000; bIn = 4; expected = 'b0000100000000000; #15;
		aIn = 'b1000000000000000; bIn = 5; expected = 'b0000010000000000; #15;
		aIn = 'b1000000000000000; bIn = 6; expected = 'b0000001000000000; #15;
		aIn = 'b1000000000000000; bIn = 7; expected = 'b0000000100000000; #15;
		aIn = 'b1000000000000000; bIn = 8; expected = 'b0000000010000000; #15;
		aIn = 'b1000000000000000; bIn = 9; expected = 'b0000000001000000; #15;
		aIn = 'b1000000000000000; bIn = 'ha; expected = 'b0000000000100000; #15;
		aIn = 'b1000000000000000; bIn = 'hb; expected = 'b0000000000010000; #15;
		aIn = 'b1000000000000000; bIn = 'hc; expected = 'b0000000000001000; #15;
		aIn = 'b1000000000000000; bIn = 'hd; expected = 'b0000000000000100; #15;
		aIn = 'b1000000000000000; bIn = 'he; expected = 'b0000000000000010; #15;
		aIn = 'b1000000000000000; bIn = 'hf; expected = 'b0000000000000001; #15;
		aIn = 'b1000000000000000; bIn = 'h10; expected = 'b0000000000000000; #15;
		
		aluOp = 'b0111; // SUB
		aIn = 'b0000000000000000; bIn = 'b0000000000000000; expected = 'b0000000000000000; #15;
		aIn = 'b0000000000000000; bIn = 'b0000000000000000; expected = 'b0000000000000000; #15;
		aIn = 'b0111111111111111; bIn = 'b0111111111111111; expected = 'b0000000000000000; #15;
		aIn = 'b0111111111111111; bIn = 'b0000000000000000; expected = 'b0111111111111111; #15;
		aIn = 'b0100000000000000; bIn = 'b0011111111111111; expected = 'b0000000000000001; #15;
		aIn = 'b0000000000000000; bIn = 'b0000000000001111; expected = 'b1111111111110001; #15;
		
		aluOp = 'b1000; //NAND
		aIn = 'b0000000000000000; bIn = 'b0000000000000000; expected = 'b1111111111111111; #15;
		aIn = 'b1111111111111111; bIn = 'b0000000000000000; expected = 'b1111111111111111; #15;
		aIn = 'b1010101010101010; bIn = 'b0101010101010101; expected = 'b1111111111111111; #15;
		aIn = 'b1010101010101010; bIn = 'b1010101010101010; expected = 'b0101010101010101; #15;
		aIn = 'b1111111111111111; bIn = 'b1010101010101010; expected = 'b0101010101010101; #15;
		aIn = 'b1111111111111111; bIn = 'b1111111111111111; expected = 'b0000000000000000; #15;
		aIn = 'b1101001101001101; bIn = 'b1110100010111010; expected = 'b0011111111110111; #15;
		
		aluOp = 'b1001; //  MULT
		aIn = 'b0000000000000000; bIn = 'b0000000000000000; expected = 'b0000000000000000; #15;
		aIn = 'b0101010101010101; bIn = 'b0000000000000000; expected = 'b0000000000000000; #15;
		aIn = 'b0000000000000000; bIn = 'b1010101010101010; expected = 'b0000000000000000; #15;
		aIn = 'b0000000000000001; bIn = 'b1010101010101010; expected = 'b1010101010101010; #15;
		aIn = 2; bIn = 'b0101010101010101; expected = 'b1010101010101010; #15;
		aIn = 3; bIn = 'b0000000000010001; expected = 'b0000000000110011; #15;
		
		aluOp = 'b1110; // EQ0
		aIn = 0; bIn = 'b0000000000000000; expected = 1; #15;
		aIn = 1; expected = 0; #15;
		aIn = 2; expected = 0; #15;
		aIn = 3; expected = 0; #15;
		aIn = 4; expected = 0; #15;
		aIn = 5; expected = 0; #15;
		aIn = 6; expected = 0; #15;
		aIn = 7; expected = 0; #15;
		aIn = 8; expected = 0; #15;
		aIn = 9; expected = 0; #15;
		aIn = 10; expected = 0; #15;
		aIn = 0; expected = 1; #15;
		
		aluOp = 'b1111; // SLT
		aIn = 0; bIn = 0; expected = 0; #15;
		aIn = 1; bIn = 0; expected = 0; #15;
		aIn = 1; bIn = 1; expected = 0; #15;
		aIn = 0; bIn = 1; expected = 1; #15;
		aIn = 10; bIn = 1; expected = 0; #15;
		aIn = 10; bIn = 11; expected = 1; #15;
		aIn = 10; bIn = 11; expected = 1; #15;

		
																							  
																							  
																							  
	end
      
endmodule

