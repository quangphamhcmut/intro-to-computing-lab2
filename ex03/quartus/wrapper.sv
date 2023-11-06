module wrapper (
  input logic [2:0] SW,
  output logic [2:0] LEDR,
  output logic [0:0] LEDG
);

design3 dut (
  .z(SW[0]),
  .y(SW[1]),
  .x(SW[2]),
  .f(LEDG[0])
);

assign LEDR = SW;

endmodule: wrapper
