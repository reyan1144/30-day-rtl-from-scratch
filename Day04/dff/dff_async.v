// D Flip-Flop with Asynchronous Reset
// Output updates on rising edge of clock or immediately on reset

module d_ff1 (
    input clk,   // Clock signal
    input rst,   // Asynchronous reset (active high)
    input d,     // Data input
    output reg q // Output (stored value)
);

// Sequential block triggered on:
// 1. Rising edge of clock
// 2. Rising edge of reset (asynchronous behavior)
always @(posedge clk or posedge rst) begin

    // If reset is asserted → clear output immediately
    if (rst)
        q <= 1'b0;
    else
        // Otherwise, store input data on clock edge
        q <= d;
end

endmodule
