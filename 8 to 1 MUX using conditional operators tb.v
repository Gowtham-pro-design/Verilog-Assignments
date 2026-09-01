// Enter testbench code here`timescale 1ns/1ps

module tb_mux8to1;

reg I0, I1, I2, I3, I4, I5, I6, I7;
reg S2, S1, S0;
wire Y;

mux8to1 dut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .S2(S2),
    .S1(S1),
    .S0(S0),
    .Y(Y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_mux8to1);

    $monitor("Time=%0t | S=%b%b%b | Y=%b",
             $time, S2, S1, S0, Y);

    I0=0; I1=1; I2=0; I3=1;
    I4=0; I5=1; I6=0; I7=1;

    S2=0; S1=0; S0=0; #10;
    S2=0; S1=0; S0=1; #10;
    S2=0; S1=1; S0=0; #10;
    S2=0; S1=1; S0=1; #10;
    S2=1; S1=0; S0=0; #10;
    S2=1; S1=0; S0=1; #10;
    S2=1; S1=1; S0=0; #10;
    S2=1; S1=1; S0=1; #10;

    $finish;
end

endmodule