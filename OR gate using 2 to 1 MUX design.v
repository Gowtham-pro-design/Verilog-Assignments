`timescale 1ns/1ps

module mux2to1 (
    input I0,
    input I1,
    input S,
    output Y
);

assign Y = S ? I1 : I0;

endmodule


module or_using_mux (
    input A,
    input B,
    output Y
);

mux2to1 M0 (
    .I0(B),
    .I1(1'b1),
    .S(A),
    .Y(Y)
);

endmodule