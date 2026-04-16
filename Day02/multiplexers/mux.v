// 2:1 Multiplexer
// Selects one of two inputs based on select signal

module mux_2to1 (
    input A,     // Input 0
    input B,     // Input 1
    input SEL,   // Select signal
    output Y     // Output
);

// If SEL = 0 → Y = A
// If SEL = 1 → Y = B
assign Y = (SEL) ? B : A;

endmodule
