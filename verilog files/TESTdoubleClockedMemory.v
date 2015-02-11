`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:20:01 02/11/2015
// Design Name:   doubleClockedMemory
// Module Name:   C:/Users/bonattt/Documents/School/2 Winter Sophomore/CSSE 232 Comp Arc/Final Project/Verilog/processor/TESTdoubleClockedMemory.v
// Project Name:  processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: doubleClockedMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TESTdoubleClockedMemory;

	// Inputs
	reg clk;
	reg wea;
	reg [9:0] adrs;
	reg [15:0] datIn;
	

	// Outputs
	wire [15:0] datOut;
	reg [15:0] expected;

	// Instantiate the Unit Under Test (UUT)
	doubleClockedMemory uut (
		.clk(clk), 
		.wea(wea), 
		.adrs(adrs), 
		.datIn(datIn), 
		.datOut(datOut)
	);
	
	always @(clk) begin
		#5;
		clk = !clk;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		wea = 0;
		adrs = 0;
		datIn = 0;

		// Wait 100 ns for global reset to finish
		#100;
		expected = 0;
      adrs = 1; #5;
      adrs = 2; #5;
      adrs = 3; #5;
      adrs = 4; #5;
		datIn = 1; #5;
		datIn = 2; #5;
		datIn = 3; #5;
		datIn = 4; #5;
		
		wea = 1;
		adrs = 0; datIn = 0; #5;
		adrs = 1; datIn = 1; #5;
		adrs = 2; datIn = 2; #5;
		adrs = 3; datIn = 3; #5;
		adrs = 4; datIn = 4; #5;
		
		wea=0;
		adrs = 0; expected = 0; #5;
		adrs = 1; expected = 1; #5;
		adrs = 2; expected = 2; #5;
		adrs = 3; expected = 3; #5;
		adrs = 4; expected = 4; #5;
		  
		// Add stimulus here

	end
      
endmodule

