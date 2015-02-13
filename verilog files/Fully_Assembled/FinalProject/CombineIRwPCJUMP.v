`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:34:27 02/13/2015 
// Design Name: 
// Module Name:    CombineIRwPCJUMP 
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
module CombineIRwPCJUMP( irIN, pcIN, jumpAddrOUT
    );
	input [15:0] irIN;
	input [15:0] pcIN;
	output reg [15:0] jumpAddrOUT;
	reg [15:0] i;
	always @ (irIN, pcIN) begin
		for(i=0;i<12;i=i+1) begin
			jumpAddrOUT[i] = irIN[i];
		end
		for(i=12;i<16;i=i+1) begin
			jumpAddrOUT[i] = pcIN[i];
		end
	end

endmodule
