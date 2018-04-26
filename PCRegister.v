`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// CECS 341 Spring 2018                                                        //
// Code by Long Truong.                                          //
// Program counter module                                                       //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////


module PCRegister(
    input clk,
    input [63:0] newAddrIn,
    output reg [63:0] addrOut
    );
       
    initial begin
        addrOut = -4;
    end

    always @ (posedge clk)
    begin
        addrOut = newAddrIn;
    end
    
endmodule
