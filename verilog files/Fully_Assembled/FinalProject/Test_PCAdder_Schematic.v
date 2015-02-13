// Verilog test fixture created from schematic C:\Users\humphrjm\Documents\Xilinx\232FinalProject\FinalProject\PCAdder_Schematic.sch - Thu Feb 12 18:54:04 2015

`timescale 1ns / 1ps

module PCAdder_Schematic_PCAdder_Schematic_sch_tb();

// Inputs
   reg [15:0] XLXN_11; // PC

// Output
   wire [15:0] XLXN_12; // Should be PC + 1

// Bidirs

// Instantiate the UUT
   PCAdder_Schematic UUT (
		.XLXN_11(XLXN_11), 
		.XLXN_12(XLXN_12)
   );
// Initialize Inputs
   //`ifdef auto_init
       
		initial begin
		XLXN_11 = 0;
		#100; 
		XLXN_11 = 0; #10; XLXN_11=1; #10; XLXN_11=150; #10; XLXN_11=151; #10; XLXN_11=1; #10; XLXN_11=5; #10; XLXN_11=4095; #10; XLXN_11=65535; #10; 
		end
		
   //`endif
	
	
endmodule
