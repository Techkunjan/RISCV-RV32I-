`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 23:16:50
// Design Name: 
// Module Name: imem
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


module imem(
    input [31:0] a,
    output reg [31:0] rd
);

    reg [31:0] RAM [63:0]; // 64-word memory

    initial begin
        $readmemh("riscvtest.txt", RAM);
    end

    always @(*) begin
        rd = RAM[a[31:2]]; // Word-aligned read
    end

endmodule
