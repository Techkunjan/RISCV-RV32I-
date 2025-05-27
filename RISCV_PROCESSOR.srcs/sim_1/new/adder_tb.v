`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 10:51:50
// Design Name: 
// Module Name: adder_tb
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
module adder_tb;

  // Inputs
  reg [31:0] a;
  reg [31:0] b;
  
  // Outputs
  wire [31:0] y;
  
  // Instantiate the Unit Under Test (UUT)
  adder uut (
    .a(a),
    .b(b),
    .y(y)
  );

  initial begin
    // Initialize inputs
    a = 32'h0;
    b = 32'h0;

    // Test cases
    $display("Test Case 1: a = 0, b = 0");
    #10;
    if (y === 32'h0) $display("  PASS: y = %h", y);
    else $display("  FAIL: y = %h (expected %h)", y, 32'h0);

    a = 32'h1;
    b = 32'h1;
    $display("Test Case 2: a = 1, b = 1");
    #10;
    if (y === 32'h2) $display("  PASS: y = %h", y);
    else $display("  FAIL: y = %h (expected %h)", y, 32'h2);

    a = 32'hFFFFFFFF;
    b = 32'h1;
    $display("Test Case 3: a = FFFFFFFF, b = 1 (Overflow)");
    #10;
    if (y === 32'h0) $display("  PASS: y = %h", y);
    else $display("  FAIL: y = %h (expected %h)", y, 32'h0);

    a = 32'h12345678;
    b = 32'h87654321;
    $display("Test Case 4: a = 12345678, b = 87654321");
    #10;
    if (y === 32'h99999999) $display("  PASS: y = %h", y);
    else $display("  FAIL: y = %h (expected %h)", y, 32'h99999999);

    a = 32'h80000000;
    b = 32'h80000000;
    $display("Test Case 5: a = 80000000, b = 80000000 (Negative Addition)");
    #10;
    if (y === 32'h0) $display("  PASS: y = %h", y);
    else $display("  FAIL: y = %h (expected %h)", y, 32'h0);

    a = 32'hFFFFFFFE;
    b = 32'h1;
    $display("Test Case 6: a = FFFFFFFE, b = 1");
    #10;
    if (y === 32'hFFFFFFFF) $display("  PASS: y = %h", y);
    else $display("  FAIL: y = %h (expected %h)", y, 32'hFFFFFFFF);
    $finish;
  end
endmodule