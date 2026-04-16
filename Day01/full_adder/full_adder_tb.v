`timescale 1ns/1ps   // Time unit = 1ns, precision = 1ps

// Testbench for Full Adder
// Verifies all input combinations of A, B, and Cin

module tb_full_adder;

    // Input signals (driven by testbench)
    reg A;
    reg B;
    reg Cin;

    // Output signals (driven by DUT)
    wire SUM;
    wire Cout;

    // Instantiate the DUT (Device Under Test)
    full_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .SUM(SUM),
        .Cout(Cout)
    );

    // Dump waveform for viewing in EPWave / GTKWave
    initial begin
        $dumpfile("wave.vcd");     // VCD file for waveform
        $dumpvars(0, uut);         // Dump only DUT signals (clean waveform)
    end

    // Apply test vectors
    initial begin

        // Apply all possible input combinations (with expected outputs)

        A = 0; B = 0; Cin = 0; #10;   // SUM=0, Cout=0
        A = 0; B = 0; Cin = 1; #10;   // SUM=1, Cout=0
        A = 0; B = 1; Cin = 0; #10;   // SUM=1, Cout=0
        A = 0; B = 1; Cin = 1; #10;   // SUM=0, Cout=1

        A = 1; B = 0; Cin = 0; #10;   // SUM=1, Cout=0
        A = 1; B = 0; Cin = 1; #10;   // SUM=0, Cout=1
        A = 1; B = 1; Cin = 0; #10;   // SUM=0, Cout=1
        A = 1; B = 1; Cin = 1; #10;   // SUM=1, Cout=1

        // End simulation
        #10;
        $finish;
    end

endmodule
