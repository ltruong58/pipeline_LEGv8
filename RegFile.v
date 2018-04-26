`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CMPEN 331 Spring 2017														//
// Code by John Huddleston (Section 2)											//
// Register file module															//
// 																				//
//////////////////////////////////////////////////////////////////////////////////


module RegFile(Read1, Read2, WriteReg, WriteData, RegWrite, Data1, Data2, clock);
    input [4:0] Read1;
    input [4:0] Read2;
    input [4:0] WriteReg;
    input [63:0] WriteData;
    input RegWrite,
			clock;
			
    output [63:0] Data1;
    output [63:0] Data2;
	 
	 reg [63:0] RF [0:31];
	 initial begin
	 RF[31] = 0;
	 end
	 assign Data1 = RF[Read1];
	 assign Data2 = RF[Read2];
	 always  @(posedge clock) begin
		if (RegWrite == 1) RF[WriteReg] <= WriteData;
	 end
endmodule
