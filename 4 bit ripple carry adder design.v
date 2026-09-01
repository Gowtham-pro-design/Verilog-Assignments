// Enter source text here`timescale 1ns/1ps

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


module half_adder (
    input A,
    input B,
    output Sum,
    output Carry
);

xor (Sum, A, B);
and (Carry, A, B);

endmodule


module ripple_carry_adder (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
);

wire C1, C2, C3;

full_adder FA0 (
    .A(A[0]),
    .B(B[0]),
    .Cin(Cin),
    .Sum(Sum[0]),
    .Cout(C1)
);

full_adder FA1 (
    .A(A[1]),
    .B(B[1]),
    .Cin(C1),
    .Sum(Sum[1]),
    .Cout(C2)
);

full_adder FA2 (
    .A(A[2]),
    .B(B[2]),
    .Cin(C2),
    .Sum(Sum[2]),
    .Cout(C3)
);

full_adder FA3 (
    .A(A[3]),
    .B(B[3]),
    .Cin(C3),
    .Sum(Sum[3]),
    .Cout(Cout)
);

endmodule