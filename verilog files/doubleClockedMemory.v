`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:00 02/11/2015 
// Design Name: 
// Module Name:    doubleClockedMemory 
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
module doubleClockedMemory(clk, wea, adrs, datIn, datOut
    );
	input clk, wea;
	input [15:0] datIn;
	input [9:0] adrs;
	output [15:0] datOut;
	
	reg dClk;
	
	always @(posedge clk, negedge clk) begin
		dClk = 1;
		#1;
		dClk = 0;
	end
	 
	
	blockmemory16bit iMem (
		dClk,		//.clka(dClk),		//.clka(clka),
		wea,		//.wea(wea),		//.wea(wea),
		adrs,		//.addra(adrs),		//.addra(addra),
		datIn,	//.dina(datIn),		//.dina(dina),
		datOut,	//.douta(datOut)	//.douta(douta)
	);		 


endmodule
