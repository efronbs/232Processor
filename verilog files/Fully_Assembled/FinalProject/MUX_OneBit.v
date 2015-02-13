`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:49:37 02/12/2015 
// Design Name: 
// Module Name:    MUX_OneBit 
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
module MUX_OneBit(in1, in2, ctrlSlct, muxOut
    );
	 input [15:0] in1;
    input [15:0] in2;
    input ctrlSlct;
    output reg [15:0] muxOut;
	 
	 always @ (in1, in2, ctrlSlct) begin
		case (ctrlSlct)
			'b00: muxOut = in1;
			'b01: muxOut = in2;
			default muxOut = in1;
		endcase
	 end
endmodule
