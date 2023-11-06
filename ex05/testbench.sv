`timescale 1 ns / 100 ps

module testbench ();
  // Define input and output
  reg [2:0] select;
  wire data_out;
  
  // Instantiate
  design5 dut (
    .x(select[2]),
    .y(select[1]),
    .z(select[0]),
    .f(data_out)
  );
  
  // Create clock signal
  /*
  reg clk;
  always begin
    #1 clk = ~clk;
  end;
  */
  
  initial begin
    // Initialize input
    select = 3'b000;
    
    for (int i = 0; i < 8; i++) begin
      #1 $display("Time = %0t, Select = %b, Data out = %b", $time, select, data_out);
      select = select + 1'b1;
    end
    
    #10 $finish;
  end
 
endmodule
