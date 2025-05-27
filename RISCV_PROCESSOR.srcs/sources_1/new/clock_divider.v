`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2025 15:42:39
// Design Name: 
// Module Name: clock_divider
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


//module clock_divider (
//    input wire clk,       // 100 MHz clock input
//    input wire reset,     // Reset button
//    output reg clk_out    // 1 Hz clock output
//);
//    reg [26:0] count; // 27-bit counter (since 2^27 > 100M)

//    always @(posedge clk or posedge reset) begin
//        if (reset) begin
//            count <= 0;
//            clk_out <= 0;
//        end 
//        else if (count == 50000000) begin // Toggle every 50M cycles
//            count <= 0;
//            clk_out <= ~clk_out;
//        end 
//        else begin
//            count <= count + 1;
//        end
//    end
//endmodule
module clock_divider(clock_in,clock_out );
input clock_in; // input clock on FPGA
output reg clock_out; // output clock after dividing the input clock by divisor
reg[27:0] counter=28'd0;
parameter DIVISOR = 28'd100_000_000; // As the frequency of the Boolean is 100 MHz
always @(posedge clock_in)
begin
counter <= counter + 28'd1;
if(counter>=(DIVISOR-1)) counter <= 28'd0;
clock_out <=(counter<DIVISOR/2)?1'b1:1'b0;
end
endmodule
