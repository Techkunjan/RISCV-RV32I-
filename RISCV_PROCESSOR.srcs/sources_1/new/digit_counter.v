`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 23:23:08
// Design Name: 
// Module Name: digit_counter
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


module digit_counter(
    input clk,
    input reset,
    output reg [2:0] sel
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            sel <= 3'b000;
        else
            sel <= sel + 1;
    end
endmodule
