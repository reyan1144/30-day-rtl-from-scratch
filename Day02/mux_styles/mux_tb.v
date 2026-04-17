`timescale 1ns/1ps   // Time unit = 1ns, precision = 1ps

// Common Testbench for 2:1 MUX (Reusable for all styles: assign / if / case)

module tb_mux_2to1;

    // Inputs
    reg A;
    reg B;
    reg SEL;

    // Output
    wire Y;

    
    //  REUSABILITY POINT:
    // Change ONLY the module name below to test different style  

    // For assign style:
    // mux_assign uut (.A(A), .B(B), .SEL(SEL), .Y(Y));

    // For if-else style:
    // mux_if uut (.A(A), .B(B), .SEL(SEL), .Y(Y));

    // For case style:
    mux_case uut (.A(A), .B(B), .SEL(SEL), .Y(Y));

    // =========================================================

    // Waveform dumping (for EPWave / GTKWave)
    initial begin
        $dumpfile("wave.vcd");     // Stores simulation activity
        $dumpvars(0, uut);         // Dumps only DUT signals
    end

    // Test cases
    initial begin

        // Apply input combinations
        A = 0; B = 1; SEL = 0; #10;   // Y = A = 0
        A = 0; B = 1; SEL = 1; #10;   // Y = B = 1
        A = 1; B = 0; SEL = 0; #10;   // Y = A = 1
        A = 1; B = 0; SEL = 1; #10;   // Y = B = 0

        // End simulation
        #10;
        $finish;
    end

endmodule
