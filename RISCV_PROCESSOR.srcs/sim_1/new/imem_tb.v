`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 23:22:39
// Design Name: 
// Module Name: imem_tb
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

module imem_tb;
    
    // Testbench signals
    reg [31:0] a;
    wire [31:0] rd;
    
    // Instantiate the instruction memory module
    imem uut (
        .a(a),
        .rd(rd)
    );
    
    // Test sequence
    initial begin
        // Initialize address
        a = 32'h00000000; #10;
        a = 32'h00000004; #10;
        a = 32'h00000008; #10;
        a = 32'h0000000C; #10;
        a = 32'h00000010; #10;
        a = 32'h00000014; #10;
        a = 32'h00000018; #10;
        a = 32'h0000001C; #10;
        a = 32'h00000020; #10;
        
        // Stop simulation
        $finish;
    end
    
    // Monitor output values
    initial begin
        $monitor("Time=%0t | Address=%h | Read Data=%h", $time, a, rd);
    end
    
endmodule
