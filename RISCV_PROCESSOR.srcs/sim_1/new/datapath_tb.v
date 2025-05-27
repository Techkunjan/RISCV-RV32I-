 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 20:02:12
// Design Name: 
// Module Name: datapath_tb
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



module datapath_tb;
    // Inputs
    reg clk, reset;
    reg [1:0] ResultSrc;
    reg PCSrc, ALUSrc;
    reg RegWrite;
    reg [1:0] ImmSrc;
    reg [2:0] ALUControl;
    reg [31:0] Instr;
    reg [31:0] ReadData;
    
    // Outputs
    wire Zero;
    wire [31:0] PC;
    wire [31:0] ALUResult, WriteData;
    
    // Instantiate the Unit Under Test (UUT)
    datapath uut (
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
    
    // Clock Generation
    always #5 clk = ~clk; // 10ns clock period
    
    // Test Procedure
    initial begin
        // Initialize Inputs
        clk = 0;
        reset = 1;
        ResultSrc = 2'b00;
        PCSrc = 0;
        ALUSrc = 0;
        RegWrite = 0;
        ImmSrc = 2'b00;
        ALUControl = 3'b000;
        Instr = 32'b0;
        ReadData = 32'b0;
        
        // Apply Reset
        #10 reset = 0;
        
        // Test Case 1: Simple ALU operation
        #10;
        RegWrite = 1;
        ALUSrc = 1;
        ALUControl = 3'b010; // ADD operation
        Instr = 32'h00208133; // Example instruction
        ReadData = 32'h00000005;
        
        #20;
        PCSrc = 1; // Test branching
        
        #20;
        $finish;
    end
    
    // Monitor signals
    initial begin
        $monitor("Time=%0t | PC=%h | ALUResult=%h | Zero=%b", $time, PC, ALUResult, Zero);
    end
    
endmodule
