// Verilog test fixture created from schematic /home/befron/Desktop/232Processor/232Processor/verilog files/doubleclockedMemory.sch - Thu Feb 12 16:15:23 2015

`timescale 1ns / 1ps

module doubleclockedMemory_doubleclockedMemory_sch_tb();

// Inputs
   reg clk;
   reg [0:0] memWrt;
   reg [9:0] adrs;
   reg [15:0] datIn;
	reg [9:0] addressToWriteTo;

// Output
   wire [15:0] datOut;

// Bidirs

// Instantiate the UUT
   doubleclockedMemory UUT (
		.clk(clk), 
		.memWrt(memWrt), 
		.datOut(datOut), 
		.adrs(adrs), 
		.datIn(datIn)
   );
// Initialize Inputs
      initial begin
		clk = 0;
		memWrt = 0;
		adrs = 0;
		datIn = 0;
	end
	always #5 clk=!clk;
	initial begin
		#100;
		
		//test 1
		//basic tests, sets a value in memory see if output is that value, change that value see if outputs the new value,
		//change value back but memwrite is off, see if output does not change back
		adrs = 'b0000000001; datIn = 'b0101010101010101; memWrt = 1;
		#10;
		
		adrs = 'b0000000001; datIn = 'b0000111100001111; memWrt = 1;
		#10;
		
		adrs = 'b0000000001; datIn = 'b0101010101010101; memWrt = 0;
		#10;
		
		//test 1 done
		
		//test 2
		//writes values to b0001 through b0101. then reads from each with 1111 1111 1111 1111 on the line, make sure no values
		//are changed
		
		//setting values
		adrs = 'b0000000001; datIn = 'b0000000000000001; memWrt = 1;
		#10;
		adrs = 'b0000000010; datIn = 'b0000000000000010; memWrt = 1;
		#10;
		adrs = 'b0000000011; datIn = 'b0000000000000011; memWrt = 1;
		#10;
		adrs = 'b0000000100; datIn = 'b0000000000000100; memWrt = 1;
		#10;
		adrs = 'b0000000101; datIn = 'b0000000000000101; memWrt = 1;
		#10;
		
		//reading values
		adrs = 'b0000000001; datIn = 'b1111111111111111; memWrt = 0;
		#10;
		adrs = 'b0000000010; datIn = 'b1111111111111111; memWrt = 0;
		#10;
		adrs = 'b0000000011; datIn = 'b1111111111111111; memWrt = 0;
		#10;
		adrs = 'b0000000100; datIn = 'b1111111111111111; memWrt = 0;
		#10;
		adrs = 'b0000000101; datIn = 'b1111111111111111; memWrt = 0;
		#10;
		
		adrs = 'b0000000001; datIn = 'b1111000011110000; memWrt = 0;
		#10;
		
		//test 2 done
		
		//test 3
		addressToWriteTo = 'b0000000001;
		while (addressToWriteTo != 'b0000011111) begin
			adrs = addressToWriteTo; datIn = 'b1111000011110000; memWrt = 1;
			addressToWriteTo = addressToWriteTo + 1;
			#10;
		end
		
		#100
		
		addressToWriteTo = 'b0000000001;
		while (addressToWriteTo != 'b0000011111) begin
			adrs = addressToWriteTo; datIn = 'b1111111111111111; memWrt = 0;
			addressToWriteTo = addressToWriteTo + 1;
			#10;
		end
end
endmodule
