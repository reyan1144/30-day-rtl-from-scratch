// 4:1 Multiplexer (Gate-level implementation)
// Selects one of four inputs (i0–i3) based on select lines s1 and s2

module mux4_to_1 (
    output out,   // Output of the multiplexer
    input  i0,    // Input 0
    input  i1,    // Input 1
    input  i2,    // Input 2
    input  i3,    // Input 3
    input  s1,    // Select line MSB
    input  s2     // Select line LSB
);

// Logic implementation using AND, OR, NOT operations
// Each term corresponds to one select condition:

// s1=0, s2=0 → out = i0
// s1=0, s2=1 → out = i1
// s1=1, s2=1 → out = i2
// s1=1, s2=0 → out = i3

assign out = (~s1 & ~s2 & i0) |   // Select i0
             (~s1 &  s2 & i1) |   // Select i1
             ( s1 &  s2 & i2) |   // Select i2
             ( s1 & ~s2 & i3);    // Select i3

endmodule
