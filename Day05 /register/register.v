// 4-bit Register with Synchronous Reset and Enable
// Stores data on rising edge of clock when enable is high

module register (
    input clk,              // Clock signal
    input rst,              // Synchronous reset (active high)
    input en,               // Enable signal
    input  [3:0] d,         // 4-bit data input
    output reg [3:0] q      // 4-bit stored output
);

// Sequential block triggered on rising edge of clock
always @(posedge clk) begin
    if (rst)
        q <= 4'b0000;       // Reset output to 0
    else if (en)
        q <= d;             // Load input data when enable is high
    // else → retain previous value
end

endmodule
