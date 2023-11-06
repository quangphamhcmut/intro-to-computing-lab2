module design2 (
  input logic x, y, z,
  output logic f
);

assign f = (~x)&(~y) | y&z | x&(~y)&(~z);

endmodule: design2
