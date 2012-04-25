#Makefile of dff_counter_asyn
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/dff_counter_asyn_tb.executable Source_code/dff_counter_asyn_tb.v

simulate:
	Simulation/dff_counter_asyn_tb.executable

wave:
	gtkwave Simulation/dff_counter_asyn_tb.vcd &
