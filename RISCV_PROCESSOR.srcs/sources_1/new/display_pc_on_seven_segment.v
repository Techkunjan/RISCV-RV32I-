`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 23:25:13
// Design Name: 
// Module Name: display_pc_on_seven_segment
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


module display_pc_on_seven_segment(
    input clk,
    input reset,
    input [31:0] pc,
    output [6:0] seg
);
    wire [3:0] hex_digit;
    wire [2:0] sel;
    
    digit_counter counter(.clk(clk), .reset(reset), .sel(sel));
    digit_selector selector(.pc(pc), .sel(sel), .hex_digit(hex_digit));
    seven_segment_display decoder(.hex_digit(hex_digit), .seg(seg));
endmodule
