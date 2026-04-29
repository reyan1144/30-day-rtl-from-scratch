// 4x4 Register File
// 4 registers, each 4-bit wide

module register_file (
    input clk,                     // Clock
    input rst,                     // Synchronous reset
    input we,                      // Write enable
    input [1:0] w_addr,            // Write address (2-bit → 4 locations)
    input [1:0] r_addr,            // Read address
    input [3:0] w_data,            // Data to write
    output reg [3:0] r_data        // Data read
);

reg [3:0] reg_array [3:0];         // 4 registers of 4 bits each
integer i;

// Write operation
always @(posedge clk) begin
    if (rst) begin
        // Reset all registers
        for (i = 0; i < 4; i = i + 1)
            reg_array[i] <= 4'b0000;
    end
    else if (we) begin
        reg_array[w_addr] <= w_data; // Write data to selected register
    end
end

// Read operation (combinational)
always @(*) begin
    r_data = reg_array[r_addr];      // Read selected register
end

endmodule
