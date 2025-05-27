 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2025 21:44:24
// Design Name: 
// Module Name: riscvsingle_tb
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



`timescale 1ns / 1ps

module riscvsingle_tb;
    // Testbench signals
    reg clk;
    reg reset;
    wire [31:0] PC;
    reg [31:0] Instr;
    wire MemWrite;
    wire [31:0] ALUResult;
    wire [31:0] WriteData;
    reg [31:0] ReadData;

    // Instantiate the RISC-V processor
    riscvsingle uut (
        .clk(clk),
        .reset(reset),
        .PC(PC),
        .Instr(Instr),
        .MemWrite(MemWrite),
        .ALUResult(ALUResult),
        .WriteData(WriteData),
        .ReadData(ReadData)
    );

    // Clock generation
    always #5 clk = ~clk; // 10 ns clock period

    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        Instr = 32'b0;
        ReadData = 32'b0;

        // Apply reset
        #10 reset = 0;
        
        // Test 1: ADD instruction (ADD x1, x2, x3)
        Instr = 32'b00000000001100010000000010110011; // ADD x1, x2, x3
        #10;
        
        // Test 2: SUB instruction (SUB x4, x5, x6)
        Instr = 32'b01000000011000101000001010110011; // SUB x4, x5, x6
        #10;
        
        // Test 3: Load instruction (LW x7, 0(x8))
        Instr = 32'b00000000000001000010001100000011; // LW x7, 0(x8)
        ReadData = 32'hDEADBEEF; // Simulated memory data
        #10;
        
        // Test 4: Store instruction (SW x9, 4(x10))
        Instr = 32'b00000000100101010010010100100011; // SW x9, 4(x10)
        #10;
        
        // Test 5: BEQ instruction (BEQ x11, x12, label)
        Instr = 32'b00000000011001011000011001100011; // BEQ x11, x12, label
        #10;
        
        // Test 6: Jump instruction (JAL x1, label)
        Instr = 32'b00000000000000000000000001101111; // JAL x1, label
        #10;
        
        // End simulation
        #50 $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | PC=%h | Instr=%h | ALUResult=%h | WriteData=%h | MemWrite=%b", 
                 $time, PC, Instr, ALUResult, WriteData, MemWrite);
    end

endmodule
