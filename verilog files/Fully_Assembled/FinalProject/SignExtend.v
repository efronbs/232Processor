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
module SignExtend(in1, in2,
    CLK,
    reset,
	 imSlct,
    outExtend
    );
	 input imSlct;
	 input CLK, reset;
	 input [11:0] in1;
	 input [9:0] in2;
	 output reg [15:0] outExtend;
	 reg [4:0] i;
	 reg temp[15:0];
	 reg currentstate;
	 reg nextstate;
	 always @ (reset) begin outExtend=0; end
	 always @ (posedge CLK) begin
		if(imSlct == 'b0) begin
			for (i=0;i<12;i=i+1) begin
				outExtend[i] = in1[i];
			end
			for (i=12;i<16;i=i+1) begin
				outExtend[i] = in1[11];
			end
		end
		else begin
			for (i=0;i<10;i=i+1) begin
				outExtend[i] = in2[i];
			end
			for (i=10;i<16;i=i+1) begin
				outExtend[i] = in2[9];
			end
		end
	 end
endmodule
