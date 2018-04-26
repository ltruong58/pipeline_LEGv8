`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//																				//
//CECS 341 Spring 2018                                                        //
// Code by Long Truong. 											//
// Data memory module															//
// 																				//
//////////////////////////////////////////////////////////////////////////////////

module DataMem(Address, WriteData, MemWrite, MemRead, clock, ReadData);
	input [63:0] Address; 
   input [63:0] WriteData;
   input MemWrite;
   input MemRead;
   input clock;
   output reg[63:0] ReadData;
	reg [7:0] DM [0:255];
	
	initial begin
		DM[0] = 8'h00;
		DM[1] = 8'h00;
		DM[2] = 8'h00;
		DM[3] = 8'h00;
		DM[4] = 8'h00;
		DM[5] = 8'h00;
		DM[6] = 8'h00;
		DM[7] = 8'h00;
		
		//8-15:11
		DM[8] = 8'h11;
		DM[9] = 8'h11;
		DM[10] = 8'h11;
		DM[11] = 8'h11;
		DM[12] = 8'h11;
		DM[13] = 8'h11;
		DM[14] = 8'h11;
		DM[15] = 8'h11;
		
		//16-23:22
		DM[16] = 8'h22;
		DM[17] = 8'h22;
		DM[18] = 8'h22;
		DM[19] = 8'h22;
		DM[20] = 8'h22;
		DM[21] = 8'h22;
		DM[22] = 8'h22;
		DM[23] = 8'h22;
		
		DM[24] = 8'h33;
		DM[25] = 8'h33;
		DM[26] = 8'h33;
		DM[27] = 8'h33;
		DM[28] = 8'h33;
		DM[29] = 8'h33;
		DM[30] = 8'h33;
		DM[31] = 8'h33;
		
		DM[32] = 8'h44;
		DM[33] = 8'h44;
		DM[34] = 8'h44;
		DM[35] = 8'h44;
		DM[36] = 8'h44;
		DM[37] = 8'h44;
		DM[38] = 8'h44;
		DM[39] = 8'h44;
		
		DM[40] = 8'h55;
		DM[41] = 8'h55;
		DM[42] = 8'h55;
		DM[43] = 8'h55;
		DM[44] = 8'h55;
		DM[45] = 8'h55;
		DM[46] = 8'h55;
		DM[47] = 8'h55;
		
		DM[48] = 8'h66;
		DM[49] = 8'h66;
		DM[50] = 8'h66;
		DM[51] = 8'h66;
		DM[52] = 8'h66;
		DM[53] = 8'h66;
		DM[54] = 8'h66;
		DM[55] = 8'h66;
		
		//16-23:22
		DM[56] = 8'h77;
		DM[57] = 8'h77;
		DM[58] = 8'h77;
		DM[59] = 8'h77;
		DM[60] = 8'h77;
		DM[61] = 8'h77;
		DM[62] = 8'h77;
		DM[63] = 8'h77;
		
		DM[64] = 8'h88;
		DM[65] = 8'h88;
		DM[66] = 8'h88;
		DM[67] = 8'h88;
		DM[68] = 8'h88;
		DM[69] = 8'h88;
		DM[70] = 8'h88;
		DM[71] = 8'h88;
		
		DM[72] = 8'h99;
		DM[73] = 8'h99;
		DM[74] = 8'h99;
		DM[75] = 8'h99;
		DM[76] = 8'h99;
		DM[77] = 8'h99;
		DM[78] = 8'h99;
		DM[79] = 8'h99;
		//
		DM[80] = 8'haa;
		DM[81] = 8'haa;
		DM[82] = 8'haa;
		DM[83] = 8'haa;
		DM[84] = 8'haa;
		DM[85] = 8'haa;
		DM[86] = 8'haa;
		DM[87] = 8'haa;
		
		DM[88] = 8'hbb;
		DM[89] = 8'hbb;
		DM[90] = 8'hbb;
		DM[91] = 8'hbb;
		DM[92] = 8'hbb;
		DM[93] = 8'hbb;
		DM[94] = 8'hbb;
		DM[95] = 8'hbb;
		
		//16-23:22
		DM[96] = 8'hcc;
		DM[97] = 8'hcc;
		DM[98] = 8'hcc;
		DM[99] = 8'hcc;
		DM[100] = 8'hcc;
		DM[101] = 8'hcc;
		DM[102] = 8'hcc;
		DM[103] = 8'hcc;
	end
	
	// for read 
	always @(MemRead) begin
		if(MemRead == 1)
		assign ReadData = {DM[Address + 0], DM[Address + 1], DM[Address + 2], DM[Address + 3], 
								 DM[Address + 4], DM[Address + 5], DM[Address + 6], DM[Address + 7]};
	end
	
	// for write
	always @ (posedge clock) begin
	 if(MemWrite == 1)
	 begin
		DM[Address + 0] = WriteData[63:56];
		DM[Address + 1] = WriteData[55:48];
		DM[Address + 2] = WriteData[47:40];
		DM[Address + 3] = WriteData[39:32];
		DM[Address + 4] = WriteData[31:24];
		DM[Address + 5] = WriteData[23:16];
		DM[Address + 6] = WriteData[15:8];
		DM[Address + 7] = WriteData[7:0];
	 end
	end
	
	
endmodule