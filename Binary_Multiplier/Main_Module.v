`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:56 02/13/2025 
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
    input B0,
    input B1,
    input B2,
    input B3,
    output C0,
    output C1,
    output C2,
    output C3,
    output C4,
    output C5,
    output C6
    );
and(t1 , A0 , B1);
and(t2 , A0 , B2);
and(t3 , A0 , B3);

and(i0 , A1 , B0);
and(i1 , A1 , B1);
and(i2 , A1 , B2);
and(i3 , A1 , B3);

and(k0 , A2 , B0);
and(k1 , A2 , B1);
and(k2 , A2 , B2);
and(k3 , A2 , B3);

// Fulladders

// Fulladder 1
xor(a0 , t1 , i0);
xor(a1 , t2 , i1);
xor(a2 , t3 , i2);
xor(a3 , 0  , i3);

and(b0 , t1 , i0);
and(b1 , t2 , i1);
and(b2 , t3 , i2);
and(b3 , 0  , i3);

and(d0 , t1 , C0);
and(d1 , t2 , c1);
and(d2 , t3 , c2);
and(d3 , 0  , c3);


xor(s0 , t1 , C0);
xor(s1 , t2 , c1);
xor(s2 , t3 , c2);
xor(s3 , 0  , c3);

or(c1 , d0 , b0);
or(c2 , d1 , b1);
or(c3 , d2 , b2);

// Fulladder 2

xor(m0 , s0 , k0);
xor(m1 , s1 , k1);
xor(m2 , s2 , k2);
xor(m3 , s3 , k3);

and(n0 , s0 , k0);
and(n1 , s1 , k1);
and(n2 , s2 , k2);
and(n3 , s3 , k3);

and(f0 , s0 , C0);
and(f1 , s1 , c11);
and(f2 , s2 , c21);
and(f3 , s3 , c31);

or(c11 , f0 , n0);
or(c21 , f1 , n1);
or(c31 , f2 , n2);

// Output
and(C0 , A0 , B0);
or(C1 , d3 , b3);
or(C2  , f3 , n3);
xor(C3 , s0 , C0);
xor(C4 , s1 , c1);
xor(C5 , s2 , c2);
xor(C6 , s3 , c3);

endmodule
