`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CECS 341 Spring 2018                                                        //
// Code by Long Truong. 										//
// Generic 5bit-multiplexer module													//
// 																				//
//////////////////////////////////////////////////////////////////////////////////


module RegMux(
    input [4:0] a,
    input [4:0] b,
    input select,
    output [4:0] out
    );
    
    assign out = (select == 0) ? a : b;
    
endmodule
