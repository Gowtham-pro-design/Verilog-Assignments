`timescale 1ns/1ps

module bcd_to_7segment (
    input [3:0] BCD,
    output [6:0] SEG
);

assign SEG = (BCD == 4'b0000) ? 7'b1111110 :
             (BCD == 4'b0001) ? 7'b0110000 :
             (BCD == 4'b0010) ? 7'b1101101 :
             (BCD == 4'b0011) ? 7'b1111001 :
             (BCD == 4'b0100) ? 7'b0110011 :
             (BCD == 4'b0101) ? 7'b1011011 :
             (BCD == 4'b0110) ? 7'b1011111 :
             (BCD == 4'b0111) ? 7'b1110000 :
             (BCD == 4'b1000) ? 7'b1111111 :
             (BCD == 4'b1001) ? 7'b1111011 :
             7'b0000000;

endmodule