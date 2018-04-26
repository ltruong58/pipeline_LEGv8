`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CECS 341 Spring 2018                                                        //
// Code by Long Truong. 											//
// WB secondary-level module													//
// 																				//
//////////////////////////////////////////////////////////////////////////////////

module WB(
	input wregin, m2reg,
	input [4:0] RdRtin,
	input [63:0] aluresult, memdata,
	output wregout,
	output [4:0] RdRtout,
	output [63:0] writedata
	);

assign wregout = wregin;
assign RdRtout = RdRtin;

FullMux FullMux(aluresult, memdata, m2reg, writedata);

endmodule