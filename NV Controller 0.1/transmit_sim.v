`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:25:15 03/06/2017
// Design Name:   transmit
// Module Name:   /homes/mmahmood/Aaron/transmit_sim.v
// Project Name:  Aaron
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: transmit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module transmit_sim;

	// Inputs
	reg clkp;
	reg clkn;
	reg clikcs;
	reg reset;
	reg start;

	// Outputs
	wire [1:0] status;
	wire data_out;

	// Instantiate the Unit Under Test (UUT)
	transmit uut (
		.clkp(clkp), 
		.clkn(clkn), 
		.clikcs(clikcs), 
		.reset(reset), 
		.start(start), 
		.status(status), 
		.data_out(data_out)
	);

	always
	#2.5 clkp <= ~clkp;
	#2.5 clkn <= ~clkn;
	
	initial begin
		// Initialize Inputs
		clkp = 1;
		clkn = 0;
		clikcs = 0;
		reset = 1;
		start = 1;

		
		#80000
		reset = 0;
      
		
		
		// Add stimulus here

	end
      
endmodule

