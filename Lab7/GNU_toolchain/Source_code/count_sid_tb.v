//testbench範本
`timescale 1ns / 100ps

`include "Source_code/count_sid.v"

//時脈頻率
`define CLOCK_FREQ 10

module dff_counter_sid_top_tb();
  reg Clk, rst_n;
  wire [3:0]sid;

	//D.U.T. instantiation
	count_sid test(sid, Clk, rst_n);

	//初始化
  initial
    begin
      $dumpfile ("Simulation/count_sid_tb.vcd");
      $dumpvars;
			$monitor($time, " out=%4b, <=== clk=%b, rst_n=%b", sid, Clk, rst_n);
			Clk<=0;
			rst_n<=0;

			#15
			rst_n = 1;
			
			#105
			$finish;
    end

  /*時脈初始化*/
  always
	  begin
    #`CLOCK_FREQ Clk = ~Clk;
	  end

endmodule
