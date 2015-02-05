`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:49:12 02/05/2015
// Design Name:   blockmemory16bit
// Module Name:   C:/Users/bonattt/Documents/School/2 Winter Sophomore/CSSE 232 Comp Arc/Final Project/Verilog/processor/blockMemTest.v
// Project Name:  processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blockmemory16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module blockMemTest;

	// Inputs
	reg clka;
	reg [0:0] wea;
	reg [9:0] addra;
	reg [15:0] dina;

	// Outputs
	wire [15:0] douta;
	reg [15:0] expected;
	reg [10:0] count;

	// Instantiate the Unit Under Test (UUT)
	blockmemory16bit uut (
		.clka(clka), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.douta(douta)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		wea = 0;
		addra = 0;
		dina = 0;
		expected = 0;
		count = 0;

		// Wait 100 ns for global reset to finish
		#100;
      clka = 1; # 5;
		addra = 'h16f; dina = 'h0123; expected = 0;
		clka = 0; #5; clka = 1; #5; count = count + 1;
		
		addra = 'h1dd; dina = 'h 0123; expected = 0;
		clka = 0; #5; clka = 1; #5; count = count + 1;
		
		addra = 'h14c;	dina = 'h1234; expected = 0;
		clka = 0; #5; clka = 1; #5; count = count + 1;
		
		addra = 'h1cf; dina = 'h2345; expected = 0;
		clka = 0; #5; clka = 1; #5; count = count + 1;
		
		wea = 1;
		
		addra = 'h26f; dina = 'h1111; //expected = 0;
		clka = 0; #5; clka = 1; expected = 'h1111; #5; count = count + 1;
		
		addra = 'h2dd; dina = 'h 2222; //expected = 0;
		clka = 0; #5; clka = 1; expected = 'h2222; #5; count = count + 1;
		
		addra = 'h24c;	dina = 'h3333; //expected = 0;
		clka = 0; #5; clka = 1; expected = 'h3333; #5; count = count + 1;
		
		addra = 'h2cf; dina = 'h4444; //expected = 0;
		clka = 0; #5; clka = 1; expected = 'h4444; #5; count = count + 1;
		
		wea = 0;
		
		addra = 'h16f; dina = 'h0123; //expected = 0;
		clka = 0; #5; clka = 1; #5; count = count + 1; expected = 0;
		
		addra = 'h1dd; dina = 'h 0123;// expected = 0;
		clka = 0; #5; clka = 1; #5; count = count + 1;expected = 0;
		
		addra = 'h14c;	dina = 'h1234; //expected = 0;
		clka = 0; #5; clka = 1; #5; count = count + 1;expected = 0;
		
		addra = 'h1cf; dina = 'h2345; //expected = 0;
		clka = 0; #5; clka = 1; #5; count = count + 1;expected = 0;
		
		addra = 'h26f; dina = 'h1111; //
		clka = 0; #5; clka = 1; #5; count = count + 1;expected = 'h1111;
		
		addra = 'h2dd; dina = 'h 2222; //expected = 'h2222;
		clka = 0; #5; clka = 1; #5; count = count + 1;expected = 'h2222;
		
		addra = 'h24c;	dina = 'h3333; //expected = 'h3333;
		clka = 0; #5; clka = 1; #5; count = count + 1;expected = 'h3333;
		
		addra = 'h2cf; dina = 'h4444; //expected = 'h4444;
		clka = 0; #5; clka = 1; #5; count = count + 1;expected = 'h4444;
		
		wea = 1;
		
		addra = 'h16f; dina = 'h0123; //expected = 0;
		clka = 0; #5; clka = 1; expected = 'h0123; #5; count = count + 1;
		
		addra = 'h1dd; dina = 'h1234; //expected = 0;
		clka = 0; #5; clka = 1; expected = 'h1234; #5; count = count + 1;
		
		addra = 'h14c;	dina = 'h2345; //expected = 0;
		clka = 0; #5; clka = 1; expected = 'h2345; #5; count = count + 1;
		
		addra = 'h1cf; dina = 'h3456; //expected = 0;
		clka = 0; #5; clka = 1; expected = 'h3456; #5; count = count + 1;
		
		addra = 'h26f; dina = 'h5555; //expected = 'h1111;
		clka = 0; #5; clka = 1; expected = 'h5555; #5; count = count + 1;
		
		addra = 'h2dd; dina = 'h 6666; //expected = 'h2222;
		clka = 0; #5; clka = 1; expected = 'h6666; #5; count = count + 1;
		
		addra = 'h24c;	dina = 'h7777; ///expected = 'h3333;
		clka = 0; #5; clka = 1; expected = 'h7777; #5; count = count + 1;
		
		addra = 'h2cf; dina = 'h8888; //expected = 'h4444;
		clka = 0; #5; clka = 1; expected = 'h8888; #5; count = count + 1;
		
		
		addra = 'h16f; dina = 'h0123; //
		clka = 0; #5; clka = 1; #5; count = count + 1;expected = 'h0123;
		
		addra = 'h1dd; dina = 'h1234; //expected = 'h1234;
		clka = 0; #5; clka = 1; #5; count = count + 1;expected = 'h1234;
		
		addra = 'h14c;	dina = 'h2345; //expected = 'h2345;
		clka = 0; #5; clka = 1; #5; count = count + 1;expected = 'h2345;
		
		addra = 'h1cf; dina = 'h3456; //expected = 'h3456;
		clka = 0; #5; clka = 1; #5; count = count + 1;expected = 'h3456;
		
		addra = 'h26f; dina = 'h5555; //expected = 'h5555;
		clka = 0; #5; clka = 1; #5; count = count + 1;expected = 'h5555;
		
		addra = 'h2dd; dina = 'h 6666; //expected = 'h6666;
		clka = 0; #5; clka = 1; #5; count = count + 1;expected = 'h6666;
		
		addra = 'h24c;	dina = 'h7777; //expected = 'h7777;
		clka = 0; #5; clka = 1; #5; count = count + 1;expected = 'h7777;
		
		addra = 'h2cf; dina = 'h8888; //expected = 'h8888;
		clka = 0; #5; clka = 1; #5; count = count + 1;expected = 'h8888;
		  
		// Add stimulus here

	end
      
endmodule

