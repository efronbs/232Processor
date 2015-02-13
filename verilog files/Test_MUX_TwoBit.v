`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:22:36 02/12/2015
// Design Name:   MUX_TwoBit
// Module Name:   C:/Users/humphrjm/Documents/Xilinx/232FinalProject/FinalProject/Test_MUX_TwoBit.v
// Project Name:  FinalProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_TwoBit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_MUX_TwoBit;

	// Inputs
	reg [15:0] in1;
	reg [15:0] in2;
	reg [15:0] in3;
	reg [15:0] in4;
	reg [1:0] ctrlSlct;

	// Outputs
	wire [15:0] muxOut;

	// Instantiate the Unit Under Test (UUT)
	MUX_TwoBit uut (
		.in1(in1), 
		.in2(in2), 
		.in3(in3), 
		.in4(in4), 
		.ctrlSlct(ctrlSlct), 
		.muxOut(muxOut)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 0;
		in3 = 0;
		in4 = 0;
		ctrlSlct = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		in1 = 500; in2 = 350; in3 = 150; in4 = 10; ctrlSlct = 0;
		#10;
		
		in1 = 500; in2 = 350; in3 = 150; in4 = 10; ctrlSlct = 1;
		#10;
		
		in1 = 500; in2 = 350; in3 = 150; in4 = 10; ctrlSlct = 2;
		#10;
		
		in1 = 500; in2 = 350; in3 = 150; in4 = 10; ctrlSlct = 3;
		#10;
		
		in1 = 300; in2 = 300; in3 = 100; in4 = 1000; ctrlSlct = 0;
		#10;
		
		in1 = 300; in2 = 300; in3 = 150; in4 = 150; ctrlSlct = 1;
		#10;
		
		in1 = 500; in2 = 350; in3 = 150; in4 = 10; ctrlSlct = 2;
		#10;
		
		in1 = 500; in2 = 350; in3 = 150; in4 = 10; ctrlSlct = 3;
		#10;

	end
      
endmodule

