`timescale 1ns/1ps

module tb_binary_to_gray_2bit;

reg [1:0] B;
wire [1:0] G;

binary_to_gray_2bit dut (
    .B(B),
    .G(G)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_binary_to_gray_2bit);

    $monitor("Time=%0t | Binary=%b | Gray=%b",
             $time, B, G);

    B = 2'b00;
    #10 B = 2'b01;
    #10 B = 2'b10;
    #10 B = 2'b11;

    #10 $finish;
end

endmodule