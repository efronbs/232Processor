`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:32 01/27/2015 
// Design Name: 
// Module Name:    ALUcontrol 
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
module ALUcontrol(op, func
    );
	 
	input [3:0] op, func;
	output reg [3:0] ALUop;
	
	always @(op, func) begin
		if (op == 0) begin
			case (func)
				
				'b0000: ALUop <= 'b0000; // add
				'b0001: ALUop <= 'b0011; // and
				'b0010: ALUop <= 'b0001; // or
				'b0011: ALUop <= 'b0010; // xor
				'b0100: ALUop <= 'b0100; // nor
				'b0101: ALUop <= 'b0000; // unused --> XXXX
				'b0110: ALUop <= 'b0000; // copy --> XXXX
				'b0111: ALUop <= 'b0000; // jr --> XXXX
				'b1000: ALUop <= 'b0000; // unused --> XXXX
				'b1000: ALUop <= 'b1111; // slt
				'b1001: ALUop <= 'b1110; // brqz --> eq0
				'b1010: ALUop <= 'b1110; // bnez --> eq0
				'b1011: ALUop <= 'b0000; // unused --> XXXX
				'b1100: ALUop <= 'b0000; // unused --> XXXX
				'b1101: ALUop <= 'b0000; // unused --> XXXX
				'b1110: ALUop <= 'b0000; // unused --> XXXX
				'b1111: ALUop <= 'b0000; // unused --> XXXX
				
			endcase
		end
		
		else begin
			case (op)
			
			'b0001: ALUop <= 'b0000; // addi --> add
			'b0010: ALUop <= 'b0111; // beq --> sub
			'b0011: ALUop <= 'b0111; // bne --> sub
			'b0100: ALUop <= 'b0000; // jump --> XXXX
			'b0101: ALUop <= 'b0000; // lw --> add
			'b0110: ALUop <= 'b0000; // sw --> add
			'b0111: ALUop <= 'b0000; // unused????
			'b1000: ALUop <= 'b0000; // li --> XXXX
			'b1001: ALUop <= 'b0001; // ori --> or
			'b1010: ALUop <= 'b0011; // andi --> and
			'b1011: ALUop <= 'b0100; // nori --> nor
			'b1100: ALUop <= 'b0101; // sll --> <<
			'b1101: ALUop <= 'b0110; // srl --> >>
			'b1110: ALUop <= 'b0000; // sra --> ???
			'b1111: ALUop <= 'b1111; // slti --> slt
			
			endcase
		end
		
	end
	
endmodule
