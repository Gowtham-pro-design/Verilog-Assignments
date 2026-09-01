`timescale 1ns/1ps

module half_adder (
    input A,
    input B,
    output Sum,
    output Carry
);

xor (Sum, A, B);
and (Carry, A, B);

endmodule


module full_adder (
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);

wire S1;
wire C1;
wire C2;

half_adder HA1 (
    .A(A),
    .B(B),
    .Sum(S1),
    .Carry(C1)
);

half_adder HA2 (
    .A(S1),
    .B(Cin),
    .Sum(Sum),
    .Carry(C2)
);

or (Cout, C1, C2);

endmodule