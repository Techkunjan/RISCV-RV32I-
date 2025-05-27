`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2025 21:27:43
// Design Name: 
// Module Name: controller_tb
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


module controller_tb;
    // Inputs
    reg [6:0] op;
    reg [2:0] funct3;
    reg funct7b5;
    reg Zero;
    
    // Outputs
    wire [1:0] ResultSrc;
    wire MemWrite;
    wire PCSrc, ALUSrc;
    wire RegWrite, Jump;
    wire [1:0] ImmSrc;
    wire [2:0] ALUControl;
    
    // Instantiate the controller module
    controller uut (
        .op(op),
        .funct3(funct3),
        .funct7b5(funct7b5),
        .Zero(Zero),
        .ResultSrc(ResultSrc),
        .MemWrite(MemWrite),
        .PCSrc(PCSrc),
        .ALUSrc(ALUSrc),
        .RegWrite(RegWrite),
        .Jump(Jump),
        .ImmSrc(ImmSrc),
        .ALUControl(ALUControl)
    );
    
    // Test sequence
    initial begin
        // Initialize inputs
        Zero = 0;
        
        // Test Case 1: R-type Instruction (ADD, opcode = 0110011)
        op = 7'b0110011;
        funct3 = 3'b000;
        funct7b5 = 1'b0;
        #10;
        
        // Test Case 2: I-type Instruction (ADDI, opcode = 0010011)
        op = 7'b0010011;
        funct3 = 3'b000;
        funct7b5 = 1'b0;
        #10;
        
        // Test Case 3: Load Instruction (LW, opcode = 0000011)
        op = 7'b0000011;
        funct3 = 3'b010;
        funct7b5 = 1'b0;
        #10;
        
        // Test Case 4: Store Instruction (SW, opcode = 0100011)
        op = 7'b0100011;
        funct3 = 3'b010;
        funct7b5 = 1'b0;
        #10;
        
        // Test Case 5: Branch Instruction (BEQ, opcode = 1100011)
        op = 7'b1100011;
        funct3 = 3'b000;
        funct7b5 = 1'b0;
        Zero = 1;
        #10;
        
        // Test Case 6: Jump Instruction (JAL, opcode = 1101111)
        op = 7'b1101111;
        funct3 = 3'b000;
        funct7b5 = 1'b0;
        #10;
        
        // End simulation
        $stop;
    end
    
endmodule
