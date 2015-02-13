`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:25:40 01/29/2015 
// Design Name: 
// Module Name:    SignExtend 
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
module SignExtend(in,
    CLK,
    reset,
	 imSlct,
    out
    );
	 input imSlct;
	 input CLK, reset;
	 input [15:0] in;
	 output reg [15:0] out;
	 reg i;
	 reg temp[15:0];
	 reg currentstate;
	 reg nextstate;
	 always @ (reset) begin out=0; end
	 always @ (posedge CLK) begin
		for(i=0;i<10;i=i+1) 
		begin
			temp[i]=in[i];
		end
		if (imSlct==0) begin
			temp[10]=in[10];
			temp[11]=in[11];
			for(i=12;i<16;i=i+1)
			begin
				temp[i]=in[11];
			end
		end
		else begin
			for(i=10;i<16;i=i+1)
			begin
				temp[i]=in[9];
			end
		end
		for(i=0;i<16;i=i+1)
		begin
			out[i] = temp[i];
		end
	 end
endmodule