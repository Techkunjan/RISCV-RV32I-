`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 19:40:16
// Design Name: 
// Module Name: alu
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


module alu (
    input [2:0] ALUControl,  // ALU control signal
    input [31:0] SrcA, SrcB, // ALU source operands
    output reg [31:0] ALUResult, // ALU output
    output reg Zero  // Zero flag
);

always @(*) begin
    case (ALUControl)
        3'b000: ALUResult = SrcA + SrcB;  // ADD
        3'b001: ALUResult = SrcA - SrcB;  // SUB
        3'b010: ALUResult = SrcA & SrcB;  // AND
        3'b011: ALUResult = SrcA | SrcB;  // OR
        3'b101: ALUResult = (SrcA < SrcB) ? 32'd1 : 32'd0; // SLT (Set Less Than, Unsigned)
        default: ALUResult = 32'hxxxxxxxx; // Default case
    endcase

    // Set Zero flag
    Zero = (ALUResult == 32'd0);
end

endmodule

