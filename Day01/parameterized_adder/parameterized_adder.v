`timescale 1ns/1ps   // Time unit = 1ns, precision = 1ps

// Parameterized Adder Module
// Adds two N-bit inputs (WIDTH can be changed)
// Produces N-bit SUM and 1-bit carry-out

module parameterized_adder #(parameter WIDTH = 4)
(
    input  [WIDTH-1:0] A,   // First input operand (N-bit)
    input  [WIDTH-1:0] B,   // Second input operand (N-bit)
    output [WIDTH-1:0] SUM, // Result of addition (N-bit)
    output COUT             // Carry-out (1-bit)
);

// Perform addition
// {COUT, SUM} is a concatenation:
//  COUT gets the MSB (overflow bit)
//  SUM gets the remaining WIDTH bits
assign {COUT, SUM} = A + B;

endmodule
