// 2:1 Multiplexer (Behavioral style using case statement)
// Selects one of two inputs based on select signal

module mux_case (
    input  A,      // Input 0
    input  B,      // Input 1
    input  SEL,    // Select signal
    output reg Y   // Output (reg because assigned inside always block)
);

// Combinational always block
always @(*) begin
    case (SEL)
        1'b0: Y = A;   // If SEL = 0 → select A
        1'b1: Y = B;   // If SEL = 1 → select B
        default: Y = 1'b0; // Default case (good practice)
    endcase
end

endmodule
