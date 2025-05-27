`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 19:42:06
// Design Name: 
// Module Name: alu_tb
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


module alu_tb;

    // Testbench signals
    reg [2:0] ALUControl;
    reg [31:0] SrcA, SrcB;
    wire [31:0] ALUResult;
    wire Zero;

    // Instantiate the ALU module
    alu uut (
        .ALUControl(ALUControl),
        .SrcA(SrcA),
        .SrcB(SrcB),
        .ALUResult(ALUResult),
        .Zero(Zero)
    );

    initial begin
        // Monitor signals
        $monitor("Time: %0t | ALUControl: %b | SrcA: %d | SrcB: %d | ALUResult: %d", 
                 $time, ALUControl, SrcA, SrcB, ALUResult);
        
        // Test ADD (SrcA + SrcB)
        SrcA = 32'd10; SrcB = 32'd5; ALUControl = 3'b000;
        #10;
        
        // Test SUB (SrcA - SrcB)
        SrcA = 32'd15; SrcB = 32'd4; ALUControl = 3'b001;
        #10;
        
        // Test AND (SrcA & SrcB)
        SrcA = 32'hFF00FF00; SrcB = 32'h0F0F0F0F; ALUControl = 3'b010;
        #10;

        // Test OR (SrcA | SrcB)
        SrcA = 32'h12345678; SrcB = 32'h87654321; ALUControl = 3'b011;
        #10;

        // Test SLT (SrcA < SrcB)
        SrcA = 32'd5; SrcB = 32'd10; ALUControl = 3'b100;
        #10;
        
        // Test SLT (SrcA > SrcB)
        SrcA = 32'd20; SrcB = 32'd10; ALUControl = 3'b101;
        #10;

        // End simulation
        $finish;
    end

endmodule
