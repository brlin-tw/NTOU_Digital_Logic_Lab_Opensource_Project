//2對1多工器
//作者 | Author
//  林博仁(Henry.Lin.Taiwan@gmail.com)
`ifndef MULTIPLEXER2TO1_V_INCLUDED
	`define MULTIPLEXER2TO1_V_INCLUDED
	`timescale 1ns / 100ps

	module multiplexer2to1(output_signal, input_signal, selection);
		output output_signal;
		input [1:0]input_signal;
		input selection;
		
		/* TODO: 缺乏 output 跟 reg、wire 之間的關係的知識 */
		reg output_signal;
		
		always @ (selection or input_signal)
			begin
				if(selection == 0)
					output_signal = input_signal[0];
				else
					output_signal = input_signal[1];
// 				case(selection)
// 					1'b0 : output_signal = input_signal[0];
// 					1'b1 : output_signal = input_signal[1];
// 					default : output_signal = 1'bx;
// 				endcase
			end

	endmodule
`endif