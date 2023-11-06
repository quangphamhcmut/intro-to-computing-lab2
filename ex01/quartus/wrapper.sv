module wrapper (
  input logic [2:0] SW,
  output logic [2:0] LEDR,
  output logic [0:0] LEDG
);

design1 dut (
  .x (SW[2]),
  .y (SW[1]),
  .z (SW[0]),
  .data_output (LEDG[0])
);

assign LEDR = SW;

endmodule: wrapper
