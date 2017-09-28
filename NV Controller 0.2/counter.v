`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:29:44 02/16/2017 
// Design Name: 
// Module Name:    counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counter(
		input clk,
		input click,
		input reset,
		output [7:0] count
		//output flag,
		//output prev_flag,
		//output indc,
		//output another_indc
    );
	 
	 //assign flag = count_flag;
	 //assign prev_flag = count_flag_prev;
	 //assign indc = count_flag_prev^count_flag;
	 //assign another_indc = ano_indc;
	 
	 //reg ano_indc;
	 
	 
	 reg [7:0] clicks_count;
	 reg count_flag;
	 reg count_flag_prev;
	 assign count = clicks_count;
	 
	 initial
	 begin
		count_flag_prev <= 0;
		count_flag <= 0;
		clicks_count <= 8'b0;
		//ano_indc <= 0;
	 end
	 
	 
	 always @(posedge clk) begin
		//ano_indc <= ~ano_indc;
		if (reset) begin
			clicks_count <= 8'b0;
		end else if (count_flag_prev^count_flag) begin
			count_flag_prev <= count_flag;
			clicks_count <= clicks_count + 1'b1;
		end
	 end
	 
	 
	 always @(posedge click) begin
		count_flag <= count_flag + 1'b1;
	 end


endmodule
