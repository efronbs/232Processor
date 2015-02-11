`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:29:51 02/11/2015 
// Design Name: 
// Module Name:    regFileanCtrl 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module regFileanCtrl(
	input [15:0] IRin, wrtDat,
	input wrtToTestIR, reset, clk,

	
	output [15:0] IRout, r1out, r2out, m,
	output branch, jump, useFirstReg, useReg, PCwrt, IRwrt, memOWrt, Awrt, Bwrt, ALUwrt, regWrt, wAdrs, memAdrsSlct, immSlct, bneObeq,
	output [1:0] wDat, imOrR
    );
	parameter mainReg = 0;
	reg [2:0] r1in, r2in;
	reg [3:0] opCode, funcCode;
			

	
	always @(IRout) begin
		if (useReg == 1) begin 
			r1in = IRout[11:9];
		end else begin
			r1in = mainReg;
		end
		
		if (useFirstReg == 1) begin
			r2in = IRout[11:9];
		end else begin 
			r2in = IRout[8:6];
		end		
		opCode = IRout[15:12];
		funcCode = IRout[3:0];
	end
	 
	 
	register16bit IR(
		IRin,		//dataIn,
		wrtToTestIR,		//write,
		reset,		//reset,
		IRout		//dataOut
   );
	
	MainControl CTRL(
		//input
		opCode,		//op,
		funcCode,	//func,
		reset,		//reset,
		clk,			//CLK,
		//output
		branch,		//branch,
		jump,			//jump,
		useFirstReg,//useFirstReg
		useReg,		//useReg
		PCwrt,		//PCwrt,
		IRwrt,		//IRwrt,
		memOWrt,		//memOWrt,
		Awrt,			//Awrt,
		Bwrt,			//Bwrt,
		ALUwrt,		//ALUwrt,
		regWrt,		//regWrt,
		memWrt,		//memWrt,
		wAdrs,		//wAdrs,
		wDat,			//wDat [1:0], // AiA- 00   ALUout- 01  imm- 10  memOut- 11
		memAdrsSlct,//memAdrsSlct,
		imOrR,		//imOrR[1:0], // 00 r2out, 01 Sign Ext, 10 PC+1
		immSlct,		//immSlct,
		bneObeq		//BNEoBEQ // 0 if BEQ, 1 if BNE
	);
	
	regFile16bit8reg regFile(
		r1in,			//r1,
		r2in,			//r2,
		mainReg,		//wDest,
		wrtDat,		//wDat,
		regWrt,		//regWrt,
		reset,		//reset,
		r1out,		//r1out,
		r2out,		//r2out,
		m				//m
    );



endmodule
