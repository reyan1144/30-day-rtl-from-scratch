// 8:3 Priority Encoder
// Gives priority to highest-order input bit (i[7] highest priority)
// Outputs encoded value and a valid signal

module priority_encoder (
    input  [7:0] i,     // 8-bit input
    output reg [2:0] o, // Encoded output (3-bit)
    output reg v        // Valid signal (1 if any input is high)
);

always @(*) begin
    // Default assignments to avoid latch inference
    o = 3'b000;
    v = 1'b0;

    // Check inputs from highest priority (i[7]) to lowest (i[0])
    if (i[7]) begin
        o = 3'b111;  // Index of highest active input
        v = 1'b1;
    end
    else if (i[6]) begin
        o = 3'b110;
        v = 1'b1;
    end
    else if (i[5]) begin
        o = 3'b101;
        v = 1'b1;
    end
    else if (i[4]) begin
        o = 3'b100;
        v = 1'b1;
    end
    else if (i[3]) begin
        o = 3'b011;
        v = 1'b1;
    end
    else if (i[2]) begin
        o = 3'b010;
        v = 1'b1;
    end
    else if (i[1]) begin
        o = 3'b001;
        v = 1'b1;
    end
    else if (i[0]) begin
        o = 3'b000;
        v = 1'b1;
    end
    // If no input is high → v remains 0 (invalid)
end

endmodule
