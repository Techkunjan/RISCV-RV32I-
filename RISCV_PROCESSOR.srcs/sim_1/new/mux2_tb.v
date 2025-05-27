`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 18:27:32
// Design Name: 
// Module Name: mux2_tb
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



module mux2_tb;

  parameter WIDTH = 32;  

  // Testbench signals
  reg [WIDTH-1:0] d0, d1;
  reg s;
  wire [WIDTH-1:0] y;

  // Instantiate the mux2 module
  mux2 #(WIDTH) uut (
    .d0(d0),
    .d1(d1),
    .s(s),
    .y(y)
  );

  initial begin
    // Monitor changes
    $monitor("Time=%0t | s=%b | d0=%b | d1=%b | y=%b", $time, s, d0, d1, y);

    // Test Case 1: s = 0 (Expect y = d0)
    d0 = 8'b00001111; d1 = 8'b11110000; s = 0;
    #10;
    
    // Test Case 2: s = 1 (Expect y = d1)
    s = 1;
    #10;

    // Test Case 3: Change d0 and d1, s = 0
    d0 = 8'b10101010; d1 = 8'b01010101; s = 1;
    #10;
    
    // Test Case 4: s = 1 (Expect y = d1)
    s = 1;
    #10;

    // End simulation
    $finish;
  end

endmodule
