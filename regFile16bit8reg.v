`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Rose-Hulman CSSE dept. (student)
// Engineer: Thomas Bonatti
// 
// Create Date:    01/28/2015 
// Design Name: 
// Module Name:    ALU16bit 
// Project Name: 	csse232 comp arc final project (team B)
//
// this is a register file containing 8 16-bit regs.
//
//////////////////////////////////////////////////////////////////////////////////
module regFile16bit8reg(r1, r2, wDest, wDat, regWrt, reset, r1out, r2out, m
    );
	input [2:0] r1, r2, wDest;
	input [15:0] wDat;
	input regWrt;
	input reset;
	output reg [15:0] r1out, r2out;
	
	reg [15:0] ra, sp, at, t0, t1, t2, s;
	output reg [15:0] m;
	
	
	always @(wDat, wDest, regWrt, reset) begin
		
		if (reset == 1) begin
			m = 0;
			ra = 0;
			sp = 0;
			at = 0;
			t0 = 0;
			t1 = 0;
			t2 = 0;
			s = 0;
		end
		
		if (regWrt == 1) begin
			case (wDest)
				'b000: m = wDat;
				'b001: ra = wDat;
				'b010: sp = wDat;
				'b011: at = wDat;
				'b100: t0 = wDat;
				'b101: t1 = wDat;
				'b110: t2 = wDat;
				'b111: s = wDat;
			endcase
		end
	end
	
	always @(r1, r2, m, ra, sp, at, t0, t1, t2, s) begin
		case (r1)
			'b000: r1out = m;
			'b001: r1out = ra;
			'b010: r1out = sp;
			'b011: r1out = at;
			'b100: r1out = t0;
			'b101: r1out = t1;
			'b110: r1out = t2;
			'b111: r1out = s;
		endcase
//	end
//	always @(r2, m, ra, sp, at, t0, t1, t2, s) begin
		case (r2)
			'b000: r2out = m;
			'b001: r2out = ra;
			'b010: r2out = sp;
			'b011: r2out = at;
			'b100: r2out = t0;
			'b101: r2out = t1;
			'b110: r2out = t2;
			'b111: r2out = s;
		endcase
		
		
	end



endmodule
