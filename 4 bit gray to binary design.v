`timescale 1ns/1ps

module gray_to_binary_4bit (
    input [3:0] G,
    output [3:0] B
);

assign B[3] = G[3];
assign B[2] = G[3] ^ G[2];
assign B[1] = G[3] ^ G[2] ^ G[1];
assign B[0] = G[3] ^ G[2] ^ G[1] ^ G[0];

endmodule