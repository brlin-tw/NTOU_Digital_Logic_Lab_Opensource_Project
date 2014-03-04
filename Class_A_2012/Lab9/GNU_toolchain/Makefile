#Makefile of a Lab9
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/Lab9_tb.executable Source_code/Lab9_tb.v

simulate:
	Simulation/Lab9_tb.executable

wave:
	gtkwave Simulation/Lab9_tb.vcd &
