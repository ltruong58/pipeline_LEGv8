//////////////////////////////////////////////////////////////////////////////////
//										
// MEM secondary-level module								
// 										
//////////////////////////////////////////////////////////////////////////////////

module MEM(
	input clock, MemWrite, MemRead, RegWrite, MemtoReg,
	input [4:0] WriteReg,
	input [63:0] ALUResult, WriteData,
	output [63:0] ReadData, ALUResultout,
	output [4:0] WriteRegout,
	output RegWriteout, MemtoRegout
	);

assign RegWriteout = RegWrite;
assign MemtoRegout = MemtoReg;
assign WriteRegout = WriteReg;
assign ALUResultout = ALUResult;

DataMem DataMem(ALUResult, WriteData, MemWrite, MemRead, clock, ReadData);

endmodule