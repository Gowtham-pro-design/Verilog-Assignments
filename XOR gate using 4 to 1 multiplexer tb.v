`timescale 1ns/1ps

module tb_xor_using_mux;

reg A, B;
wire Y;

xor_using_mux dut (
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_xor_using_mux);

    $monitor("Time=%0t | A=%b B=%b | Y=%b",
             $time, A, B, Y);

    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;
end

endmodule