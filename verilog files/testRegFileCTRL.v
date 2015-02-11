`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:11:24 02/11/2015
// Design Name:   regFileanCtrl
// Module Name:   C:/Users/bonattt/Documents/School/2 Winter Sophomore/CSSE 232 Comp Arc/Final Project/Verilog/processor/testRegFileCTRL.v
// Project Name:  processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: regFileanCtrl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testRegFileCTRL;

	// Inputs
	reg [15:0] IRin;
	reg [15:0] wrtDat;
	reg wrtToTestIR;
	reg reset;
	wire clk;

	// Outputs
	wire [15:0] IRout;
	wire [15:0] r1out;
	wire [15:0] r2out;
	wire [15:0] m;
	wire branch;
	wire jump;
	wire useFirstReg;
	wire useReg;
	wire PCwrt;
	wire IRwrt;
	wire memOWrt;
	wire Awrt;
	wire Bwrt;
	wire ALUwrt;
	wire regWrt;
	wire wAdrs;
	wire memAdrsSlct;
	wire immSlct;
	wire bneObeq;
	wire [1:0] wDat;
	wire [1:0] imOrR;
	
	reg [15:0] exp1, exp2;
	
	clockModule clock (
		reset,
		clk
	);

	// Instantiate the Unit Under Test (UUT)
	regFileanCtrl uut (
		.IRin(IRin), 
		.wrtDat(wrtDat), 
		.wrtToTestIR(wrtToTestIR), 
		.reset(reset), 
		.clk(clk), 
		.IRout(IRout), 
		.r1out(r1out), 
		.r2out(r2out), 
		.m(m), 
		.branch(branch), 
		.jump(jump), 
		.useFirstReg(useFirstReg), 
		.useReg(useReg), 
		.PCwrt(PCwrt), 
		.IRwrt(IRwrt), 
		.memOWrt(memOWrt), 
		.Awrt(Awrt), 
		.Bwrt(Bwrt), 
		.ALUwrt(ALUwrt), 
		.regWrt(regWrt), 
		.wAdrs(wAdrs), 
		.memAdrsSlct(memAdrsSlct), 
		.immSlct(immSlct), 
		.bneObeq(bneObeq), 
		.wDat(wDat), 
		.imOrR(imOrR)
	);

	initial begin
		// Initialize Inputs
		IRin = 0;
		wrtDat = 0;
		wrtToTestIR = 0;
		reset = 0;
		exp1 = 0;
		exp2 = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
		
		/*		TESTING MACHINE CODE
		the following code is the pseudoinstruction swap $m, $t0
		0000 000 011 0110 xx
		0000 000 100 0110 xx
		0000 011 000 0110 xx
		*/

		
		reset = 1; #5;
		reset = 0;		
		
		IRin = 'bxxxx000000xxxxxx; wrtToTestIR = 1; exp2 = 0; #5; // fetchA
		IRin = 'bxxxx000001xxxxxx; wrtToTestIR = 1; exp2 = 1; #5; // fetchA
		IRin = 'bxxxx000010xxxxxx; wrtToTestIR = 1; exp2 = 2; #5; // fetchA
		IRin = 'bxxxx000011xxxxxx; wrtToTestIR = 1; exp2 = 3; #5; // fetchA
		IRin = 'bxxxx000100xxxxxx; wrtToTestIR = 1; exp2 = 4; #5; // fetchA
		IRin = 'bxxxx000101xxxxxx; wrtToTestIR = 1; exp2 = 5; #5; // fetchA
		IRin = 'bxxxx000110xxxxxx; wrtToTestIR = 1; exp2 = 6; #5; // fetchA
		IRin = 'bxxxx000111xxxxxx; wrtToTestIR = 1; exp2 = 7; #5; // fetchA
		
		IRin = 'bxxxx111000xxxxxx; wrtToTestIR = 1; exp1 = 0;  #5; // fetchA
		IRin = 'bxxxx110000xxxxxx; wrtToTestIR = 1; exp1 = 1;  #5; // fetchA
		IRin = 'bxxxx101000xxxxxx; wrtToTestIR = 1; exp1 = 2;  #5; // fetchA
		IRin = 'bxxxx100000xxxxxx; wrtToTestIR = 1; exp1 = 3;  #5; // fetchA
		IRin = 'bxxxx011000xxxxxx; wrtToTestIR = 1; exp1 = 4;  #5; // fetchA
		IRin = 'bxxxx010000xxxxxx; wrtToTestIR = 1; exp1 = 5;  #5; // fetchA
		IRin = 'bxxxx001000xxxxxx; wrtToTestIR = 1; exp1 = 6;  #5; // fetchA
		IRin = 'bxxxx000000xxxxxx; wrtToTestIR = 1; exp1 = 7;  #5; // fetchA
		
	end
      
endmodule

