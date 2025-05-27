`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2025 21:39:50
// Design Name: 
// Module Name: riscvsingle
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


module riscvsingle(
    input wire clk,
    input wire reset,
    output wire [31:0] PC,
    input wire [31:0] Instr,
    output wire MemWrite,
    output wire [31:0] ALUResult,
    output wire [31:0] WriteData,
    input wire [31:0] ReadData
);
    wire ALUSrc, RegWrite, Jump, Zero;
    wire [1:0] ResultSrc, ImmSrc;
    wire [2:0] ALUControl;
  
    controller c(
        .op(Instr[6:0]),
        .funct3(Instr[14:12]),
        .funct7b5(Instr[30]),
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

    datapath dp(
        .clk(clk),
        .reset(reset),
        .ResultSrc(ResultSrc),
        .PCSrc(PCSrc),
        .ALUSrc(ALUSrc),
        .RegWrite(RegWrite),
        .ImmSrc(ImmSrc),
        .ALUControl(ALUControl),
        .Zero(Zero),
        .PC(PC),
        .Instr(Instr),
        .ALUResult(ALUResult),
        .WriteData(WriteData),
        .ReadData(ReadData)
    );

endmodule
