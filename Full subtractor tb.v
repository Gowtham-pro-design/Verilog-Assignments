// Enter testbench code here`timescale 1ns/1ps

module tb_full_subtractor;

reg A, B, Bin;
wire Diff, Bout;

full_subtractor dut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .Diff(Diff),
    .Bout(Bout)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_full_subtractor);

    $monitor("Time=%0t | A=%b B=%b Bin=%b | Diff=%b Bout=%b",
             $time, A, B, Bin, Diff, Bout);

    {A, B, Bin} = 3'b000; #10;
    {A, B, Bin} = 3'b001; #10;
    {A, B, Bin} = 3'b010; #10;
    {A, B, Bin} = 3'b011; #10;
    {A, B, Bin} = 3'b100; #10;
    {A, B, Bin} = 3'b101; #10;
    {A, B, Bin} = 3'b110; #10;
    {A, B, Bin} = 3'b111; #10;

    $finish;
end

endmodule