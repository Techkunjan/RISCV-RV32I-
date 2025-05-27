`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 17:28:18
// Design Name: 
// Module Name: extend_tb
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
module extend_tb;

// Testbench signals
  reg [31:7] instr;
  reg [1:0] immsrc;
  wire [31:0] immext;

  // Instantiate the extend module
  extend uut (
    .instr(instr),
    .immsrc(immsrc),
    .immext(immext)
  );

  initial begin
    // Monitor the signals
    $monitor("Time: %0t | immsrc: %b | instr: %h | immext: %h", 
              $time, immsrc, instr, immext);

    // Test I-type instruction (Example: ADDI x1, x2, -5)
    instr = 25'hFFFFF; // 12-bit immediate = -5 (signed extension should occur)
    immsrc = 2'b00;
    #10;

    // Test S-type instruction (Example: SW x1, -12(x2))
    instr = 25'hF00F0; // Simulating a possible S-type encoding
    immsrc = 2'b01;
    #10;

    // Test B-type instruction (Example: BEQ x1, x2, offset -16)
    instr = 25'h7F80E; // Example encoding for a branch
    immsrc = 2'b10;
    #10;

    // Test J-type instruction (Example: JAL x1, 2048)
    instr = 25'h80050; // Example encoding for J-type
    immsrc = 2'b11;
    #10;

    // End simulation
    $finish;
  end

endmodule
