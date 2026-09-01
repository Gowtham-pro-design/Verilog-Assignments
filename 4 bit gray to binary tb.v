`timescale 1ns/1ps

module tb_gray_to_binary_4bit;

reg [3:0] G;
wire [3:0] B;

gray_to_binary_4bit dut (
    .G(G),
    .B(B)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_gray_to_binary_4bit);

    $monitor("Time=%0t | Gray=%b | Binary=%b",
             $time, G, B);

    G = 4'b0000; #10;
    G = 4'b0001; #10;
    G = 4'b0011; #10;
    G = 4'b0010; #10;
    G = 4'b0110; #10;
    G = 4'b0111; #10;
    G = 4'b0101; #10;
    G = 4'b0100; #10;
    G = 4'b1100; #10;
    G = 4'b1101; #10;
    G = 4'b1111; #10;
    G = 4'b1110; #10;
    G = 4'b1010; #10;
    G = 4'b1011; #10;
    G = 4'b1001; #10;
    G = 4'b1000; #10;

    $finish;
end

endmodule