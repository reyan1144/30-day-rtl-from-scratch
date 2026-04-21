// Testbench for D Flip-Flop with Asynchronous Reset

`timescale 1ns/1ps

module tb_dff_async;

  reg clk, rst, d;   // Inputs
  wire q;            // Output

  // Instantiate DUT
  d_ff1 dut (
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
  );

  // Clock generation (10 time units period)
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Stimulus
  initial begin
    // Waveform dump
    $dumpfile("dff_async.vcd");
    $dumpvars(0, dut);

    // Initial values
    rst = 1; d = 0;   // Reset active → q = 0 immediately
    #7 rst = 0;       // Release reset (not aligned with clock → shows async behavior)

    #10 d = 1;        // q updates on next clock edge
    #10 d = 0;

    #3 rst = 1;       // Assert reset in middle of clock → q resets immediately
    #5 rst = 0;

    #20 $finish;
  end

endmodule
