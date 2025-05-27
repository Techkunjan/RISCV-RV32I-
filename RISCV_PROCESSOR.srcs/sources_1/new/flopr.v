 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 17:46:35
// Design Name: 
// Module Name: flopr
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
module flopr #(parameter WIDTH = 32) 
(
  input clk, reset,                   // Clock and reset inputs
  input [WIDTH-1:0] d,                // Data input of WIDTH bits
  output reg [WIDTH-1:0] q            // Data output (stored value)
);

  always @(posedge clk or posedge reset) begin
    if (reset) 
      q <= 0;  // Reset output to 0
    else 
      q <= d;  // Store input d into q on clock edge
  end

endmodule
