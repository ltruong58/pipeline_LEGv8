`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:48:33 02/22/2018 
// Design Name: 
// Module Name:    ALUwithControl 
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
module MIPSALU(ALUoperation, A, B, ALUresult, Zero);
    input [3:0] ALUoperation;
    input [63:0] A;
    input [63:0] B;
    output reg [63:0] ALUresult;
    output Zero;
	 assign Zero = (ALUresult == 0);
	 always @(ALUoperation, A, B) begin
		case (ALUoperation)
			0: ALUresult <= A & B;
			1: ALUresult <= A | B;
			2: ALUresult <= A + B;
			6: ALUresult <= A - B;
			7: ALUresult <= B;
			12: ALUresult <= ~(A | B);
			default: ALUresult <= 0;
		endcase
	end

endmodule

module ALUControl (ALUOp, OpcodeField, ALUOperation);
	input [1:0] ALUOp;
	input [10:0] OpcodeField;
	output reg [3:0] ALUOperation;
	
	always @ (ALUOp, OpcodeField ) begin
		case({ALUOp, OpcodeField})
			13'b10_10101010000: ALUOperation <= 1; // OR
			13'b10_10001010000: ALUOperation <= 0; // AND
			13'b10_10001011000: ALUOperation <= 2; // ADD
			13'b10_11001011000: ALUOperation <= 6; // SUB
		endcase
		case(ALUOp)
			2'b00: ALUOperation <= 2; // LOAD n STORE
		endcase
		case(ALUOp[0])
			1: ALUOperation <= 7; // BRANCH
		endcase
	end
endmodule

module ALU (ALUOp, OpcodeField, A, B, ALUResult, Zero);
//Declare inputs and outputs and intermediate 'wires' 
    input 	[1:0] 		ALUOp;
    input 	[10:0] 		OpcodeField;
    input 	[63:0] 		A;
    input 	[63:0] 		B;
    output 	[63:0] 		ALUResult;
    output 			Zero;
    wire 	[3:0] 		ALUOperation;
	 
//Instantiate the two units
ALUControl 	aluControl 	(ALUOp, OpcodeField, ALUOperation);
MIPSALU 		MIPS 	(ALUOperation, A, B, ALUResult, Zero);
endmodule
