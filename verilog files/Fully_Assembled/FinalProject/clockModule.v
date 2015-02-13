`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:47 02/11/2015 
// Design Name: 
// Module Name:    clockModule 
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
module clockModule(
	input reset,
   output reg clk
    );
	 
	always @(posedge reset) begin
		clk = 0;
	end
	
	always  begin
		#5;
		clk = ~clk;
	end
	 
	 endmodule
