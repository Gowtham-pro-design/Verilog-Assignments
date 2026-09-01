`timescale 1ns/1ps
module D_flip_Flop(
    input clk, D, Reset,
    output reg Qn
);

always @(posedge clk) begin
    if (Reset)
        Qn <= 0;
    else
        Qn <= D;
end

endmodule