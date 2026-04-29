// D Flip-Flop with Enable and Synchronous Reset
// Output updates only when enable is high

module dff_en (
    input clk,    // Clock signal
    input rst,    // Synchronous reset (active high)
    input d,      // Data input
    input en,     // Enable signal
    output reg q  // Output (stored value)
);

// Sequential block triggered on rising edge of clock
always @(posedge clk) begin

    // If reset is asserted → clear output
    if (rst)
        q <= 1'b0;

    // If enable is high → load new data
    else if (en)
        q <= d;

    // If enable is low → retain previous value (no assignment needed)
end

endmodule
