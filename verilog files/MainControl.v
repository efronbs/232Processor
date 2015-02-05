`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:51:42 01/27/2015 
// Design Name: 
// Module Name:    MainControl 
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


module MainControl(
	input [3:0] op,
	input [3:0] func,
	input reset,
	input CLK,
	output branch,
	output jump[1:0], // 00 default, 01 jumping, 10 jr

	output PCwrt,
	output IRwrt,
	output memOWrt,
	output Awrt,
	output Bwrt,
	output ALUwrt,
	output regWrt,
	output memWrt,

	output wAdrs,
	output wDat [1:0], // AiA- 00   ALUout- 01  imm- 10  memOut- 11
	output memAdrsSlct,
	output imOrR[1:0], // 00 r2out, 01 Sign Ext, 10 PC+1
	output immSlct,
	
	output BNEoBEQ // 0 if BEQ, 1 if BNE
	);
	reg currentState [4:0];
	reg nextState [4:0];
	
	// reset all signals to 0
	always @	(reset) begin
		branch = 0;
		jump = 'b00;

		PCwrt = 0;
		IRwrt = 0;
		memOWrt = 0;
		Awrt = 0;
		Bwrt = 0;
		ALUwrt = 0;
		regWrt = 0;
		memWrt = 0;

		wAdrs = 0;
		wDat = 'b00;
		memAdrsSlct = 0;
		imOrR = 'b00;
		immSlct = 0;

		BNEoBEQ=0;
	end
	
	// MOVE TO NEXT STATE (next state is set elsewhere)
	always @ (posedge CLK) begin
		currentState = nextState;
	end
	
	// SET THE NEXT STATE
	always @ (currentState) begin
		
		if(currentState == 0) begin // state 00000 = FETCH
		// in the FETCH state, get the op/func code, and determine the next state from that.
		// while not in FETCH, the states are just a series of steps to complete an instruction, so nextState is basred on currentState
			
			if (op == 0) begin // R types
				if (func == 'b0111) nextState <= 'b10100; //jr code					
				else if (func == 'b0110) nextState = 'b01111;//copy code	
				else if (func == 'b1001) nextState = 'b10110; // slt 
				else nextState = 'b10001;
			end
			
			else begin // if op is not 0, use op code to determine the instruction
				case (op) // I-type and IR-type instructions
					
					'b0001:	nextState = 'b00001; // addi (add immediate)
					'b0010:	nextState = 'b00101; // beq (brach equal)
					'b0011:	nextState = 'b10100; // bne (branch not equal)
					'b0100:	nextState = 'b00100; // J (jump)
					'b0101:	nextState = 'b00111; // lw (load word)
					'b0110:	nextState = 'b01011; // sw (store word)

					'b1000:	nextState = 'b01110; // li (load immediate)
					'b1001:	nextState = 'b00001; // ori (or immediate)
					'b1010:	nextState = 'b00001; // andi (and immediate)
					'b1011:	nextState = 'b00001; // nori (nor immediate)
					'b1100:	nextState = 'b0; // TODO we have a lot more to do with our states // sll (shift left logical)
					'b1101:	nextState = 'b0; // TODO we have a lot more to do with our states // srl (shift right logical)
					'b1110:	nextState = 'b0; // TODO we have a lot more to do with our states // sra (shift right arithmetic)
					'b1111:	nextState = 'b0; // TODO we have a lot more to do with our states // slti (set less than)
					
				endcase
			end
			
		end
		
		else begin // if the state is not FETCH
			case (currentState)
				// when you reach the end of an instruction type's states, reset the state to 0 to repeat fetch
				'b00011:		nextState = 0; // end of I-type
				'b00100:		nextState = 0; // end of jump
				'b00110:		nextState = 0; // end of beq
				'b01010:		nextState = 0; // end of load word
				'b01101:		nextState = 0; // end of store word
				'b01110:		nextState = 0; // end of load immediate
				'b10000:		nextState = 0; // end of copy
				'b10011:		nextState = 0; // end of R-Type
				'b10101:		nextState = 0;	//	end bne
				'b11000:		nextState = 0; // end of jr
				'b10110:		nextState = 0; // end of slt
				default: 	nextState = currentState + 1; // otherwise, move to next state in thread
		
			endcase
		end
		
	end
	
	// SET THE OUTPUT
	always @(currentState) begin
		case(currentState)
		
			'b00000:	begin // FETCH
						branch <= 0;
						jump <= 'b00;
						PCwrt <= 1;
						IRwrt <= 1;
						memOWrt <= 0;
						Awrt <= 0;
						Bwrt <= 0;
						ALUwrt <= 0;
						regWrt <= 0;
						memWrt <= 0;
						wAdrs <= 0;
						wDat <= 'b00;
						memAdrsSlct <= 0;
						imOrR <= 'b00;
						immSlct <= 0;
					end // end Fetch
			'b00001: begin // begin I type
						Awrt = 1; Bwrt = 1; imOrR = 'b01;
			end
			'b00010: begin
						Awrt = 0; Bwrt = 0; imOrR = 'b00;
						ALUwrt = 1;
			end
			'b00011: begin 
						ALUwrt = 0;
						regWrt = 1; 
						wDat = 'b01;
			end // end I type
			'b00100: begin // begin jump
						jump = 'b01;
			end // end jump
			'b00101: begin // begin beq
						Awrt = 1;
						Bwrt = 1;
						useFirstReg = 1;
						
			end
			'b00110: begin
						Awrt = 0;
						Bwrt = 0;
						useFirstReg = 0;
						branch = 1;
			end // end beq
			'b00111: begin // begin lw
						Awrt = 1;
						Bwrt = 1;
						imOrR = 'b01;
			end
			'b01000: begin
						Awrt = 0;
						Bwrt = 0;
						imOrR = 'b00;
						ALUwrt = 1;
			end
			'b01001: begin
						ALUwrt = 0;
						memADrsSlct = 1;
			end
			'b01010: begin
						memADrsSlct = 0;
						regWrite = 1;
						wDat =  'b00;
						memOut = 1;
			end // end lw
			'b01011: begin // begin sw
						Awrt = 1;
						Bwrt = 1;
						imOrR = 'b01;
			end
			'b01100: begin
						Awrt = 0;
						Bwrt = 0;
						imOrR = 'b00;
						ALUwrt = 1;
			end
			'b01101: begin
						ALUwrt = 0;
						memAdrsSlct = 1;
						memWrt = 1;
			end // end sw
			'b01110: begin // begin li
						regWrt = 1;
						wDat = 'b11; 
						
			end // end li
			'b01111: begin // begin copy
						useReg = 1;
						Awrt = 1;
			end
			'b10000: begin
						useReg = 0;
						Awrt = 0;
						regWrt = 1;
						wDat = 'b10;
			end // end copy
			'b10001: begin // begin r type
						Awrt = 1;
						Bwrt = 1;
						useReg = 1;
			end
			'b10010: begin
						Awrt = 0;
						Bwrt = 0;
						useReg = 0;
						ALUwrt = 1;
			end
			'b10011: begin
						ALUwrt = 0;
						regWrt = 1;
						wDat = 'b01;
						ALUout = 1;
			end // end r type
			
			'b10100: begin  // begin jr
						Awrt = 1;
						useReg = 1;
			end
			'b10101: begin
						jump = 'b10;
			end // end jr	
			
			'b10110: begin // begin set less than
				Awrt = 1;
				Bwrt = 1;
			end
			'b10111: begin
				ALUwrt = 1;
			end
			'b11000: begin
				regWrite = 1;
				wDat = 'b00;
			end // end set less than
			
			'b01001: begin
			end
			'b11010: begin
			end
			'b11011: begin
			end
			'b11100: begin
			end
			'b11101: begin
			end
			'b11110: begin
			end
			'b11111: begin
			end
		
		endcase	
	end


endmodule
