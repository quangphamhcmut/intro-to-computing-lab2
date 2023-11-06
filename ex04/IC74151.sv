module IC74151 (
  input logic g, x, y, z,
  input logic d0, d1, d2, d3, d4, d5, d6, d7,
  output logic f
);

logic [3:0] select;
assign select = {g, x, y, z};

always_comb begin: proc_mux
  case (select)
    4'b0000: f = d0;
    4'b0001: f = d1;
    4'b0010: f = d2;
    4'b0011: f = d3;
    4'b0100: f = d4;
    4'b0101: f = d5;
    4'b0110: f = d6;
    4'b0111: f = d7;
    default: f = 1'b0;
  endcase
end

endmodule: IC74151
