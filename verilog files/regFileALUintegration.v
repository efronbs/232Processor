`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:25 02/11/2015 
// Design Name: 
// Module Name:    regFileALUintegration 
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
module regFileALUintegration(
	input [15:0] wrtData, IRdata,
	input [3:0] opCode, funcCode,
	input reset, regWrt, IRwrt,
	
   
	
	
	output [15:0] m, r1out, r2out, 
	output isZero
	);
	wire [15:0] ALUoutput, IRout;
	wire [3:0] ALUop; 
	wire [2:0] r1adrs, r2adrs, wDest;
	reg [15:0] AiA, AiB, ALUout;
	parameter mainReg = 'b000;

	regFile16bit8reg regFile(
		r1adrs,		//r1,
		r2adrs,		//r2,
		wDest,		//wDest,
		wrtData,		//wDat,
		regWrt,		//regWrt,
		reset,		//reset,
		r1out,		//r1out,
		r2out,		//r2out,
		m				//m
	);
	
	register16bit IR(
		IRdata,		//dataIn,
		IRwrt,		//write,
		reset,		//reset,
		IRout			//dataOut
	);
	
	 
	ALU16bit ALU(
		ALUop,		//aluOp,
		AiA,			//aIn,
		AiB,			//bIn,
		reset,		//reset,
		isZero,		//isZero,
		ALUoutput	//outPut
   );
	ALUcontrol ALUctrl(
		opCode,		// op
		funcCode,	// func
		reset,		// reset
		ALUop			// ALUop
   );
	
	always @(ALUoutput) begin
		ALUout = ALUoutput;
	end
	
	always @(posedge clk) begin
		
	end

endmodule
