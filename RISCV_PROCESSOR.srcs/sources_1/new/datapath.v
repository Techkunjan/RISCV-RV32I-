`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 19:51:53
// Design Name: 
// Module Name: datapath
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

module datapath(
    input clk, reset,
    input [1:0] ResultSrc,
    input PCSrc, ALUSrc,
    input RegWrite,
    input [1:0] ImmSrc,
    input [2:0] ALUControl,
    output Zero,
    output [31:0] PC,
    input [31:0] Instr,
    output [31:0] ALUResult, WriteData,
    input [31:0] ReadData
);

    wire [31:0] PCNext, PCPlus4, PCTarget;
    wire [31:0] ImmExt;
    wire [31:0] SrcA, SrcB;
    wire [31:0] Result;

    // Next PC logic
    flopr pcreg (.clk(clk), .reset(reset), .d(PCNext), .q(PC));
    adder pcadd4 (.a(PC), .b(32'd4), .y(PCPlus4));
    adder pcaddbranch (.a(PC), .b(ImmExt), .y(PCTarget));
    mux2 pcmux (.d0(PCPlus4), .d1(PCTarget), .s(PCSrc), .y(PCNext));

    // Register file logic
    regfile rf (
        .clk(clk), 
        .we3(RegWrite), 
        .a1(Instr[19:15]), 
        .a2(Instr[24:20]), 
        .a3(Instr[11:7]), 
        .wd3(Result), 
        .rd1(SrcA), 
        .rd2(WriteData)
    );
    extend ext (.instr(Instr[31:7]), .immsrc(ImmSrc), .immext(ImmExt));

    // ALU logic
    mux2 srcbmux (.d0(WriteData), .d1(ImmExt), .s(ALUSrc), .y(SrcB));
    alu alu (.SrcA(SrcA), .SrcB(SrcB), .ALUControl(ALUControl), .ALUResult(ALUResult), .Zero(Zero));
    mux3 resultmux (.d0(ALUResult), .d1(ReadData), .d2(PCPlus4), .s(ResultSrc), .y(Result));

endmodule
