`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:13:47 02/08/2017 
// Design Name: 
// Module Name:    timer 
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
module timer #(parameter WIDTH = 10, parameter CLK_MUL = 1000)(
		input clk,
		input reset,
		output timeout_interrupt
    );
	
	reg [WIDTH-1:0] r_reg;
   wire [WIDTH-1:0] r_nxt;
	assign r_nxt = r_reg+1;
	reg timeout;
	assign timeout_interrupt = timeout;
	
	
	
	initial
    begin
        r_reg <= 0;
        timeout <= 1'b0;
    end
	 
	 always @(posedge clk) begin
        if (reset) begin
				r_reg <= 0;
				timeout <= 1'b0;
		  end
		  if (r_nxt == CLK_MUL) begin
             timeout <= 1'b1;
        end else begin
            r_reg <= r_nxt;
        end
	 end 
		  
endmodule
