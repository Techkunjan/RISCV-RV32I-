`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 18:26:05
// Design Name: 
// Module Name: mux2
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


module mux2 #(parameter WIDTH = 32)  // Default width: 32 bits
(
  input [WIDTH-1:0] d0, d1,  // Two data inputs
  input s,                   // Select signal
  output wire [WIDTH-1:0] y   // Output
);

  assign y = s ? d1 : d0;  // If s=1, y=d1; otherwise, y=d0

endmodule
