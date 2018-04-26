`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
// CECS 341 Spring 2018                                                        //
// Code by Long Truong. 											//
// Instruction memory module													//
// 																				//
//////////////////////////////////////////////////////////////////////////////////


module InstrMem( clock, PCOut, InsOut);
	input [63:0] PCOut; // 
   input clock;
   output reg [31:0] InsOut;
	reg [7:0] IM [0:255];
	
	initial begin
	// 32'b 11111000 010_0 0000 1000_00_11111_ 00001 // Load reg 1 from 8 F84083E1
		IM[0] = 8'hf8;
		IM[1] = 8'h40;
		IM[2] = 8'h83;
		IM[3] = 8'hE1;
		// 32'b 11111000 010_0 0001 0000_00_11111_ 00010 // Load reg 2 from 16 F84103E2
		IM[4] = 8'hf8;
		IM[5] = 8'h41;
		IM[6] = 8'h03;
		IM[7] = 8'he2;
		// 32'b 11111000 010_0 0001 1000_00_11111_ 00011 // Load reg 3 from 24 F84183E3
		IM[8] = 8'hf8;
		IM[9] = 8'h41;
		IM[10] = 8'h83;
		IM[11] = 8'he3;
		// 32'b 11111000 010_0 0010 0000_00_11 111_ 0 0100 // Load reg 4 from 32 F84203E4
		IM[12] = 8'hf8;
		IM[13] = 8'h42;
		IM[14] = 8'h03;
		IM[15] = 8'he4;
		// 32'b 1111 1000 010_0 0010 1000_00_11 111_ 0 0101 // Load reg 5 from 40 F84283E5
		IM[16] = 8'hf8;
		IM[17] = 8'h42;
		IM[18] = 8'h83;
		IM[19] = 8'he5;
		// 32'b 11111000 010_0 0011 0000_00_11111_ 00110 // Load reg 6 from 48 F84303E6
		IM[20] = 8'hf8;
		IM[21] = 8'h43;
		IM[22] = 8'h03;
		IM[23] = 8'he6;
		// 32'b 11111000 010_0 0011 1000_00_11111_ 00111 // Load reg 7 from 56 F84383E7
		IM[24] = 8'hf8;
		IM[25] = 8'h43;
		IM[26] = 8'h83;
		IM[27] = 8'he7;
		// 32'b 11111000 010_0 0100 0000_00_11111_ 01000 // Load reg 8 from 64 F84403E8
		IM[28] = 8'hf8;
		IM[29] = 8'h44;
		IM[30] = 8'h03;
		IM[31] = 8'he8;
		// 32'b 11111000 010_0 0100 1000_00_11111_ 01001 // Load reg 9 from 72 F84483E9
		IM[32] = 8'hf8;
		IM[33] = 8'h44;
		IM[34] = 8'h83;
		IM[35] = 8'he9;
		// 32'b 11111000 010_0 0101 0000_00_11111_ 01010 // Load reg 10 from 80 F84503EA
		IM[36] = 8'hf8;
		IM[37] = 8'h45;
		IM[38] = 8'h03;
		IM[39] = 8'hea;
		// 32'b 11111000 010_0 0101 1000_00_11111_ 01011 // Load reg 11 from 88 F84583EB
		IM[40] = 8'hf8;
		IM[41] = 8'h45;
		IM[42] = 8'h83;
		IM[43] = 8'heb;
		// 32'b 11111000 010_0 0110 0000_00_11111_ 01100 // Load reg 12 from 96 F84603EC
		IM[44] = 8'hf8;
		IM[45] = 8'h46;
		IM[46] = 8'h03;
		IM[47] = 8'hec;

		// 32'b 10001011000_00011_000000_00001_ 00010;;// ADD X2, X1, X3 8B030022
		IM[48] = 8'h8b;
		IM[49] = 8'h03;
		IM[50] = 8'h00;
		IM[51] = 8'h22;
		
		// 32'b 11001011000_00100_000000_00101_ 00110;;SUB  X6, X5, X4 CB0400A6
		IM[52] = 8'hcb;
		IM[53] = 8'h04;
		IM[54] = 8'h00;
		IM[55] = 8'ha6;
				
		// 32'b 10101010000_01000_000000_00111_ 01001; OR X9, X7, X8 AA0800E9
		IM[56] = 8'haa; 
		IM[57] = 8'h08;
		IM[58] = 8'h00;
		IM[59] = 8'he9;
		// 32'b 10001010000_01011_000000_01010_ 01100; AND X12, X10, X11	 8A0B014C
		IM[60] = 8'h8a;
		IM[61] = 8'h0b;
		IM[62] = 8'h01;
		IM[63] = 8'h4c;
		
	end
	
	// for read 
	always @(posedge clock) begin
			InsOut = {IM[PCOut + 0], IM[PCOut + 1], IM[PCOut + 2], IM[PCOut + 3]};
	end	
    
endmodule