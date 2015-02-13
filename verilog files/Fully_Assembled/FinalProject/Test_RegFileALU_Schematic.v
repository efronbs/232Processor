// Verilog test fixture created from schematic C:\Users\humphrjm\Documents\Xilinx\232FinalProject\FinalProject\RegFileALU_Schematic.sch - Fri Feb 13 00:52:34 2015

`timescale 1ns / 1ps

module RegFileALU_Schematic_RegFileALU_Schematic_sch_tb();

// Inputs
   reg [15:0] ALUOut;
   reg [15:0] AiACOPY;
   reg [1:0] wDatCTRL;
   reg wAdrsCTRL;
   reg useFirstRegCTRL;
   reg useRegCTRL;
   reg CLK;
   reg RESET;
   reg IRwrtCTRL;
   reg memOWCTRL;
   reg RegWrtCTRL;
   reg [15:0] SEIMM;
   reg iorCTRL;
   reg [15:0] IR_IN;
   reg [15:0] MemO_IN;

// Output
   wire [15:0] REG0OUT;
   wire [15:0] AiAOUT;
   wire [15:0] AiBOUT;

// Bidirs

// Instantiate the UUT
   RegFileALU_Schematic UUT (
		.REG0OUT(REG0OUT), 
		.ALUOut(ALUOut), 
		.AiACOPY(AiACOPY), 
		.wDatCTRL(wDatCTRL), 
		.wAdrsCTRL(wAdrsCTRL), 
		.useFirstRegCTRL(useFirstRegCTRL), 
		.useRegCTRL(useRegCTRL), 
		.CLK(CLK), 
		.RESET(RESET), 
		.IRwrtCTRL(IRwrtCTRL), 
		.memOWCTRL(memOWCTRL), 
		.RegWrtCTRL(RegWrtCTRL), 
		.AiAOUT(AiAOUT), 
		.SEIMM(SEIMM), 
		.iorCTRL(iorCTRL), 
		.AiBOUT(AiBOUT), 
		.IR_IN(IR_IN), 
		.MemO_IN(MemO_IN)
   );
// Initialize Inputs

	initial begin
		ALUOut = 0;
		AiACOPY = 0;
		wDatCTRL = 0;
		wAdrsCTRL = 0;
		useFirstRegCTRL = 0;
		useRegCTRL = 0;
		CLK = 0;
		RESET = 0;
		IRwrtCTRL = 0;
		memOWCTRL = 0;
		RegWrtCTRL = 0;
		SEIMM = 0;
		iorCTRL = 0;
		IR_IN = 0;
		MemO_IN = 0;
		
		
		#100;
		RegWrtCTRL=1;
		CLK=1; #5; CLK=0; #5;
		IR_IN = 150; MemO_IN = 123; IRwrtCTRL=1; memOWCTRL=1;
		CLK=1; #5; CLK=0; #5;
		IR_IN='b0000000001000000; wAdrsCTRL = 1;
		CLK=1; #5; CLK=0; #5;
		RegWrtCTRL=0; wAdrsCTRL=0;
		CLK=1; #5; CLK=0; #5;
		
		CLK=1; #5; CLK=0; #5;
		
		CLK=1; #5; CLK=0; #5;
		
		CLK=1; #5; CLK=0; #5;
		
		CLK=1; #5; CLK=0; #5;
		
		CLK=1; #5; CLK=0; #5;
		
		CLK=1; #5; CLK=0; #5;
		
		CLK=1; #5; CLK=0; #5;
		
		CLK=1; #5; CLK=0; #5;
		
		CLK=1; #5; CLK=0; #5;
		
		CLK=1; #5; CLK=0; #5;
	end
endmodule
