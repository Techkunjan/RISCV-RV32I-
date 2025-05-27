`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 18:34:52
// Design Name: 
// Module Name: mux3
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


module mux3 #(parameter WIDTH = 32)  // Default width: 32 bits
(
  input [WIDTH-1:0] d0, d1, d2,  // Three data inputs
  input [1:0] s,                 // 2-bit select signal
  output wire [WIDTH-1:0] y       // Output
);

  assign y = (s == 2'b00) ? d0 :  // Select d0 when s = 00
             (s == 2'b01) ? d1 :  // Select d1 when s = 01
             (s == 2'b10) ? d2 :  // Select d2 when s = 10
              32'bx;               // Undefined when s = 11

endmodule
