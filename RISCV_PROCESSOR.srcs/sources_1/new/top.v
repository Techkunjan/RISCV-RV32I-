`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2025 21:53:57
// Design Name: 
// Module Name: top
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
//module top(
//    input  wire        clk,    // 100 MHz clock
//    input  wire        reset,  // Reset button
//    output wire [7:0]  led,    // LSB(8) of ALUResult on LEDs
//    output wire [6:0]  seg,    // 7-segment display segments
//    output wire [3:0]  an      // 7-segment anode selection
//);

//    // Internal signals
//    wire [31:0] PC;
//    wire [31:0] Instr;
//    wire [31:0] ReadData;
//    wire [31:0] ALUResult;
//    wire clk_1Hz;  // Slow clock for display updates

//    // ✅ Instantiate Clock Divider (Generates 1 Hz Clock)
//    clock_divider clk_div (
//        .clk(clk),      // 100 MHz input clock
//        .reset(reset),  // Reset signal
//        .clk_out(clk_1Hz) // 1 Hz output clock
//    );

//    // ✅ Instantiate RISC-V Processor
//    riscvsingle rvsingle (
//        .clk(clk),
//        .reset(reset),
//        .PC(PC),
//        .Instr(Instr),
//        .MemWrite(),    // Removed from top module I/O
//        .ALUResult(ALUResult),
//        .WriteData(),   // Removed from top module I/O
//        .ReadData(ReadData)
//    );

//    // ✅ Instantiate Instruction Memory
//    imem imem (
//        .a(PC),  
//        .rd(Instr)
//    );

//    // ✅ Instantiate Data Memory
//    dmem dmem (
//        .clk(clk),
//        .we(),  // Removed from top module I/O
//        .a(ALUResult),
//        .wd(),
//        .rd(ReadData)
//    );

//    // ✅ Assign ALUResult[7:0] to LEDs
//    assign led = ALUResult[7:0];

//    // ✅ Instantiate 7-Segment Display (Uses Slower 1 Hz Clock)
//    display pc_display (
//        .clk(clk_1Hz),  // Slow 1 Hz clock for stable display
//        .PC(PC),
//        .seg(seg),
//        .an(an)
//    );

//endmodule


//module top(
//    input  wire        clk,
//    input  wire        reset,
//    output wire [31:0] WriteData,
//    output wire [31:0] DataAdr,
//    output wire        MemWrite
//);
//    // Internal signals
//    wire [31:0] PC;
//    wire [31:0] Instr;
//    wire [31:0] ReadData;

//    // Instantiate the RISC-V single-cycle processor
//    riscvsingle rvsingle (
//        .clk(clk),
//        .reset(reset),
//        .PC(PC),
//        .Instr(Instr),
//        .MemWrite(MemWrite),
//        .ALUResult(DataAdr),
//        .WriteData(WriteData),
//        .ReadData(ReadData)
//    );

//    // Instantiate instruction memory
//    imem imem (
//        .a(PC[31:0]),  // Word-aligned addressing
//        .rd(Instr)
//    );

//    // Instantiate data memory
//    dmem dmem (
//        .clk(clk),
//        .we(MemWrite),
//        .a(DataAdr),
//        .wd(WriteData),
//        .rd(ReadData)
//    );
          
//endmodule

//module top(
//    input  wire        clk,
//    input  wire        reset,
//    output wire [31:0] WriteData,
//    output wire [31:0] DataAdr,
//    output wire [31:0] ALUResult, // Added ALUResult as an output
//    output wire        MemWrite
//);
//    // Internal signals
//    wire [31:0] PC;
//    wire [31:0] Instr;
//    wire [31:0] ReadData;

//    // Instantiate the RISC-V single-cycle processor
//    riscvsingle rvsingle (
//        .clk(clk),
//        .reset(reset),
//        .PC(PC),
//        .Instr(Instr),
//        .MemWrite(MemWrite),
//        .ALUResult(ALUResult), // Explicitly connecting ALUResult to output
//        .WriteData(WriteData),
//        .ReadData(ReadData)
//    );

//    // Instantiate instruction memory
//    imem imem (
//        .a(PC[31:0]),  // Word-aligned addressing
//        .rd(Instr)
//    );

//    // Instantiate data memory
//    dmem dmem (
//        .clk(clk),
//        .we(MemWrite),
//        .a(DataAdr),
//        .wd(WriteData),
//        .rd(ReadData)
//    );

//    // Ensure DataAdr is correctly connected to ALUResult
//    assign DataAdr = ALUResult;
          
//endmodule
module top(
    input  wire        clkin,
    input  wire        reset,
//    output wire [31:0] WriteData,
//    output wire [31:0] DataAdr,
    output wire [7:0] ALUResult // Added ALUResult as an output
//    output wire        MemWrite
);
    // Internal signals
    wire [31:0] PC;
    wire [31:0] Instr;
    wire [31:0] ReadData;
    wire [31:0] WriteData,DataAdr;
    wire  MemWrite;


    // Instantiate the RISC-V single-cycle processor
    riscvsingle rvsingle (
        .clk(clk),
        .reset(reset),
        .PC(PC),
        .Instr(Instr),
        .MemWrite(MemWrite),
        .ALUResult(ALUResult), // Explicitly connecting ALUResult to output
        .WriteData(WriteData),
        .ReadData(ReadData)
    );

    // Instantiate instruction memory
    imem imem (
        .a(PC[31:0]),  // Word-aligned addressing
        .rd(Instr)
    );

    // Instantiate data memory
    dmem dmem (
        .clk(clk),
        .we(MemWrite),
        .a(DataAdr),
        .wd(WriteData),
        .rd(ReadData)
    );
    
     clock_divider  cd(
     .clock_in(clkin),
     .clock_out(clk));
        
    // Ensure DataAdr is correctly connected to ALUResult
//    assign DataAdr = ALUResult;
          
endmodule

