`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 17:49:12
// Design Name: 
// Module Name: flopr_tb
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


module flopr_tb;

  // Parameters
  parameter WIDTH = 32;  // Set the width of the register
  
  // Testbench signals
  reg clk, reset;
  reg [WIDTH-1:0] d;   // Data input
  wire [WIDTH-1:0] q;  // Data output

  // Instantiate the flopr module
  flopr #(WIDTH) uut (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
  );

  // Clock generation (50% duty cycle)
  always #5 clk = ~clk;  // Toggle clock every 5 ns (10 ns period)

  initial begin
    // Initialize signals
    clk = 0;
    reset = 1; d = 8'hAA; // Reset active, input = 0xAA
    #10 reset = 0;         // Deactivate reset
    #10 d = 8'h55;         // Change input
    #10 d = 8'hFF;         // Change input
    #10 d = 8'h00;         // Change input
    #20 reset = 1;         // Activate reset again
    #10 reset = 0;         // Deactivate reset
    #20 $finish;           // End simulation
  end

  // Monitor output values
  initial begin
    $monitor("Time: %0t | Reset: %b | d: %h | q: %h", $time, reset, d, q);
  end

endmodule
