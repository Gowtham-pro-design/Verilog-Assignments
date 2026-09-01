`timescale 1ns/1ps

module mux4to1 (
    input I0,
    input I1,
    input I2,
    input I3,
    input S1,
    input S0,
    output Y
);

assign Y = S1 ? 
           (S0 ? I3 : I2) :
           (S0 ? I1 : I0);

endmodule


module xor_using_mux (
    input A,
    input B,
    output Y
);

mux4to1 M0 (
    .I0(1'b0),
    .I1(1'b1),
    .I2(1'b1),
    .I3(1'b0),
    .S1(A),
    .S0(B),
    .Y(Y)
);

endmodule