`timescale 1ns / 1ps

module add_tb();
reg a,b;
wire s,c;
add dut(.a(a), .b(b), .s(s), .c(c));
    initial
    begin
    a = 1'b0; b = 1'b1;
    #2 a = 1'b1; b = 1'b1;
    #2 a = 1'b0; b = 1'b0;
     #2 a = 1'b1;b= 1'b0;
    end
initial $monitor ("time =%g, s =%b, c = %b, a = %b, b = %b",$time, s,c,a,b);
initial #10 $finish;
endmodule
