`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		MIT Quantum Photonics Group
// Engineer: 		Mohammed Al Ai Baky
// 
// Create Date:    21:49:51 02/10/2017 
// Design Name: 	NV Controller
// Module Name:    Serializer 
// Project Name: 	NV Controller
// Target Devices: 	VC707 Virtex-7 FPGA
// Tool versions: 	ISE 14.6
// Description: 	Takes data over multibit bus and serializes it over a data line
//
// Dependencies: 
//
// Revision: 
// Revision 0.2
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Serializer (
		input clk,
		input [7:0] data_in,
		output serial_data_out,
		input reset,
		input start,
		//output test_pin,
		//output test_pin_2,
		//output test_pin_3,
		//output test_pin_4,
		//output test_pin_5,
		//output test_pin_6,
		//output [2:0] counter_out,
		//output clk_probe,
		output done_transmit
    );

	//reg test;
	//reg test_3;
	//reg test_4;
	//reg test_5;
	//reg test_6;
	//assign test_pin = test;
	//assign test_pin_2 = done_flag;
	//assign test_pin_3 = test_3;
	//assign test_pin_4 = test_4;
	//assign test_pin_5 = test_5;
	//assign test_pin_6 = test_6;
	//assign counter_out = counter;
	//assign clk_probe = clk;

	//wire [7:0] data_in;
	//assign data_in = 8'b00101101;
	
	reg [2:0] counter;
	reg data_out;
	reg done, done_flag;
	assign done_transmit = done;
	assign serial_data_out = data_out;	
	
	initial
    begin
        counter <= 3'b0;
        done <= 1'b0;
		  done_flag <= 1'b0;
		  //test <= 0;
    end
	
	always @(posedge clk) begin
		if (start) begin
			if (reset) begin
				counter <= 3'b0;
				done <= 1'b0;
				done_flag <= 1'b0;
			end else begin
				//test <= ~test;
				if (done_flag == 1'b0) begin
					//test_3 <= ~test_3;
					data_out <= data_in[counter];		// LSB first
				end
				if (counter == 3'b111) begin
					//test_4 <= ~test_4;
					counter <= 3'b0;
					done_flag <= 1'b1;
				end else begin
					//test_5 <= ~test_5;
					counter <= counter + 1'b1;
				end
				if (done_flag) begin
					//test_6 <= ~test_6;
					done <= 1'b1;
				end
			end
		end
	end

endmodule
