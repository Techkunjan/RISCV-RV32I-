`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 19:07:25
// Design Name: 
// Module Name: regfile_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module regfile_tb;

    // Testbench signals
    reg clk;
    reg we3;
    reg [4:0] a1, a2, a3;  // 5-bit register addresses
    reg [31:0] wd3;        // Write data
    wire [31:0] rd1, rd2;  // Read data

    // Instantiate the regfile module
    regfile uut (
        .clk(clk),
        .we3(we3),
        .a1(a1),
        .a2(a2),
        .a3(a3),
        .wd3(wd3),
        .rd1(rd1),
        .rd2(rd2)
    );

    // Clock generation (50MHz = 20ns period)
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        // Initialize signals
        clk = 0;
        we3 = 0;
        a1 = 0;
        a2 = 0;
        a3 = 0;
        wd3 = 0;

        // Apply test cases

        // Test 1: Write to register 5
        #15;  // Wait for some time
        we3 = 1;
        a3 = 5;
        wd3 = 32'hA5A5A5A5; // Writing value A5A5A5A5 to reg[5]
        #20;  // Wait for clock edge

        // Test 2: Read from register 5
        we3 = 0;
        a1 = 5; // Read from reg[5]
        a2 = 0; // Read from reg[0] (should be 0)
        #10;

        // Display results
        $display("Read from reg[5]: %h (Expected: A5A5A5A5)", rd1);
        $display("Read from reg[0]: %h (Expected: 00000000)", rd2);

        // Test 3: Write to register 10
        #10;
        we3 = 1;
        a3 = 10;
        wd3 = 32'hDEADBEEF; // Writing value DEADBEEF to reg[10]
        #20;

        // Test 4: Read from register 10
        we3 = 0;
        a1 = 10; // Read from reg[10]
        #10;
        $display("Read from reg[10]: %h (Expected: DEADBEEF)", rd1);

        // Test 5: Ensure register 0 remains 0 even if we try to write
        #10;
        we3 = 1;
        a3 = 0; // Writing to reg[0] (should not change)
        wd3 = 32'hFFFFFFFF;
        #20;

        // Read from reg[0] again
        we3 = 0;
        a1 = 0;
        #10;
        $display("Read from reg[0] after write attempt: %h (Expected: 00000000)", rd1);

        // End simulation
        #20;
        $finish;
    end

endmodule

