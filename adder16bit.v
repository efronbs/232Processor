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
//
//////////////////////////////////////////////////////////////////////////////////
module adder16bit(aIn, bIn, out
    );
	input [15:0] aIn, bIn;
	output reg [15:0] out;

	always @(aIn, bIn) begin
		out = aIn + bIn;
	end

endmodule
