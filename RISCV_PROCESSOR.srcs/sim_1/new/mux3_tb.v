`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 18:36:27
// Design Name: 
// Module Name: mux3_tb
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


module mux3_tb;

  parameter WIDTH = 32;  

  // Testbench signals
  reg [WIDTH-1:0] d0, d1, d2;  // Inputs
  reg [1:0] s;                 // Select signal
  wire [WIDTH-1:0] y;          // Output

  // Instantiate the mux3 module
  mux3 #(WIDTH) uut (
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .s(s),
    .y(y)
  );

  initial begin
    // Monitor changes
    $monitor("Time=%0t | s=%b | d0=%b | d1=%b | d2=%b | y=%b", 
             $time, s, d0, d1, d2, y);

    // Test Case 1: s = 00 (Expect y = d0)
    d0 = 8'b00001111; d1 = 8'b11110000; d2 = 8'b10101010; s = 2'b00;
    #10;
    
    // Test Case 2: s = 01 (Expect y = d1)
    s = 2'b01;
    #10;

    // Test Case 3: s = 10 (Expect y = d2)
    s = 2'b10;
    #10;
    
    // Test Case 4: s = 11 (Should still select d2)
    s = 2'b11;
    #10;

    // End simulation
    $finish;
  end

endmodule
