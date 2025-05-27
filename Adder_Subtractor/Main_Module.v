`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:07:48 02/13/2025 
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
    input M,
    input C0,
    output S0,
    output S1,
    output S2,
    output S3,
    output V,
    output C
    );
xor T0(t0 , B0 , M);
xor T1(t1 , B1 , M);
xor T2(t2 , B2 , M);
xor T3(t3 , B3 , M);

// FULLADDERS
// fulladder1
xor S0_Output(S0 , A0 , t0 , C0);
and (S01 , A0 , t0);
and (S02 , A0 , C0);
and (S03 , t0 , C0);
or C1_Output(C1 , S01 , S02 , S03);
// fulladder2
xor S1_Output(S1 , A1 , t1 , C1);
and (S11 , A1 , t1);
and (S12 , A1 , C1);
and (S13 , t1 , C1);
or C2_Output(C2 , S11 , S12 , S13);
// fulladder3
xor S2_Output(S2 , A2 , t2 , C2);
and (S21 , A2 , t2);
and (S22 , A2 , C2);
and (S23 , t2 , C2);
or C3_Output(C3 , S21 , S22 , S23);
// fulladder4
xor S3_Output(S3 , A3 , t3 , C3);
and (S31 , A3 , t3);
and (S32 , A3 , C3);
and (S33 , t3 , C3);
or C4_Output(C4 , S31 , S32 , S33);
or C_Output(C , S31 , S32 , S33);

xor V_Output(V , C4 , C3);

endmodule
