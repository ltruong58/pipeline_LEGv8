`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Long Truong
//
// Create Date:   23:45:55 04/24/2018
// Design Name:   cpu
// Module Name:   D:/CSULB/New folder/pipeline_MIPS/pipelinevtf.v
// Project Name:  pipeline_MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pipelinevtf;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	cpu uut (
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		repeat (44) begin 
        #20 clk = !clk; 
		end
	end
      
endmodule

