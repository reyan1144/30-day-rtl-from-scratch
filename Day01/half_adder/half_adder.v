// Half Adder Module
// Adds two 1-bit inputs and produces sum and carry

module half_adder(
    input A,        // First input bit
    input B,        // Second input bit
    output SUM,     // Sum output (A XOR B)
    output CARRY    // Carry output (A AND B)
);

// Sum is generated using XOR operation
assign SUM = A ^ B;

// Carry is generated using AND operation
assign CARRY = A & B;

endmodule
