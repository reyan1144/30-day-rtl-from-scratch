`timescale 1ns/1ps

// Testbench for 4-bit Shift Register

module tb_shift_register;

reg clk, rst, en, d;
wire [3:0] q;

// Instantiate DUT
shift_register dut (
    .clk(clk),
    .rst(rst),
    .en(en),
    .d(d),
    .q(q)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    // Waveform dump
    $dumpfile("shift_register.vcd");
    $dumpvars(0, dut);

    // Reset
    rst = 1; en = 0; d = 0;
    #12 rst = 0;

    // Enable shifting
    en = 1;

    d = 1; #10;   // q = 0001
    d = 0; #10;   // q = 0010
    d = 1; #10;   // q = 0101
    d = 1; #10;   // q = 1011

    // Disable shifting
    en = 0; #10;  // q holds

    #20 $finish;
end

endmodule
