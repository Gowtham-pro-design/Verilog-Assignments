// Enter testbench code here`timescale 1ns/1ps

module tb_decoder3to8;

reg A, B, C, Enable;
wire [7:0] Y;

decoder3to8 dut (
    .A(A),
    .B(B),
    .C(C),
    .Enable(Enable),
    .Y(Y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_decoder3to8);

    $monitor("Time=%0t | Enable=%b ABC=%b%b%b | Y=%b",
             $time, Enable, A, B, C, Y);

    Enable = 1;

    {A, B, C} = 3'b000; #10;
    {A, B, C} = 3'b001; #10;
    {A, B, C} = 3'b010; #10;
    {A, B, C} = 3'b011; #10;
    {A, B, C} = 3'b100; #10;
    {A, B, C} = 3'b101; #10;
    {A, B, C} = 3'b110; #10;
    {A, B, C} = 3'b111; #10;

    $finish;
end

endmodule