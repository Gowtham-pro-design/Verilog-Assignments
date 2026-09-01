`timescale 1ns/1ps

module comparator4bit (
    input [3:0] A,
    input [3:0] B,
    output A_gt_B,
    output A_eq_B,
    output A_lt_B
);

wire E3, E2, E1, E0;

assign E3 = ~(A[3] ^ B[3]);
assign E2 = ~(A[2] ^ B[2]);
assign E1 = ~(A[1] ^ B[1]);
assign E0 = ~(A[0] ^ B[0]);

assign A_gt_B = (A[3] & ~B[3]) |
                (E3 & A[2] & ~B[2]) |
                (E3 & E2 & A[1] & ~B[1]) |
                (E3 & E2 & E1 & A[0] & ~B[0]);

assign A_eq_B = E3 & E2 & E1 & E0;

assign A_lt_B = (~A[3] & B[3]) |
                (E3 & ~A[2] & B[2]) |
                (E3 & E2 & ~A[1] & B[1]) |
                (E3 & E2 & E1 & ~A[0] & B[0]);

endmodule