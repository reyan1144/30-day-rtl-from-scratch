`timescale 1ns/1ps   // Time unit = 1ns, precision = 1ps

// Testbench for 4-bit Register

module tb_register;

reg clk, rst, en;        // Inputs
reg [3:0] d;             // Data input
wire [3:0] q;            // Output

// Instantiate DUT (Device Under Test)
register dut (
    .clk(clk),
    .rst(rst),
    .en(en),
    .d(d),
    .q(q)
);

// Clock generation (10 time units period)
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    // Waveform dumping (for EPWave / GTKWave)
    $dumpfile("register.vcd");   // Store waveform
    $dumpvars(0, dut);           // Dump DUT signals

    // Apply reset
    rst = 1; en = 0; d = 4'b0000;
    #12 rst = 0;                 // Release reset

    // Enable = 1 → load data
    en = 1; d = 4'b1010; #10;    // q = 1010
    d = 4'b1100; #10;            // q = 1100

    // Enable = 0 → hold value
    en = 0; d = 4'b0011; #10;    // q remains 1100

    // Enable again → update
    en = 1; #10;                 // q = 0011

    // Apply reset again
    rst = 1; #10;                // q = 0000
    rst = 0;

    // End simulation
    #20 $finish;
end

endmodule
