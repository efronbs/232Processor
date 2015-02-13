`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:40:02 02/13/2015 
// Design Name: 
// Module Name:    MUX_OneBit_1 
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
module MUX_OneBit_1(in1, in2, ctrlSlct, muxOut
    );
	 input in1;
    input in2;
	 input ctrlSlct;
    output reg muxOut;
	 
	 always @ (in1, in2, ctrlSlct) begin
		case (ctrlSlct)
			'b00: muxOut = in1;
			'b01: muxOut = in2;
			default muxOut = in1;
		endcase
	 end

endmodule