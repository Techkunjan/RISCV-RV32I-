`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 23:50:24
// Design Name: 
// Module Name: maindec_tb
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


module maindec_tb;
    reg [6:0] op;
    wire [1:0] ResultSrc;
    wire MemWrite;
    wire Branch, ALUSrc;
    wire RegWrite, Jump;
    wire [1:0] ImmSrc;
    wire [1:0] ALUOp;

    // Instantiate the module
    maindec uut (
        .op(op),
        .ResultSrc(ResultSrc),
        .MemWrite(MemWrite),
        .Branch(Branch),
        .ALUSrc(ALUSrc),
        .RegWrite(RegWrite),
        .Jump(Jump),
        .ImmSrc(ImmSrc),
        .ALUOp(ALUOp)
    );

    initial begin
        $monitor("Time=%0t | op=%b | RegWrite=%b | ImmSrc=%b | ALUSrc=%b | MemWrite=%b | ResultSrc=%b | Branch=%b | ALUOp=%b | Jump=%b", 
                  $time, op, RegWrite, ImmSrc, ALUSrc, MemWrite, ResultSrc, Branch, ALUOp, Jump);
        
        // Apply test cases
        op = 7'b0000011; #10; // lw
        op = 7'b0100011; #10; // sw
        op = 7'b0110011; #10; // R-type
        op = 7'b1100011; #10; // beq
        op = 7'b0010011; #10; // I-type ALU
        op = 7'b1101111; #10; // jal
        op = 7'b1111111; #10; // default case (invalid opcode)
        
        $finish;
    end
endmodule
