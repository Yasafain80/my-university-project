`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:22:54 02/11/2025 
// Design Name: 
// Module Name:    Comparator_Module 
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
module Comparator_Module(
    input a0,
    input a1,
    input a2,
    input a3,
	 
    input b0,
    input b1,
    input b2,
    input b3,
	 
    output aBIGGERb,
    output aSMALLERb,
    output aEQUALb
    );

and and0(AND_OUT0 , ~a3 , b3);
and and1(AND_OUT1 , a3 , ~b3);
nor x3_out(x3 , AND_OUT0 ,AND_OUT1);

and and2(AND_OUT2 , ~a2 , b2);
and and3(AND_OUT3 , a2 , ~b2);
nor x2_out(x2 , AND_OUT2 ,AND_OUT3);

and and4(AND_OUT4 , ~a1 , b1);
and and5(AND_OUT5 , a1 , ~b1);
nor x1_out(x1 , AND_OUT4 ,AND_OUT5);

and and6(AND_OUT6 , ~a0 , b0);
and and7(AND_OUT7 , a0 , ~b0);
nor x0_out(x0 , AND_OUT6 ,AND_OUT7);


and(y0 , x3 ,AND_OUT2);
and(y1 , x3 ,AND_OUT3);
and(y2 , x3 ,x2,AND_OUT4);
and(y3 , x3 ,x2,AND_OUT5);
and(y4 , x3, x2, x1, AND_OUT6);
and(y5 , x3, x2, x1, AND_OUT7);

and(aEQUALb , x3, x2, x1, x0);
or(aBIGGERb , y5,y3,y1 ,AND_OUT1);
or(aSMALLERb , y4,y2,y0,AND_OUT0);
endmodule
