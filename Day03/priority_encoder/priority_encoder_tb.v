`timescale 1ns/1ps   // Time unit = 1ns, precision = 1ps

// Testbench for 8:3 Priority Encoder

module priority_encoder_tb;

    // Input
    reg [7:0] i;

    // Outputs
    wire [2:0] o;
    wire v;

    // Instantiate DUT (Device Under Test)
    priority_encoder dut(
        .i(i),
        .o(o),
        .v(v)
    );

    // Waveform dumping (for EPWave / GTKWave)
    initial begin
        $dumpfile("priority_encoder.vcd");   // VCD file to store waveform

        // Dump only DUT signals for clean waveform
        $dumpvars(0, dut);
    end

    // Apply test cases
    initial begin

        i = 8'b00000000; #10;  // No input active → v=0

        i = 8'b00000001; #10;  // i[0]=1 → o=000, v=1
        i = 8'b00001000; #10;  // i[3]=1 → o=011, v=1
        i = 8'b10000000; #10;  // i[7]=1 → o=111, v=1

        // Multiple inputs high → highest priority should be selected
        i = 8'b00101000; #10;  // i[5] & i[3] → o=101 (i[5] wins)
        i = 8'b01010010; #10;  // i[6], i[4], i[1] → o=110 (i[6] wins)

        // End simulation
        $finish;
    end

endmodule
