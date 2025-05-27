`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 18:00:43
// Design Name: 
// Module Name: flopenr
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


module flopenr #(parameter WIDTH = 32)  // Default width: 8 bits
(
  input clk, reset, en,               // Clock, Reset, and Enable signals
  input [WIDTH-1:0] d,                // Data input
  output reg [WIDTH-1:0] q            // Data output (register)
);

  always @(posedge clk or posedge reset) begin
    if (reset) 
      q <= 0;  // Reset the register to 0
    else if (en) 
      q <= d;  // Update q with d only if enable (en) is high
  end

endmodule
