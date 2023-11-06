module design5 (
  input logic x, y, z,
  output f
);

logic [1:0] enable;
logic [4:0] select;
logic y0, y1, y2, y3, y4, y5, y6, y7;

assign enable = 2'b10;

IC74138 decoder (
  .a(z),
  .b(y),
  .c(x),
  .g1(enable[1]),
  .g2(enable[0]),
  .y0(y0),
  .y1(y1),
  .y2(y2),
  .y3(y3),
  .y4(y4),
  .y5(y5),
  .y6(y6),
  .y7(y7)
);

assign f = ~((y0 & y2) & (y5 & y7));

endmodule: design5
