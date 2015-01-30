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
module SignExtend(
    input in[16:0],
    input CLK,
    input reset,
	 input imSlct,
    output out
    );
	 reg bitset;
	 reg i;
	 reg currentstate;
	 reg nextstate;
	 always @ (reset) begin out=0; end
	 always @ (posedge CLK) begin
		if (imSlct==0) begin
			if (in[11]==1) bitset=1;
			else bitset=0;
			for(i=12;i<16;i=i+1)
			begin
				in[i]=bitset;
			end
		end
		else begin
			if(in[9]==1) bitset=1;
			else bitset=0;
			for(i=10;i<16;i=i+1)
			begin
				in[i]=bitset;
			end
		end
	 end
endmodule