`timescale 1ns/1ps   // Time unit = 1ns, precision = 1ps

// Testbench for 2:1 Multiplexer

module tb_mux_2to1;

reg A;
reg B;
reg SEL;
wire Y;

// Instantiate DUT (Device Under Test)
mux_2to1 uut (
    .A(A),
    .B(B),
    .SEL(SEL),
    .Y(Y)
);

// Waveform dumping for EPWave / GTKWave
initial begin
    $dumpfile("wave.vcd");      // Creates VCD file to store signal activity
    $dumpvars(0, uut);          // Dumps all signals inside DUT (clean waveform view)
end

// Apply test cases
initial begin

    A=0; B=1; SEL=0; #10;   // Y = A = 0
    A=0; B=1; SEL=1; #10;   // Y = B = 1
    A=1; B=0; SEL=0; #10;   // Y = A = 1
    A=1; B=0; SEL=1; #10;   // Y = B = 0

    #10 $finish;
end

endmodule
