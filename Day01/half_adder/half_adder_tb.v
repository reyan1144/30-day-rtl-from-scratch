`timescale 1ns/1ps   // Time unit = 1ns, precision = 1ps

// Testbench for Half Adder
module tb_half_adder;

    // Declare inputs as reg (driven by testbench)
    reg A;
    reg B;

    // Declare outputs as wire (driven by DUT)
    wire SUM;
    wire CARRY;

    // Instantiate the DUT (Device Under Test)
    half_adder uut (
        .A(A),
        .B(B),
        .SUM(SUM),
        .CARRY(CARRY)
    );

    // Dump waveform for viewing in EDA PLAYGROUND(IF U ARE USING VIVADO NO NEED OF BELOW 2 LINES)
    initial begin
        $dumpfile("wave.vcd");   // Output VCD file
        $dumpvars;               // Dump all variables
    end

    // Apply test vectors
    initial begin

        // Apply all input combinations
        A = 0; B = 0; #10;   // 0 + 0
        A = 0; B = 1; #10;   // 0 + 1
        A = 1; B = 0; #10;   // 1 + 0
        A = 1; B = 1; #10;   // 1 + 1

        // Wait and finish simulation
        #10;
        $finish;
    end

endmodule
