//////////////////////////////////////////////////////////////////////////////////
//										
// EXE/MEM register module								
// 										
//////////////////////////////////////////////////////////////////////////////////

module EXEMEMRegister(
	input clock, RegWrite, MemtoReg, Branch, MemRead, MemWrite,
	input [63:0]BranchAdder,
	input Zero,
	input [63:0] ALUResult_s3,
	input [63:0] RD2,
	input [4:0] WR,

	output reg RegWrite_s4, MemtoReg_s4, Branch_s4, MemRead_s4, MemWrite_s4,
	output reg [63:0]BranchAdder_s4,
	output reg Zero_s4,
	output reg [63:0] ALUResult_s4,
	output reg [63:0] RD2_s4,
	output reg [4:0] WR_s4
);
always @(posedge clock)
		begin		
		//assign PR1 = {{32{PC1[63:0]}},Ins1[31:0]};
		//assign PR3 = {{202{RegWrite}},{201{MemtoReg}},{200{Branch}},{199{MemRead}},{198{MemWrite}},
		//{134{BranchAdder[63:0]}},{133{Zero}},{69{ALUResult_s3[63:0]}},{5{RD2[63:0]}}, WR[4:0]  };
			RegWrite_s4 <= RegWrite;
			MemtoReg_s4 <= MemtoReg;
			Branch_s4 <= Branch;
			MemRead_s4 <= MemRead;
			MemWrite_s4 <= MemWrite;
			BranchAdder_s4 <= BranchAdder;
			Zero_s4 <= Zero;
			ALUResult_s4 <= ALUResult_s3;
			RD2_s4 <= RD2;
			WR_s4 <=  WR;		
		end
endmodule