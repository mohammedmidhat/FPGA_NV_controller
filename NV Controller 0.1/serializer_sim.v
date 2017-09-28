`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:11:34 02/16/2017
// Design Name:   Serializer
// Module Name:   /homes/mmahmood/Aaron/serializer_sim.v
// Project Name:  Aaron
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Serializer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module serializer_sim;

	// Inputs
	reg clk;
	reg [7:0] data_in;
	reg reset;
	reg start;

	// Outputs
	wire serial_data_out;
	wire done_transmit;

	// Instantiate the Unit Under Test (UUT)
	Serializer uut (
		.clk(clk), 
		.data_in(data_in), 
		.serial_data_out(serial_data_out), 
		.reset(reset), 
		.start(start), 
		.done_transmit(done_transmit)
	);

	always
    #100 clk = ~clk;
	 
	initial begin
		// Initialize Inputs
		clk = 1'b0;
		data_in = 8'b01100100;
		reset = 1'b1;
		start = 1'b0;

		#200 reset = 1'b0;
		start = 1'b1;
		 

	end
      
endmodule

