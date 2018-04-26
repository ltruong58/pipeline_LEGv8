`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CECS 341 Spring 2018                                                        //
// Code by Long Truong. 											//
// IF secondary level module													//
// 																				//
//////////////////////////////////////////////////////////////////////////////////


module IF(
	 input clock,
    input wire [63:0] instrAddr,
    output wire [63:0] newAddr,
    output wire [31:0] instruction
    );
    
    wire [63:0] constPC;
    
    assign constPC = 64'b00000000000000000000000000000100;

    adder adder(constPC, instrAddr, newAddr);
    InstrMem InstrMem(clock, instrAddr, instruction);

endmodule
