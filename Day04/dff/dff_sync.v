// D Flip-Flop with Synchronous Reset
// Output updates on rising edge of clock

module d_ff (
    input clk,   // Clock signal
    input rst,   // Synchronous reset (active high)
    input d,     // Data input
    output reg q // Output (stored value)
);

// Sequential block triggered on rising edge of clock
always @(posedge clk) begin
    // If reset is asserted, clear output
    if (rst)
        q <= 1'b0;
    else
        // Otherwise, store input data
        q <= d;
end

endmodule
