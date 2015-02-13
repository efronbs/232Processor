// Verilog test fixture created from schematic C:\Users\humphrjm\Documents\Xilinx\232FinalProject\FinalProject\PCAdderMuxes_Schematic.sch - Thu Feb 12 21:00:10 2015

`timescale 1ns / 1ps

module PCAdderMuxes_Schematic_PCAdderMuxes_Schematic_sch_tb();

// Inputs
   reg CLK;
   reg PCWRT;
   reg RESET;
   reg [15:0] SEIMM;
   reg [15:0] IR;
   reg CTRLBRIZ;
   reg CTRLJUMP;

// Output
   wire [15:0] PC_IN;

// Bidirs

// Instantiate the UUT
   PCAdderMuxes_Schematic UUT (
		.CLK(CLK), 
		.PCWRT(PCWRT), 
		.RESET(RESET), 
		.SEIMM(SEIMM), 
		.IR(IR), 
		.CTRLBRIZ(CTRLBRIZ), 
		.PC_IN(PC_IN), 
		.CTRLJUMP(CTRLJUMP)
   );
// Initialize Inputs
	initial begin
		CLK = 0;
		PCWRT = 0;
		RESET = 0;
		SEIMM = 0;
		IR = 0;
		CTRLBRIZ = 0;
		CTRLJUMP = 0;
		
		#100;
		RESET=1;
		CLK=1; #5; CLK=0; #5;
		RESET=0; PCWRT=0; 
		CLK=1; #5; CLK=0; #5;
		PCWRT=1; 
		CLK=1; #5; CLK=0; #5;
		CLK=1; #5; CLK=0; #5;
		CTRLBRIZ=1; SEIMM=256;
		CLK=1; #5; CLK=0; #5;
		CLK=1; #5; CLK=0; #5;
		CTRLBRIZ=0; CTRLJUMP=1; IR=70;
		CLK=1; #5; CLK=0; #5;
		CLK=1; #5; CLK=0; #5;
		CTRLJUMP=0;
		CLK=1; #5; CLK=0; #5;
		CLK=1; #5; CLK=0; #5;
		
		
		
		
	end
endmodule
