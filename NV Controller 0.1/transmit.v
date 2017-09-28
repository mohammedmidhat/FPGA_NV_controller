`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		MIT Quantum Photonics Group
// Engineer: 		Mohammed Al Ai Baky
// 
// Create Date:    19:49:36 02/10/2017 
// Design Name: 	NV Controller
// Module Name:    transmit 
// Project Name: 	NV Controller
// Target Devices: 	VC707 Virtex-7 FPGA
// Tool versions: 	ISE 14.6
// Description: 	The top module that tranmits the signals to the NV in the specified sequence,
//					and according to the feedback sensed over the APD from the NV
//
// Dependencies: 
//
// Revision: 
// Revision 0.1
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module transmit (
		input clkp,
		input clkn,
		input clikcs,
		input reset,
		input start,
		output[1:0] status,
		output data_out
    );
	 
	 reg timer_reset;
	 wire timer_interrupt;
	 reg serializer_reset;
	 reg serializer_start;
	 reg [7:0] serializer_data_in;
	 wire serializer_done_transmit;
	 reg counter_reset;
	 wire [7:0] counter_count;
	 reg [1:0] status_d;
	 
	 assign status = status_d;
	 localparam initialization = 2'b00,
					transmission = 2'b01,
					termination = 2'b10,
					success = 2'b11;
	 reg [1:0] init_status;
	 localparam turn_on_ser = 2'b00,
					reset_ser = 2'b01,
					wait_on_seq = 2'b10,
					wait_on_clicks = 2'b11;
	 reg trans_status;
	 localparam init_ser = 1'b0,
					wait_on_ser = 1'b1;
	 reg termin_status;
	 localparam init_ser_ter = 1'b0,
					wait_on_ser_ter = 1'b1;
	 
	 wire [7:0] seq_1;
	 wire [7:0] seq_2;
	 wire [7:0] seq_3;
	 assign seq_1 = 8'b11010111;
	 assign seq_2 = 8'b10100110;
	 assign seq_3 = 8'b00101001;
	 wire [7:0] clicks_init_thresh;
	 assign clicks_init_thresh = 8'b01000000;
	 
	 

	IBUFDS #(
      .DIFF_TERM("FALSE"),       // Differential Termination
      .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE" 
      .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
   ) IBUFDS_inst (
      .O(clk_undiv),  // Buffer output
      .I(clkp),  // Diff_p buffer input (connect directly to top-level port)
      .IB(clkn) // Diff_n buffer input (connect directly to top-level port)
   );

	timer timer_inst (
			.clk(clk),
			.reset(timer_reset),
			.timeout_interrupt(timer_interrupt));
	
	Serializer serializer_inst (
			.clk(clk),
			.data_in(serializer_data_in),
			.serial_data_out(data_out),
			.reset(serializer_reset),
			.start(serializer_start),
			.done_transmit(serializer_done_transmit));
		
	counter counter_inst (
			.clk(clk),
			.click(clicks),
			.reset(counter_reset),
			.count(counter_count));
	
	clock_divider clock_divider_inst (
		.clk_in(clk_undiv),
		.clk_out(clk));
		
			
	initial
	begin
		status_d <= initialization;
		timer_reset <= 1;
		serializer_reset <= 1;
		serializer_start <= 0;
		counter_reset <= 1;
		init_status <= turn_on_ser;
		trans_status <= init_ser;
		termin_status <= init_ser_termin;
	end
	
	always @(posedge clk) begin
		if (start) begin
			if (reset) begin
				status_d <= initialization;
				timer_reset <= 1;
				serializer_reset <= 1;
				serializer_start <= 0;
				counter_reset <= 1;
				init_status <= turn_on_ser;
				trans_status <= init_ser;
				termin_status <= init_ser_termin;
			end else begin
				case(status_d)
					initialization: begin
						case(init_status)
							turn_on_ser: begin
								timer_reset <= 1;
								serializer_reset <= 1;
								counter_reset <= 1;
								serializer_start <= 1;
								serializer_data_in <= seq_1;
								init_status <= reset_ser;
							end
							reset_ser: begin
								serializer_reset <= 0;
								init_status <= wait_on_seq;
							end
							wait_on_seq: begin
								if (serializer_done_transmit) begin
									timer_reset <= 0;
									counter_reset <= 0;
									init_status <= wait_on_clicks;
								end
							end
							wait_on_clicks: begin
								if (~timer_interrupt && counter_count >= clicks_init_thresh) begin
									status_d <= transmission;
									serializer_reset <= 1;
									serializer_data_in <= seq_2;
									trans_status <= init_ser;
								end else if (timer_interrupt) begin
									init_status <= turn_on_ser;
								end
							end
						endcase
					transmission: begin
						case(trans_status)
							init_ser: begin
								serializer_reset <= 0;
							end
							wait_on_ser: begin
								if (serializer_done_transmit) begin
									status_d <= termination;
									serializer_reset <= 1;
									serializer_data_in <= seq_3;
									termin_status <= init_ser_termin;
								end
							end
						endcase
					termination: begin
						case(termin_status)
							init_ser_termin: begin
								serializer_reset <= 0;
							end
							wait_on_ser_termin: begin
								if (serializer_done_transmit) begin
									status_d <= success;
								end
							end
						endcase
				endcase
			end
		end
	end
	
endmodule

