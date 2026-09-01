`timescale 1ns/1ps

module tb_mux2to1_gate;

reg I0, I1, S;
wire Y;

mux2to1_gate dut (
    .I0(I0),
    .I1(I1),
    .S(S),
    .Y(Y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_mux2to1_gate);

    $monitor("Time=%0t | I0=%b I1=%b S=%b | Y=%b",
             $time, I0, I1, S, Y);

    {I0, I1, S} = 3'b000; #10;
    {I0, I1, S} = 3'b001; #10;
    {I0, I1, S} = 3'b010; #10;
    {I0, I1, S} = 3'b011; #10;
    {I0, I1, S} = 3'b100; #10;
    {I0, I1, S} = 3'b101; #10;
    {I0, I1, S} = 3'b110; #10;
    {I0, I1, S} = 3'b111; #10;

    $finish;
end

endmodule