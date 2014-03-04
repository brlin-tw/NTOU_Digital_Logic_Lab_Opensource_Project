//testbench of Lab9
`timescale 1ns / 100ps

//include模組
`include "Source_code/dffSyncSid.v"

//時脈頻率
`define CLOCK_FREQ 10

module Lab9_tb;
  reg Clk, ClrN;
  wire [3:0]next;

	//D.U.T. instantiation
  dffSyncSid dut(next, Clk, ClrN);

  //時脈初始化
  always
	  begin
    #`CLOCK_FREQ Clk = !Clk;
	  end
  //


  initial
    begin
	    //初始化
      $dumpfile ("Simulation/Lab9_tb.vcd");
      $dumpvars;
      $monitor($time, " Clk=%b, ClrN=%b ==> next=%4x", Clk, ClrN, next);

      //模擬
      Clk = 0;
      ClrN = 0;
      #100
      ClrN = 1;
      #200
      $finish;
    end
endmodule
