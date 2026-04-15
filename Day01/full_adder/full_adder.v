// Full Adder Module
// Adds three 1-bit inputs: A, B, and Cin (carry-in)
// Produces SUM and Cout (carry-out)

module full_adder (
    input  A,       // First input bit
    input  B,       // Second input bit
    input  Cin,     // Carry input from previous stage
    output SUM,     // Sum output
    output Cout     // Carry output
);

// Combinational logic (no clock involved)

// Sum is XOR of all three inputs
assign SUM = A ^ B ^ Cin;

// Carry-out is generated if any two inputs are high
assign Cout = (A & B) | (A & Cin) | (B & Cin);

endmodule
