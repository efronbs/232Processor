`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:52:19 01/28/2015
// Design Name:   regFile16bit8reg
// Module Name:   C:/Users/bonattt/Documents/School/2 Winter Sophomore/CSSE 232 Comp Arc/Final Project/Verilog/processor/regFileTest.v
// Project Name:  processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: regFile16bit8reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regFileTest;

	// Inputs
	reg [2:0] r1;
	reg [2:0] r2;
	reg [2:0] wDest;
	reg [15:0] wDat;
	reg regWrt;
	reg reset;

	// Outputs
	wire [15:0] r1out;
	wire [15:0] r2out;
	wire [15:0] mainReg;

	// Instantiate the Unit Under Test (UUT)
	regFile16bit8reg uut (
		.r1(r1), 
		.r2(r2), 
		.wDest(wDest), 
		.wDat(wDat), 
		.regWrt(regWrt), 
		.reset(reset), 
		.r1out(r1out), 
		.r2out(r2out), 
		.m(mainReg)
	);

	initial begin
		// Initialize Inputs
		r1 = 0;
		r2 = 0;
		wDest = 0;
		wDat = 0;
		regWrt = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		reset = 1; #10; reset = 0; #10;
		
		regWrt = 1;
		wDat = 1; wDest = 1; #10;
		wDat = 2; wDest = 2; #10;
		wDat = 3; wDest = 3; #10;
		wDat = 4; wDest = 4; #10;
		wDat = 5; wDest = 5; #10;
		wDat = 6; wDest = 6; #10;
		wDat = 7; wDest = 7; #10;
		regWrt = 0;
		wDat = 10; wDest = 1; #10;
		wDat = 20; wDest = 2; #10;
		wDat = 30; wDest = 3; #10;
		wDat = 40; wDest = 4; #10;
		wDat = 50; wDest = 5; #10;
		wDat = 60; wDest = 6; #10;
		wDat = 70; wDest = 7; #10;
		r1 = 0; r2 = 7; #10;
		r1 = 1; r2 = 6; #10;
		r1 = 2; r2 = 5; #10;
		r1 = 3; r2 = 4; #10;
		r1 = 4; r2 = 3; #10;
		r1 = 5; r2 = 2; #10;
		r1 = 6; r2 = 1; #10;
		r1 = 7; r2 = 0; #10;
        
		// Add stimulus here

	end
      
endmodule

