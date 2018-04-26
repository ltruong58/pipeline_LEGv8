//////////////////////////////////////////////////////////////////////////////////
//										
// MEM/WB register module								
// 										
//////////////////////////////////////////////////////////////////////////////////

module MEMWBRegister(clock, RegWrite, MemtoReg, MEMout, ALUResult, WR, 
			RegWrite_s5, MemtoReg_s5 ,MEMout_s5, ALUResult_s5, WR_s5 );
input clock, RegWrite, MemtoReg ;
input [63:0] MEMout;
input [63:0] ALUResult;
input [4:0] WR;

output reg RegWrite_s5, MemtoReg_s5;
output reg [63:0] MEMout_s5;
output reg [63:0] ALUResult_s5;
output reg [4:0] WR_s5;

always @(posedge clock)
		begin		
		//assign PR4 = {{134{RegWrite}},{133{MemtoReg}},{69{MEMout[63:0]}},{5{ALUResult[63:0]}},WR[4:0]};
			RegWrite_s5 = RegWrite;
			MemtoReg_s5 = MemtoReg;
			MEMout_s5 = MEMout;
			ALUResult_s5 = ALUResult;
			WR_s5 = WR;			
		end
endmodule