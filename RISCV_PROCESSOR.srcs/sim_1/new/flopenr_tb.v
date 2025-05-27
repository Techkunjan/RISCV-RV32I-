`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 18:02:15
// Design Name: 
// Module Name: flopenr_tb
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



module flopenr_tb;

  parameter WIDTH = 8;  // Define the width for testing

  // Testbench Signals
  reg clk, reset, en;
  reg [WIDTH-1:0] d;
  wire [WIDTH-1:0] q;

  // Instantiate the flopenr module
  flopenr #(WIDTH) uut (
    .clk(clk),
    .reset(reset),
    .en(en),
    .d(d),
    .q(q)
  );

  // Clock Generation (50 MHz = 20 ns period)
  always #10 clk = ~clk;

  initial begin
    // Initialize signals
    clk = 0;
    reset = 1;
    en = 0;
    d = 8'b00000000;

    // Apply reset
    #20 reset = 0;

    // Test Case 1: Enable = 1, d changes -> q should update
    #10 en = 1; d = 8'b10101010;
    #20 d = 8'b11001100;

    // Test Case 2: Enable = 0 -> q should hold value
    #20 en = 0; d = 8'b11110000;

    // Test Case 3: Reset -> q should be 0
    #20 reset = 1;
    #10 reset = 0;

    // Test Case 4: Enable = 1, d changes again -> q should update
    #10 en = 1; d = 8'b00001111;
    #20 d = 8'b11111111;

    // End simulation
    #20 $finish;
  end

  // Monitor values
  initial begin
    $monitor("Time=%0t | clk=%b | reset=%b | en=%b | d=%b | q=%b", 
              $time, clk, reset, en, d, q);
  end

endmodule
