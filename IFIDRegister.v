`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CECS 341 Spring 2018                                                        //
// Code by Long Truong. 											//
// IF/ID register module														//
// 																				//
//////////////////////////////////////////////////////////////////////////////////


module IFIDRegister(
    input [31:0] instrIn,
	 input [63:0] PCin,
    output reg [31:0] instrOut,
	 output reg [63:0] PCout,
    input clk
    );

	reg [95:0] mem;
    
    always @ (posedge clk)
    begin
      mem = {{32{PCin[63:0]}},instrIn[31:0]};
		instrOut = mem[31:0];
		PCout = mem[95:32];
    end

    always @ (negedge clk)
    begin  	
    end
    
endmodule
