 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2025 21:59:16
// Design Name: 
// Module Name: testbench
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


module testbench;

    // Testbench signals
    reg clk;
    reg reset;
    wire [31:0] WriteData;
    wire [31:0] DataAdr;
    wire MemWrite;

    // Instantiate the top module
    top uut (
        .clk(clk),
        .reset(reset),
        .WriteData(WriteData),
        .DataAdr(DataAdr),
        .MemWrite(MemWrite)
    );

    // Clock generation (50 MHz -> 20 ns period)
    always #10 clk = ~clk;

    // Test sequence
    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;

        // Reset the processor
        #25;
        reset = 0;
    

        // Run simulation for some clock cycles
        #500;

        // End simulation
        $finish;
    end

    // Monitor memory writes
    always @(posedge clk) begin
        if (MemWrite) begin
            $display("Memory Write: Address = %h, Data = %h", DataAdr, WriteData);
        end
    end

endmodule