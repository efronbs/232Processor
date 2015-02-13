// Verilog test fixture created from schematic C:\Users\humphrjm\Documents\Xilinx\232FinalProject\FinalProject\PCPCAdder_Schematic.sch - Thu Feb 12 19:52:23 2015

`timescale 1ns / 1ps

module PCPCAdder_Schematic_PCPCAdder_Schematic_sch_tb();

// Inputs
   reg XLXN_2;
   reg XLXN_3;
   reg XLXN_4;

// Output
   wire [15:0] XLXN_6;

// Bidirs

// Instantiate the UUT
   PCPCAdder_Schematic UUT (
		.XLXN_2(XLXN_2), 
		.XLXN_3(XLXN_3), 
		.XLXN_4(XLXN_4), 
		.XLXN_6(XLXN_6)
   );
// Initialize Inputs

   initial begin
		XLXN_2 = 0;
		XLXN_3 = 0;
		XLXN_4 = 0;
		#100;
		XLXN_4 = 1;
		XLXN_2 = 1; #5; XLXN_2 = 0; #5;
		XLXN_3 = 1;
		XLXN_2 = 1; #5; XLXN_2 = 0; #5;
		XLXN_3 = 0; XLXN_4 = 0;
		XLXN_2 = 1; #5; XLXN_2 = 0; #5;
		XLXN_3 = 1;
		XLXN_2 = 1; #5; XLXN_2 = 0; #5;
		
		XLXN_2 = 1; #5; XLXN_2 = 0; #5;
		
		XLXN_2 = 1; #5; XLXN_2 = 0; #5;
		
		XLXN_2 = 1; #5; XLXN_2 = 0; #5;
		
		XLXN_2 = 1; #5; XLXN_2 = 0; #5;
		
		XLXN_2 = 1; #5; XLXN_2 = 0; #5;
		
		XLXN_2 = 1; #5; XLXN_2 = 0; #5;
		
		XLXN_2 = 1; #5; XLXN_2 = 0; #5;
		
		XLXN_2 = 1; #5; XLXN_2 = 0; #5;
	end

endmodule
