`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// CECS 341 Spring 2018                                                        //
// Code by Long Truong.                                           //
// ID secondary level module                                                    //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////


module ID(
    input [31:0] instruction,
    input clk, RegWrite_s4,
    input [4:0] WriteReg_s5,
	 input [63:0] WriteData_s5,
    output Reg2Loc, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch,
    output [1:0] ALUOp,
    output [63:0] regOutA,
    output [63:0] regOutB,
    output [63:0] extended
    );
	 
	 
wire [4:0]RdRt;

ControlUnit ControlUnit(instruction[31:21], ALUOp, Reg2Loc, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch); 
RegMux RegMux(instruction[20:16], instruction[4:0], instruction[28], RdRt); 
SignExtender SignExtender(instruction[31:0], extended);
RegFile RegFile(instruction[9:5], RdRt, WriteReg_s5, WriteData_s5, RegWrite_s4, regOutA, regOutB, clk);
	 
endmodule
