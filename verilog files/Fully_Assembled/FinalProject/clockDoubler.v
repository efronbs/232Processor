`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:59 02/10/2015 
// Design Name: 
// Module Name:    clockDoubler 
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
module clockDoubler(clkIn, dClk
    );
	 input clkIn;
	 output reg dClk;
	 
	 always @(posedge clkIn, negedge clkIn) begin
		dClk = 1;
		#1;
		dClk = 0;
	 
	 end


endmodule
