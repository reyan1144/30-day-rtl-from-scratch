// Testbench for 3:8 Decoder

module decoder_tb;

  reg [2:0] in;     // 3-bit input to DUT
  wire [7:0] out;   // 8-bit one-hot output from DUT

  // Instantiate DUT (Device Under Test)
  decoder dut(.in(in), .out(out));

  initial begin

    // Waveform dumping (for EPWave / GTKWave)
    $dumpfile("decoder.vcd");        // Creates VCD file to store simulation data
    $dumpvars(0, dut);               // Dumps DUT signals

    // Apply all possible input combinations
    in = 3'b000; #10;   // out = 00000001
    in = 3'b001; #10;   // out = 00000010
    in = 3'b010; #10;   // out = 00000100
    in = 3'b011; #10;   // out = 00001000
    in = 3'b100; #10;   // out = 00010000
    in = 3'b101; #10;   // out = 00100000
    in = 3'b110; #10;   // out = 01000000
    in = 3'b111; #10;   // out = 10000000

    // End simulation
    $finish;
  end

endmodule
