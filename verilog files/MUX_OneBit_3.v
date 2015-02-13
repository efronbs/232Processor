`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:20:12 02/12/2015 
// Design Name: 
// Module Name:    MUX_OneBit_3 
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
module MUX_OneBit_3(in1, in2, ctrlSlct, muxOut
    );
	 input [2:0] in1;
    input [2:0] in2;
    input ctrlSlct;
    output reg [2:0] muxOut;
	 
	 always @ (in1, in2, ctrlSlct) begin
		case (ctrlSlct)
			'b0: muxOut = in1;
			'b1: muxOut = in2;
			default muxOut = in1;
		endcase
	 end

endmodule

