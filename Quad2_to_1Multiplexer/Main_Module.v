`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:51:41 02/12/2025 
// Design Name: 
// Module Name:    Main_Module 
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
module Main_Module(
    input A0,
    input A1,
    input A2,
    input A3,
    input B0,
    input B1,
    input B2,
    input B3,
    input S,
    input E,
    output Y0,
    output Y1,
    output Y2,
    output Y3
    );
// A-T
and T0(t0 , A0 , ~S , ~E);
and T1(t1 , A1 , ~S , ~E);
and T2(t2 , A2 , ~S , ~E);
and T3(t3 , A3 , ~S , ~E);
// B-I
and I0(i0 , B0 , S , ~E);
and I1(i1 , B1 , S , ~E);
and I2(i2 , B2 , S , ~E);
and I3(i3 , B3 , S , ~E);
// Output
or Y0_Output(Y0 , t0 , i0);
or Y1_Output(Y1 , t1 , i1);
or Y2_Output(Y2 , t2 , i2);
or Y3_Output(Y3 , t3 , i3);

endmodule
