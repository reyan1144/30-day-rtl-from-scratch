`timescale 1ns/1ps   // Time unit = 1ns, precision = 1ps

// Testbench for 4:1 Multiplexer

module mux4_to_1_tb;

    // Input signals (driven by testbench)
    reg i0, i1, i2, i3;
    reg s1, s2;

    // Output signal (from DUT)
    wire out;

    // Instantiate DUT (Device Under Test)
    mux4_to_1 dut (
        .out(out),
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .s1(s1),
        .s2(s2)
    );

    // Waveform dumping for EPWave / GTKWave
    initial begin
        $dumpfile("mux.vcd");     // Creates VCD file to store simulation activity
        $dumpvars(0, dut);        // Dumps only DUT signals (avoids duplicate signals in waveform)
    end

    // Apply test cases
    initial begin

        // Test Case 1: Fixed inputs
        i0 = 0; i1 = 1; i2 = 0; i3 = 1;

        // Verify selection logic
        s1 = 0; s2 = 0; #10;   // out = i0
        s1 = 0; s2 = 1; #10;   // out = i1
        s1 = 1; s2 = 0; #10;   // out = i3
        s1 = 1; s2 = 1; #10;   // out = i2

        // Test Case 2: Change inputs dynamically
        i0 = 1; i1 = 0; i2 = 1; i3 = 0;

        // Re-verify for new inputs
        s1 = 0; s2 = 0; #10;   // out = i0
        s1 = 0; s2 = 1; #10;   // out = i1
        s1 = 1; s2 = 0; #10;   // out = i3
        s1 = 1; s2 = 1; #10;   // out = i2

        // End simulation
        $finish;
    end

endmodule
