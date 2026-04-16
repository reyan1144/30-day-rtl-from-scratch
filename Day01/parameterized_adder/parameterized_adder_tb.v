`timescale 1ns/1ps

// Testbench for Parameterized Adder
// Uses WIDTH = 4 for easy visualization of overflow

module tb_parameterized_adder;

    parameter WIDTH = 4;

    // Inputs
    reg [WIDTH-1:0] A;
    reg [WIDTH-1:0] B;

    // Outputs
    wire [WIDTH-1:0] SUM;
    wire COUT;

    // Instantiate DUT with WIDTH = 4
    parameterized_adder #(.WIDTH(WIDTH)) uut (
        .A(A),
        .B(B),
        .SUM(SUM),
        .COUT(COUT)
    );

    // Dump waveform
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, uut);
    end

    // Apply test cases
    initial begin

        // Normal cases
        A = 4'b0010; B = 4'b0011; #10;   // 2 + 3 = 5 → SUM=0101, COUT=0
        A = 4'b0100; B = 4'b0011; #10;   // 4 + 3 = 7 → SUM=0111, COUT=0

        // Boundary case (max without overflow)
        A = 4'b1111; B = 4'b0000; #10;   // 15 + 0 = 15 → SUM=1111, COUT=0

        // Overflow case (IMPORTANT)
        A = 4'b1111; B = 4'b0001; #10;   // 15 + 1 = 16 → SUM=0000, COUT=1

        // Another overflow case
        A = 4'b1010; B = 4'b1010; #10;   // 10 + 10 = 20 → SUM=0100, COUT=1

        // End simulation
        #10;
        $finish;
    end

endmodule
