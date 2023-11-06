module design4 (
  input logic x, y, z,
  output f
);

logic [0:0] strobe;
logic d0, d1, d2, d3, d4, d5, d6, d7;
assign strobe = 1'b0;
assign d0 = 1'b0;
assign d1 = 1'b1;
assign d2 = 1'b1;
assign d3 = 1'b0;
assign d4 = 1'b1;
assign d5 = 1'b0;
assign d6 = 1'b0;
assign d7 = 1'b1;

IC74151 mux (
  .g(strobe),
  .x(x),
  .y(y),
  .z(z),
  .d0(d0),
  .d1(d1),
  .d2(d2),
  .d3(d3),
  .d4(d4),
  .d5(d5),
  .d6(d6),
  .d7(d7),
  .f(f)
);

endmodule: design4
