`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         MIT Quantum Photonics Group
// Engineer:        Mohammed Al Ai Baky
// 
// Create Date:    12:46:24 02/25/2017 
// Design Name:     NV Controller
// Module Name:    clk_div_gen 
// Project Name:    NV Controller
// Target Devices:  VC707 Virtex-7 FPGA
// Tool versions:   ISE 14.6
// Description:     Clock Divider
//
// Dependencies: 
//
// Revision: 
// Revision 0.1
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clock_divider #(parameter WIDTH = 11, parameter N = 2000)(
        input clk_in,
        output clk_out
    );
    
    reg [WIDTH-1:0] r_reg;
    wire [WIDTH-1:0] r_nxt;
    reg clk_track;
    assign r_nxt = r_reg+1;   	      
    assign clk_out = clk_track;
    
    initial
    begin
        r_reg <= 0;
        clk_track <= 1'b0;
    end
    
    always @(posedge clk_in) begin
        if (r_nxt == N)
            begin
             r_reg <= 0;
             clk_track <= ~clk_track;
            end
        else
            r_reg <= r_nxt;
        end
        
endmodule

