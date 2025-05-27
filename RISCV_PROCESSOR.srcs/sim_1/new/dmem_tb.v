`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 23:31:58
// Design Name: 
// Module Name: dmem_tb
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


module dmem_tb;
    
    // Testbench signals
    reg clk, we;
    reg [31:0] a, wd;
    wire [31:0] rd;
    
    // Instantiate the data memory module
    dmem uut (
        .clk(clk), 
        .we(we), 
        .a(a), 
        .wd(wd), 
        .rd(rd)
    );
    
    // Clock generation
    always #5 clk = ~clk; // 10 ns clock cycle
    
    // Test sequence
    initial begin
        // Initialize signals
        clk = 0; we = 0; a = 0; wd = 0;
        
        // Write data to memory
        #10; we = 1; a = 32'h00000008; wd = 32'hAABBCCDD;
        #10; we = 1; a = 32'h0000000C; wd = 32'h11223344;
        #10; we = 0; // Disable write
        
        // Read data from memory
        #10; a = 32'h00000008;
        #10; a = 32'h0000000C;
        
        // Stop simulation
        #20;
        $finish;
    end
    
    // Monitor output values
    initial begin
        $monitor("Time=%0t | WE=%b | Address=%h | Write Data=%h | Read Data=%h", $time, we, a, wd, rd);
    end
    
endmodule
