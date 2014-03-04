//include guard
`ifndef
	`define
	// 時間相關設定
	`timescale 1ns / 100ps

	`include "Source_code/SAP_1_ring_counter/SAP_1_ring_counter.v"
	`include	"Source_code/SAP_1_instruction_decoder/SAP_1_instruction_decoder.v"
	`include	"Source_code/SAP_1_control_matrix/SAP_1_control_matrix.v"

	/* 模組名稱：Lab_10_top_module
		著作權宣告：copyright 2012 林博仁(pika1021@gmail.com) */
	module Lab_10_top_module(out, instruction, Clk, Clr);
	//port 輸出輸入宣告
		output [11:0]out;
		input [7:4]instruction, Clk, Clr;

	//port 類型宣告
		wire [11:0]out;
		wire [7:4]instruction;
		wire Clk, ClrN;
		wire [6:1]T;
	SAP_1_ring_counter
		ring(
			.state(T),
			.Clk(Clk),
			.Rst(Clr));
	SAP_1_instruction_decoder
		dec(
	endmodule
`endif