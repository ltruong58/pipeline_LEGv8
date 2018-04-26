`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//										
// EXE secondary-level module								
// 										
//////////////////////////////////////////////////////////////////////////////////

module EXE(
	

	input [1:0] ALUOp,
	input [10:0] OpcodeField,
	input [63:0] RD1, RD2, extended, AddBranch, 
	input ALUSrc, RegWrite, MemtoReg, Branch, MemRead, MemWrite,
	input [4:0]  WR,
	
	output wire [63:0]  RD2_s4, AddBranch_s4, 
	output wire RegWrite_s4, MemtoReg_s4, Branch_s4, MemRead_s4, MemWrite_s4,
	output wire [4:0]  WR_s4,
	output [63:0]ALUResult,
	output Zero);
	
	wire [63:0] aluSelect;


	assign RD2_s4 = RD2;
	assign AddBranch_s4 = AddBranch;
	assign RegWrite_s4 = RegWrite;
	assign MemtoReg_s4 = MemtoReg;
	assign Branch_s4 = Branch;
	assign MemRead_s4 = MemRead;
	assign MemWrite_s4 = MemWrite;
	assign WR_s4 = WR;

FullMux FullMux(RD2, extended, ALUSrc, aluSelect);
ALU ALU(ALUOp, OpcodeField,RD1, aluSelect, ALUResult, Zero);
endmodule