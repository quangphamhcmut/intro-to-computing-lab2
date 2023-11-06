module IC74138 (
  input logic a, b, c,
  input logic g1, g2,
  output logic y0, y1, y2, y3, y4, y5, y6, y7
);

logic [4:0] select;
logic [7:0] data_out;

assign select = {g1, g2, c, b, a};

always_comb begin: proc_decoder
  case (select)
    5'b10000: data_out = 8'b11111110;
    5'b10001: data_out = 8'b11111101;
    5'b10010: data_out = 8'b11111011;
    5'b10011: data_out = 8'b11110111;
    5'b10100: data_out = 8'b11101111;
    5'b10101: data_out = 8'b11011111;
    5'b10110: data_out = 8'b10111111;
    5'b10111: data_out = 8'b01111111;
    default: data_out = 8'b11111111;
  endcase
end
assign y0 = data_out[0];
assign y1 = data_out[1];
assign y2 = data_out[2];
assign y3 = data_out[3];
assign y4 = data_out[4];
assign y5 = data_out[5];
assign y6 = data_out[6];
assign y7 = data_out[7];

endmodule: IC74138
