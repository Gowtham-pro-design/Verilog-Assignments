// Enter testbench code here`timescale 1ns/1ps

module tb_ripple_carry_adder;

reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;

ripple_carry_adder dut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_ripple_carry_adder);

    $monitor("Time=%0t | A=%b B=%b Cin=%b | Sum=%b Cout=%b",
             $time, A, B, Cin, Sum, Cout);

    A=4'b0011; B=4'b0010; Cin=0; #10;
    A=4'b0101; B=4'b0011; Cin=0; #10;
    A=4'b1111; B=4'b0001; Cin=0; #10;
    A=4'b1111; B=4'b1111; Cin=0; #10;

    $finish;
end

endmodule