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
// This is a 16 bit register.
//
//////////////////////////////////////////////////////////////////////////////////
module register16bit(dataIn, clk, write, reset, dataOut
    );
	input [15:0] dataIn;
	input write, reset, clk;
	output reg [15:0] dataOut;
	
	always @(posedge reset) dataOut = 0;
	
	always @(posedge clk) begin
		if (write == 1) begin
			dataOut = dataIn;
		end
	end

endmodule
