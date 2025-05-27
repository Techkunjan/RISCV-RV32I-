`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 23:20:29
// Design Name: 
// Module Name: digit_selector
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


module digit_selector(
    input [31:0] pc,
    input [2:0] sel, // Counter to select digit (0 to 7)
    output reg [3:0] hex_digit
);
    always @(*) begin
        case (sel)
            3'b000: hex_digit = pc[3:0];   // Least significant digit
            3'b001: hex_digit = pc[7:4];
            3'b010: hex_digit = pc[11:8];
            3'b011: hex_digit = pc[15:12];
            3'b100: hex_digit = pc[19:16];
            3'b101: hex_digit = pc[23:20];
            3'b110: hex_digit = pc[27:24];
            3'b111: hex_digit = pc[31:28]; // Most significant digit
            default: hex_digit = 4'b0000;
        endcase
    end
endmodule
