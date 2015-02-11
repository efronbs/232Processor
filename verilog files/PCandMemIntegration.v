`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:44 02/10/2015 
// Design Name: 
// Module Name:    PCandMemIntegration 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PCandMemIntegration(
    );
	  
	
	
	  
	clockDoubler (
		//.clkIn(clkIn),
		//.dClk(dClk)
   );
	 
	register16bit (
		//.dataIn(dataIn),
		//.write(write),
		//.reset(reset),
		//.dataOut(dataOut)
   );
	 
	blockmemory16bit (
		//.clka(clka),
		//.wea(wea),
		//.addra(addra),
		//.dina(dina),
		//.douta(douta)
	);		 

endmodule
