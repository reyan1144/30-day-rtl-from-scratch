`timescale 1ns/1ps   // Time unit = 1ns, precision = 1ps

// Testbench for D Flip-Flop with Enable and Synchronous Reset

module tb_dff_en;

  // Inputs
  reg clk, rst, d, en;

  // Output
  wire q;

  // Instantiate DUT (Device Under Test)
  dff_en dut (
    .clk(clk),
    .rst(rst),
    .d(d),
    .en(en),
    .q(q)
  );

  // Clock generation: 10 time units period (toggle every 5)
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    // Waveform dumping (for EPWave / GTKWave)
    $dumpfile("dff_en.vcd");   // Stores simulation activity
    $dumpvars(0, dut);         // Dumps DUT signals for clean waveform

    // Initial condition: reset active
    rst = 1; en = 0; d = 0;    // q → 0 on next clock edge
    #12 rst = 0;               // Release reset (takes effect on clock edge)

    // Enable = 1 → q follows d on clock edge
    en = 1; d = 1; #10;        // q = 1
    d = 0; #10;                // q = 0

    // Enable = 0 → q should hold previous value
    en = 0; d = 1; #10;        // q stays 0 (no update)

    // Enable = 1 again → q updates
    en = 1; #10;               // q = 1

    // Apply reset again
    rst = 1; #10;              // q = 0 on clock edge
    rst = 0;

    // Finish simulation
    #20 $finish;
  end

endmodule
