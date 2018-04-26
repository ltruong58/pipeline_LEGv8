`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// CECS 341 Spring 2018                                                        //
// Code by Long Truong. (Ref. John Huddleston (Section 2)                        //
// LEGv8 CPU top-level module                                                     //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////

module cpu(
	input clk
	);
	wire [31:0]  Ins1, Ins2;
	wire [63:0] PCout, PCin, PCout1, regOutA, regOutB, extended, PC_s3, RD1_s3, RD2_s3, SE1out_s3,
					Add4, AddBranch, AddBranch_s4, RD2_s4, ALUResult, RD2out, AddBranchout, ALUResult_s4, 
					MEMout, ALUResultout1, MEMout_s5, ALUResult_s5, WriteData_s5;
	 
	wire RegWrite_s4,
			Reg2Loc, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch,
			Reg2Loc_s3, ALUSrc_s3, MemtoReg_s3, RegWrite_s3, MemRead_s3, MemWrite_s3, Branch_s3, 
			MemtoReg_s4,  MemRead_s4, MemWrite_s4, 
			RegWriteout, MemtoRegout, Branchout, MemReadout, MemWriteout, Zero,
			RegWriteout1, MemtoRegout1, RegWrite_s5, MemtoReg_s5, RegWrite_s5out ;
	wire [4:0] WriteReg_s5, WriteReg_s3, WriteReg_s4, WriteRegout, WriteRegout1 , WR_s5, WR_s5out;
	wire [1:0] ALUOp, ALUOp_s3;
	wire [10:0] Opcode_s3;
	//reg PCSrc;
	reg Branch_s4, Zero_s4;
	initial begin
		assign Branch_s4 = 0;	
		assign Zero_s4 = 0;
	end
	//always @(posedge clk)
		//assign PCSrc = (Branch_s4 & Zero_s4);
		
	FullMux PCMux(Add4, AddBranch_s4, (Branch_s4 & Zero_s4), PCin);
	PCRegister PCRegister(clk, PCin, PCout);
	IF IF(clk, PCout, Add4, Ins1);
	IFIDRegister IFIDRegister(Ins1, PCout, Ins2, PCout1, clk);

	ID ID(Ins2, clk, RegWrite_s5out, WR_s5out, WriteData_s5, Reg2Loc, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch,
			ALUOp, regOutA, regOutB, extended);

	IDEXERegister IDEXERegister(clk, ALUOp,Reg2Loc,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,PCout1, regOutA, regOutB, extended, Ins2[31:21], Ins2[4:0],
				ALUOp_s3, Reg2Loc_s3, ALUSrc_s3, MemtoReg_s3, RegWrite_s3, MemRead_s3, MemWrite_s3, Branch_s3, PC_s3, 
				RD1_s3, RD2_s3, SE1out_s3, Opcode_s3, WriteReg_s3, clock);
		
	adder BranchAdder(PC_s3, (SE1out_s3 << 2), AddBranch);
	EXE EXE(ALUOp_s3, Opcode_s3, RD1_s3, RD2_s3, SE1out_s3, AddBranch, ALUSrc_s3, RegWrite_s3, MemtoReg_s3, Branch_s3, MemRead_s3, 
				MemWrite_s3, WriteReg_s3, 
				RD2out,  AddBranchout, RegWriteout, MemtoRegout, Branchout, MemReadout, MemWriteout, WriteRegout, ALUResult, Zero);
				
	EXEMEMRegister EXEMEMRegister(clk, RegWriteout, MemtoRegout, Branchout, MemReadout, MemWriteout, AddBranchout, Zero, 
											ALUResult, RD2out, WriteRegout,
											RegWrite_s4, MemtoReg_s4, Branch_s4, MemRead_s4t, MemWrite_s4, AddBranch_s4, Zero_s4, 
											ALUResult_s4, RD2_s4, WriteReg_s4);
	MEM MEM(clk,MemWrite_s4,MemRead_s4t,RegWrite_s4,MemtoReg_s4,WriteReg_s4,ALUResult_s4,RD2_s4,
			MEMout, ALUResultout1, WriteRegout1, RegWriteout1, MemtoRegout1);
		
	MEMWBRegister MEMWBRegister(clk, RegWriteout1, MemtoRegout1, MEMout, ALUResultout1, WriteRegout1,
				RegWrite_s5, MemtoReg_s5 ,MEMout_s5, ALUResult_s5, WR_s5);

	WB WB(RegWrite_s5, MemtoReg_s5 ,WR_s5, ALUResult_s5, MEMout_s5, 
			RegWrite_s5out, WR_s5out, WriteData_s5);

endmodule