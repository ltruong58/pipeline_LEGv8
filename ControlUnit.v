`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CECS 341 Spring 2018                                                        //
// Code by Long Truong. 										//
// Control unit module															//
// 																				//
//////////////////////////////////////////////////////////////////////////////////



module ControlUnit(Opcode, ALUOp, Reg2Loc, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch);
	input [10:0] Opcode;
	output reg [1:0] ALUOp;
	output reg Reg2Loc, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch;

	initial begin
		Reg2Loc = 0;
		ALUSrc = 0;
		MemtoReg = 0;
		RegWrite = 0;
		MemRead = 0;
		MemWrite = 0;
		Branch = 0;
	end
	always  @(Opcode)begin
		case(Opcode)
		// LDUR
			11'b 11111000010: 	begin
				Reg2Loc <= 0; ALUSrc <= 1; MemtoReg <= 1; RegWrite <= 1;
									MemRead <= 1; MemWrite <= 0; Branch <=0; ALUOp <= 00;
				end
		// ADD
			11'b 10001011000: 	begin
				Reg2Loc <= 0; ALUSrc <= 0; MemtoReg <= 0; RegWrite <= 1;
									MemRead <= 0; MemWrite <= 0; Branch <=0; ALUOp <= 2'b10;
				end
		// AND
			11'b 10001010000: 	begin
				Reg2Loc <= 0; ALUSrc <= 0; MemtoReg <= 0; RegWrite <= 1;
									MemRead <= 0; MemWrite <= 0; Branch <=0; ALUOp <= 2'b10;
			end
		// OR
			11'b 10101010000: 	begin
				Reg2Loc <= 0; ALUSrc <= 0; MemtoReg <= 0; RegWrite <= 1;
									MemRead <= 0; MemWrite <= 0; Branch <=0; ALUOp <= 2'b10;
			end
		// SUB
			11'b 11001011000: 	begin
				Reg2Loc <= 0; ALUSrc <= 0; MemtoReg <= 0; RegWrite <= 1;
									MemRead <= 0; MemWrite <= 0; Branch <=0; ALUOp <= 2'b10;
			end
		//STUR
			11'b 11111000000: 	begin
			Reg2Loc <= 1; ALUSrc <= 1; MemtoReg <= 0; RegWrite <= 0;
								MemRead <= 0; MemWrite <= 1; Branch <=0; ALUOp <= 00;
			end
		endcase
		// BRANCH
		if(Opcode[10:3] == 8'b 10110100) begin
			Reg2Loc <= 1; ALUSrc <= 0; MemtoReg <= 0; RegWrite <= 0;
				MemRead <= 0; MemWrite <= 0; Branch <=1; ALUOp <= 2'b01;
		end
	end

endmodule
