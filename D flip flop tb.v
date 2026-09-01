timescale 1ns/1ps

module D_Flip_Flop_tb;

reg clk;
reg D;
reg reset;
wire Qn;

D_Flip_Flop uut (
    .clk(clk),
    .D(D),
    .reset(reset),
    .Qn(Qn)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    // Initialize
    $dumpfile("dump.vcd");
    $dumpvars;
    clk = 0;
    D = 0;
    reset = 1;

    // Reset active
    #10;
    
    // Release reset, D = 1
    reset = 0;
    D = 1;

    #10;

    // D = 0
    D = 0;

    #10;

    // D = 1
    D = 1;

    #10;

    // Reset again
    reset = 1;

    #10;

    // Release reset
    reset = 0;
    D = 0;

    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t | clk=%b | reset=%b | D=%b | Qn=%b",
              $time, clk, reset, D, Qn);
end

endmodule