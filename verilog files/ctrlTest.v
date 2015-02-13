`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:59:09 01/28/2015
// Design Name:   ALUcontrol
// Module Name:   C:/Users/bonattt/Documents/School/2 Winter Sophomore/CSSE 232 Comp Arc/Final Project/Verilog/processor/ctrlTest.v
// Project Name:  processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUcontrol
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ctrlTest;

	// Inputs
	reg [3:0] op;
	reg [3:0] func;
	reg [3:0] expected;
	reg reset;
	
	wire [3:0] ALUop;

	// Instantiate the Unit Under Test (UUT)
	ALUcontrol uut (
		.op(op), 
		.func(func),
		.reset(reset),
		.ALUop(ALUop)
	);

	initial begin
		// Initialize Inputs
		op = 0;
		func = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		op = 'b0001; expected = 'b0000; #10;
		func = 1; #10; func = 2; #10; func = 3; #10;
		func = 4; #10; func = 5; #10; func = 6; #10;
		func = 7; #10; func = 8; #10; func = 9; #10;
		func = 10; #10; func = 11; #10; func = 12; #10;
		func = 13; #10; func = 14; #10; func = 15; #10;
		
		op = 'b0001; expected = 'b0000; #10;
		op = 'b0010; expected = 'b0111; #10;
		op = 'b0011; expected = 'b0111; #10;
		op = 'b0100; expected = 'b0000; #10;
		op = 'b0101; expected = 'b0000; #10;
		op = 'b0110; expected = 'b0000; #10;
		op = 'b0111; expected = 'b0000; #10;
		op = 'b1000; expected = 'b0000; #10;
		op = 'b1001; expected = 'b0001; #10;
		op = 'b1010; expected = 'b0011; #10;
		op = 'b1011; expected = 'b0100; #10;
		op = 'b1100; expected = 'b0101; #10;
		op = 'b1101; expected = 'b0110; #10;
		op = 'b1110; expected = 'b0000; #10;
		op = 'b1111; expected = 'b1111; #10;
		
		op = 0;
		func = 'b0000; expected = 'b0000; #10;
		func = 'b0001; expected = 'b0011; #10;
		func = 'b0010; expected = 'b0001; #10;
		func = 'b0011; expected = 'b0010; #10;
		func = 'b0100; expected = 'b0100; #10;
		func = 'b0101; expected = 'b0000; #10;
		func = 'b0110; expected = 'b0000; #10;
		func = 'b0111; expected = 'b0000; #10;
		func = 'b1000; expected = 'b1111; #10;
		func = 'b1001; expected = 'b1110; #10;
		func = 'b1010; expected = 'b1110; #10;
		func = 'b1011; expected = 'b0000; #10;
		func = 'b1100; expected = 'b0000; #10;
		func = 'b1101; expected = 'b0000; #10;
		func = 'b1110; expected = 'b0000; #10;
		func = 'b1111; expected = 'b0000; #10;

	end
      
endmodule

