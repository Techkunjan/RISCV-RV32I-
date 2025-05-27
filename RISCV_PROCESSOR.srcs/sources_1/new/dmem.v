`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 23:30:31
// Design Name: 
// Module Name: dmem
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
module dmem(
    input clk, we,
    input [31:0] a, wd,
    output reg [31:0] rd
);
    
    reg [31:0] RAM[63:0]; // 64 words of 32-bit memory
    
    // Initialize memory from file
    initial begin
        $readmemh("riscdata.txt", RAM); // Load hex values from riscdata.txt
    end
    
    // Read operation (combinational)
    always @(*) begin
        rd = RAM[a[31:2]]; // Word-aligned memory access
    end
    
    // Write operation (sequential)
    always @(posedge clk) begin
        if (we) 
            RAM[a[31:2]] <= wd;
    end
    
endmodule
