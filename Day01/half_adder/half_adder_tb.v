`timescale 1ns/1ps

// Testbench for Half Adder with waveform dumping

module tb_half_adder;

    // Inputs
    reg a;
    reg b;

    // Outputs
    wire sum;
    wire carry;

    // Instantiate DUT (Device Under Test)
    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        // Dump file for waveform viewing if u are running your code in eda playground use below two lines otherwise remove that
        $dumpfile("half_adder.vcd");   // VCD file name
        $dumpvars(0, tb_half_adder);   // Dump all variables

        // Apply test vectors
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        // End simulation
        $finish;
    end

endmodule
