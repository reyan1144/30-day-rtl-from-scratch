// Half Adder Module
// Performs addition of two 1-bit inputs
// Output: sum and carry

module half_adder(
    input a,        // First input bit
    input b,        // Second input bit
    output sum,     // Sum output (XOR of inputs)
    output carry    // Carry output (AND of inputs)
);

// Sum is XOR of inputs
assign sum = a ^ b;

// Carry is AND of inputs
assign carry = a & b;

endmodule
