`timescale 1ns/1ps

// Testbench for Register File

module tb_register_file;

reg clk, rst, we;
reg [1:0] w_addr, r_addr;
reg [3:0] w_data;
wire [3:0] r_data;

// Instantiate DUT
register_file dut (
    .clk(clk),
    .rst(rst),
    .we(we),
    .w_addr(w_addr),
    .r_addr(r_addr),
    .w_data(w_data),
    .r_data(r_data)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    // Dump waveform
    $dumpfile("register_file.vcd");
    $dumpvars(0, dut);

    // Reset
    rst = 1; we = 0;
    #12 rst = 0;

    // Write values
    we = 1;
    w_addr = 2'b00; w_data = 4'b1010; #10;
    w_addr = 2'b01; w_data = 4'b1100; #10;
    w_addr = 2'b10; w_data = 4'b0011; #10;

    // Read values
    we = 0;
    r_addr = 2'b00; #10;
    r_addr = 2'b01; #10;
    r_addr = 2'b10; #10;

    #20 $finish;
end

endmodule
