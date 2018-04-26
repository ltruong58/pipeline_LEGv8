`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CECS 341 Spring 2018                                                        //
// Code by Long Truong. 											//
// ID/EXE register module														//
// 																				//
//////////////////////////////////////////////////////////////////////////////////


module IDEXERegister(clock, ALUOp,Reg2Loc,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,PC, RD1, RD2_s2, SE1out, Opcode, Ins4_0,  
			ALUOp_s3, Reg2Loc_s3, ALUSrc_s3, MemtoReg_s3, RegWrite_s3, MemRead_s3, MemWrite_s3, Branch_s3, PC_s3, 
			RD1_s3, RD2_s3, SE1out_s3, Opcode_s3, Ins4_0_s3, clock);
	input clock;
	input [1:0] ALUOp;
	input Reg2Loc, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch;
	input [63:0] PC;
	input [63:0] RD1;
	input [63:0] RD2_s2;
	input [63:0] SE1out;
	input [10:0] Opcode;
	input [4:0] Ins4_0;
	//output reg [280:0] PR2;
	output reg  [1:0] ALUOp_s3;
	output reg  Reg2Loc_s3, ALUSrc_s3, MemtoReg_s3, RegWrite_s3, MemRead_s3, MemWrite_s3, Branch_s3;
	output reg  [63:0] PC_s3;
	output reg  [63:0] RD1_s3;
	output reg  [63:0] RD2_s3;
	output reg  [63:0] SE1out_s3;
	output reg  [10:0] Opcode_s3;
	output reg  [4:0] Ins4_0_s3;
	
	always @(posedge clock)
		begin		
		//assign PR1 = {{32{PC1[63:0]}},Ins1[31:0]};
			//assign PR2 = {{280{ALUOp[1:0]}},{278{Reg2Loc}},{277{ALUSrc}},{276{MemtoReg}},{275{RegWrite}},{274{MemRead}},{273{MemWrite}},
				//{272{Branch}},{208{PC[63:0]}},{144{RD1[63:0]}},{80{RD2_s2[63:0]}},{16{SE1out[63:0]}},{5{Opcode[10:0]}},Ins4_0[4:0]};
			ALUOp_s3 = ALUOp;
			Reg2Loc_s3 <= Reg2Loc;
			ALUSrc_s3 <= ALUSrc;
			MemtoReg_s3 <= MemtoReg;
			RegWrite_s3 <= RegWrite;
			MemRead_s3 <= MemRead;
			MemWrite_s3 <= MemWrite;
			Branch_s3 <= Branch;
			PC_s3 <= PC;
			RD1_s3 <= RD1;
			RD2_s3 <= RD2_s2;
			SE1out_s3 <= SE1out;
			Opcode_s3 <= Opcode;
			Ins4_0_s3 <= Ins4_0;		
		end
endmodule
