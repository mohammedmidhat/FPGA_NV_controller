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
    );
	 
	 reg [7:0] clicks_count;
	 assign count = clicks_count;
	 reg idle;
	 reg FSM_status;
	 
	 
	 initial
	 begin
		FSM_status <= 0;
		clicks_count = 8'b0;
	 end
	 
	 
	 always @(posedge clk) begin
		if (reset) begin
			idle <= 0;
			FSM_status <= 1;
		end else if (FSM_status) begin
			clicks_count = 8'b0;
			FSM_status <= 0;
		end else begin
			idle <= 1;
		end
	 end
	 
	 
	 always @(posedge click) begin
		if (idle) begin
			clicks_count <= clicks_count + 1'b1;
		end
	 end


endmodule
