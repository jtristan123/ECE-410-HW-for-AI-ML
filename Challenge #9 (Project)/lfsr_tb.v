`timescale 1ns/1ps

module lfsr_tb;
  reg clk;
  reg reset;
  wire [15:0] out;

  // Instantiate the LFSR module
  lfsr16 dut (
    .clk     (clk),
    .reset   (reset),
    .lfsr_out(out)
  );

  // 50 MHz free-running clock
  always #10 clk = ~clk;

  initial begin
    // Initialize signals
    clk   = 0;
    reset = 1;
    #25 reset = 0;        // release reset after 20ns

    $display("Time  LFSR_Out");
    // Run for 20 clock cycles, printing the output each time
    repeat (20) begin
      @(posedge clk);
      $display("%4dns  %h", $time, out);
    end

    $finish;
  end
endmodule
