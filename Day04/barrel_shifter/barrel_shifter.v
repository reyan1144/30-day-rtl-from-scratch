// 4-bit Barrel Shifter (Left Shift)
// Shifts input data by 0 to 3 positions based on shift control

module barrel_shifter (
    input  [3:0] data,   // Input data
    input  [1:0] shift,  // Shift amount (0 to 3)
    output reg [3:0] out // Shifted output
);

always @(*) begin
    // Default assignment to avoid latch inference
    out = 4'b0000;

    // Shift logic based on shift amount
    case (shift)
        2'b00: out = data;        // No shift
        2'b01: out = data << 1;   // Shift left by 1
        2'b10: out = data << 2;   // Shift left by 2
        2'b11: out = data << 3;   // Shift left by 3
    endcase
end

endmodule
