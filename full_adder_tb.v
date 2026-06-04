
`timescale 1ns / 1ps
module full_adder_tb();
reg a,b,c;
wire s,cr;
add dut(.a(a), .b(b), .c(c), .s(s), .cr(cr));
    initial
    begin
    {a,b,c} = 3'b000;
    #2 {a,b,c} = 3'b001;
    #2 {a,b,c} = 3'b010;
    #2 {a,b,c} = 3'b011;
    #2 {a,b,c} = 3'b100;
    #2 {a,b,c} = 3'b101;
    #2 {a,b,c} = 3'b110;
    #2 {a,b,c} = 3'b111;
    end
initial $monitor ("time =%g, s =%b, cr = %b, a = %b, b = %b, c = %b,",$time, s,cr,a,b,c);
initial #10 $finish;
endmodule
