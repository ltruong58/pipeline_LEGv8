`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CECS 341 Spring 2018                                                        //
// Code by Long Truong. 											//
// Generic 64 bit adder															//
// 																				//
//////////////////////////////////////////////////////////////////////////////////


module adder(
    input [63:0] a,
    input [63:0] b,
    output [63:0] out
    );
    
    assign out = a+b;
    
endmodule
