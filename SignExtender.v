`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// CECS 341 Spring 2018                                                        //
// Code by Long Truong.                                          //
// Sign extender module                                                         //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////


module SignExtender( SEin, SEout);
    input [31:0] SEin;
	wire [8:0] Opcode;
	output reg [63:0] SEout;
	
	assign Opcode = SEin[31:24];
	always @(Opcode) begin
		if(Opcode == 8'b 10110100) 
			assign SEout = {{45{SEin[23]}}, SEin[22:5]};	
			//assign SEout = {{45{SEin[18]}}, SEin[17:0]};	
		else
			assign SEout = {{55{SEin[20]}}, SEin[19:12]};	
	end
endmodule
