`timescale 1ns / 1ps

module add(s,c,a,b);
output s,c;
input a,b;
xor(s,a,b);
and(c,a,b);
endmodule
