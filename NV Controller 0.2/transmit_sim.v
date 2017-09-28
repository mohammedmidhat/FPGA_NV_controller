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
	reg clicks;
	reg reset;
	reg start;

	// Outputs
	wire [1:0] status;
	wire [1:0] initialization_status;
	wire transmission_status;
	wire termination_status;
	wire ser_done;
	wire tim_done;
	wire data_out;
	wire [7:0] counterr;
	//wire counter_flag;
	//wire counter_flag_prev;
	//wire ind;
	//wire another_ind;

	// Instantiate the Unit Under Test (UUT)
	transmit uut (
		.clkp(clkp), 
		.clkn(clkn), 
		.clicks(clicks), 
		.reset(reset), 
		.start(start), 
		.status(status),
		.initialization_status(initialization_status),
		.transmission_status(transmission_status),
		.termination_status(termination_status),
		.ser_done(ser_done),
		.tim_done(tim_done),
		.counterr(counterr),
		//.counter_flag(counter_flag),
		//.counter_flag_prev(counter_flag_prev),
		//.ind(ind),
		//.another_ind(another_ind),
		.data_out(data_out)
	);

	always begin
	#2 clkn <= ~clkn;
	clkp <= ~clkp;
	end
	
	
	initial begin
		// Initialize Inputs
		clkp = 1;
		clkn = 0;
		clicks = 0;
		reset = 1;
		start = 1;
		
		#80000
		reset = 0;
		#170000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#2000
		clicks <= ~clicks;
		#364000
		reset = 1;
		#8000
		reset = 0;

	end
      
endmodule

