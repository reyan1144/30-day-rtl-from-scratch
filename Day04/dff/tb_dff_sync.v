// Testbench for D Flip-Flop with Synchronous Reset

module tb_dff;

  reg clk, rst, d;   // Inputs to DUT
  wire q;            // Output from DUT

  // Instantiate DUT (Device Under Test)
  d_ff dut (
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
  );

  // Clock generation: 10 time units period (toggle every 5)
  initial begin
    clk = 0;
    forever #5 clk = ~clk;   // Creates continuous clock
  end

  initial begin
    // Waveform dumping (for EPWave / GTKWave)
    $dumpfile("d_ff.vcd");   // Stores simulation data in VCD file
    $dumpvars(0, dut);       // Dumps DUT signals for clean waveform

    // Apply reset (synchronous)
    rst = 1; d = 0;
    #12 rst = 0;             // Reset released (takes effect on next clock edge)

    // Apply input changes
    #10 d = 1;   // q should update on next rising edge
    #10 d = 0;
    #10 d = 1;

    // Run simulation for some time
    #40 $finish;
  end

endmodule
