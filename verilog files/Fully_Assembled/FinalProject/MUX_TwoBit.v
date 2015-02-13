`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:14 02/12/2015 
// Design Name: 
// Module Name:    MUX_TwoBit 
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
module MUX_TwoBit(in1, in2, in3, in4, ctrlSlct, muxOut
    );
	 input [15:0] in1;
    input [15:0] in2;
    input [15:0] in3;
    input [15:0] in4;
    input [1:0] ctrlSlct;
    output reg [15:0] muxOut;
	 
	 always @ (in1, in2, in3, in4, ctrlSlct) begin
		case (ctrlSlct)
			'b00: muxOut = in1;
			'b01: muxOut = in2;
			'b10: muxOut = in3;
			'b11: muxOut = in4;
			default muxOut = in1;
		endcase
	 end

endmodule
