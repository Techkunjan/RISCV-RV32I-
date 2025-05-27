`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 23:42:10
// Design Name: 
// Module Name: aludec_tb
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

module aludec_tb;
    
    // Testbench signals
    reg opb5;
    reg [2:0] funct3;
    reg funct7b5;
    reg [1:0] ALUOp;
    wire [2:0] ALUControl;
    
    // Instantiate the ALU decoder module
    aludec uut (
        .opb5(opb5), 
        .funct3(funct3), 
        .funct7b5(funct7b5), 
        .ALUOp(ALUOp), 
        .ALUControl(ALUControl)
    );
    
    // Test sequence
    initial begin
        // Monitor values
        $monitor("Time=%0t | ALUOp=%b | funct3=%b | funct7b5=%b | opb5=%b | ALUControl=%b", 
                 $time, ALUOp, funct3, funct7b5, opb5, ALUControl);
        
        // Test addition
        ALUOp = 2'b00; funct3 = 3'b000; funct7b5 = 0; opb5 = 0;
        #10;
        
        // Test subtraction (R-type)
        ALUOp = 2'b10; funct3 = 3'b000; funct7b5 = 1; opb5 = 1;
        #10;
        
        // Test SLT
        ALUOp = 2'b10; funct3 = 3'b010; funct7b5 = 0; opb5 = 0;
        #10;
        
        // Test OR
        ALUOp = 2'b10; funct3 = 3'b110; funct7b5 = 0; opb5 = 0;
        #10;
        
        // Test AND
        ALUOp = 2'b10; funct3 = 3'b111; funct7b5 = 0; opb5 = 0;
        #10;
        
        // Stop simulation
        #20;
        $finish;
    end
    
endmodule