`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:09:02 01/27/2015 
// Design Name: 
// Module Name:    ALU16bit 
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
module ALU16bit(aluOp, aIn, bIn, isZero, outPut
    );
	 input [3:0] aluOp;
	 input [15:0] aIn, bIn;
	 output isZero;
	 output reg [15:0] outPut;
	 
	always @(aluOp, aIn, bIn) begin
		case(aluOp)
			'b0000: outPut <= aIn + bIn; // add
			'b0001: outPut <= aIn | bIn; // or
			'b0010: outPut <= aIn ^ bIn; // xor
			'b0011: outPut <= aIn & bIn; // and
			'b0100: outPut <= ~(aIn | bIn); // nor
			'b0101: outPut <= aIn >> bIn;	// sll
			'b0110: outPut <= aIn << bIn;	// srl
			'b0111: outPut <= aIn - bIn; // sub
			'b1000: outPut <= ~(aIn & bIn); // nand
			'b1001: outPut <= aIn * bIn;  // mult
			
			'b1110: begin						//eq0
				if (aIn == 0) begin
					outPut <= 1;
				end
				else begin
					outPut <= 0;
				end
			
			end
			
			'b1111: begin						// slt
				if (aIn < bIn) begin
					outPut <= 1;
				end
				else begin
					outPut <= 0;
				end
			end
			
			
			
		endcase
	end

endmodule
