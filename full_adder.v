`timescale 1ns / 1ps
module full_adder(
output s,cr, input a,b,c
    );
wire t1, t2, t3,k;    
xor g1(t1,a,b);
xor g2(s,t1,c);
and a1(t3,a,b);
and a2(k,t1,c);
or o1(cr,k,t3);
endmodule
