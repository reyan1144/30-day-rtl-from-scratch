`timescale 1ns/1ps   // Time unit = 1ns, precision = 1ps

// Testbench for 4-bit Barrel Shifter

module barrel_shifter_tb;

reg [3:0] data;    // Input data
reg [1:0] shift;   // Shift control (0 to 3)
wire [3:0] out;    // Output

// Instantiate DUT (Device Under Test)
barrel_shifter dut(
    .data(data),
    .shift(shift),
    .out(out)
);

initial begin

    // Waveform dumping (for EPWave / GTKWave)
    $dumpfile("barrel.vcd");              // Creates VCD file for waveform
  $dumpvars(0, dut);      // Dumps dut

    // Apply input data
    data = 4'b1011;

    // Test all shift cases
    shift = 2'b00; #10;   // No shift → 1011
    shift = 2'b01; #10;   // Shift left by 1 → 0110
    shift = 2'b10; #10;   // Shift left by 2 → 1100
    shift = 2'b11; #10;   // Shift left by 3 → 1000

    // End simulation
    $finish;
end

// Display values in console (for debugging)
initial begin
    $monitor("Time=%0t | data=%b | shift=%b | out=%b",
              $time, data, shift, out);
end

endmodule
