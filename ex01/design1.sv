module design1 (
  input x, y, z,
  output data_output
);

assign data_output = ~x&y&z | ~(x&y)&z | x&y;

/*
always_comb begin: proc_idk
  case (data_input)
    3'b011: data_output = '1;
    3'b001: data_output = '1;
    3'b110: data_output = '1;
    3'b111: data_output = '1;
    default: data_output = '0;
  endcase
end
*/

endmodule: design1
