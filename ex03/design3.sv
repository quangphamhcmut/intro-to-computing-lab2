module design3 (
  input logic x, y, z,
  output logic f
);

assign f = ~(~(x | y&z) | ~(x&(~y)));

endmodule: design3
