// 3:8 Decoder
// Converts 3-bit binary input into one-hot 8-bit output

module decoder (
    input  [2:0] in,    // 3-bit input
    output reg [7:0] out // 8-bit one-hot output
);

always @(*) begin
    // Default assignment to avoid latch inference
    out = 8'b00000000;

    // Decode input into one-hot output
    case (in)
        3'b000: out = 8'b00000001; // Activate bit 0
        3'b001: out = 8'b00000010; // Activate bit 1
        3'b010: out = 8'b00000100; // Activate bit 2
        3'b011: out = 8'b00001000; // Activate bit 3
        3'b100: out = 8'b00010000; // Activate bit 4
        3'b101: out = 8'b00100000; // Activate bit 5
        3'b110: out = 8'b01000000; // Activate bit 6
        3'b111: out = 8'b10000000; // Activate bit 7
    endcase
end

endmodule
