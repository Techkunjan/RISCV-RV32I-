 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2025 18:59:20
// Design Name: 
// Module Name: regfile
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

module regfile (
    input wire clk,
    input wire we3,
    input wire [4:0] a1, a2, a3,  // 5-bit addresses (register file has 32 registers)
    input wire [31:0] wd3,
    output wire [31:0] rd1, rd2
);

    reg [31:0] rf [31:0]; // 32 registers of 32-bit width

    // Initialize register file from a memory file
    initial begin
        $readmemh("riscreg.txt", rf); // Load register values from riscreg.txt
    end

    // Write to the register file on the rising edge of the clock
    always @(posedge clk) begin
        if (we3 && a3 != 5'b0) // Register 0 is hardwired to 0
            rf[a3] <= wd3;
    end

    // Read registers combinationally
    assign rd1 = (a1 != 0) ? rf[a1] : 32'b0;  
    assign rd2 = (a2 != 0) ? rf[a2] : 32'b0;

    // Debugging Display
    always @(*) begin
        $display("Time: %0t | Read: a1=%0d (rd1=%h), a2=%0d (rd2=%h)", 
                 $time, a1, rd1, a2, rd2);
    end

endmodule

