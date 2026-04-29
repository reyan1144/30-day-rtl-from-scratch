// 4-bit Shift Register (Left Shift)
// Shifts data left on every clock when enable is high

module shift_register (
    input clk,              // Clock signal
    input rst,              // Synchronous reset
    input en,               // Enable signal
    input d,                // Serial input
    output reg [3:0] q      // 4-bit output
);

always @(posedge clk) begin
    if (rst)
        q <= 4'b0000;           // Clear register
    else if (en)
        q <= {q[2:0], d};       // Shift left, insert new bit at LSB
end

endmodule
