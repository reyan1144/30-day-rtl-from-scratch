// 2:1 Multiplexer (Behavioral style using if-else)
// Selects one of two inputs based on select signal

module mux_if (
    input  A,      // Input 0
    input  B,      // Input 1
    input  SEL,    // Select signal
    output reg Y   // Output (reg because assigned inside always block)
);

// Combinational always block
always @(*) begin
    // If SEL = 0 → Y = A
    // If SEL = 1 → Y = B
    if (SEL == 1'b0)
        Y = A;
    else
        Y = B;
end

endmodule
