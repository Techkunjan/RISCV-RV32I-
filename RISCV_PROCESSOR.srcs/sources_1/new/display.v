`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2025 11:54:36
// Design Name: 
// Module Name: display
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


module display (
    input wire clk,               // System clock (100MHz)
    input wire [31:0] PC,         // 32-bit Program Counter
    output reg [6:0] seg,         // 7-segment segment outputs
    output reg [3 :0] an           // 7-segment anode outputs
);
    reg [3:0] current_digit;
    reg [19:0] refresh_counter = 0;  // Refresh rate counter
    reg [2:0] current_display = 0;   // Active digit (0-7)

    // Extract nibbles from PC
    wire [3:0] digit_array[7:0];
    assign digit_array[0] = PC[3:0];      
    assign digit_array[1] = PC[7:4];
    assign digit_array[2] = PC[11:8];
    assign digit_array[3] = PC[15:12];
    assign digit_array[4] = PC[19:16];
    assign digit_array[5] = PC[23:20];
    assign digit_array[6] = PC[27:24];
    assign digit_array[7] = PC[31:28];    

    // HEX to 7-segment encoding
    function [6:0] hex_to_7seg(input [3:0] num);
        case (num)
            4'h0: hex_to_7seg = 7'b0111111;  // 0
            4'h1: hex_to_7seg = 7'b0000110;  // 1
            4'h2: hex_to_7seg = 7'b1011011;  // 2
            4'h3: hex_to_7seg = 7'b1001111;  // 3
            4'h4: hex_to_7seg = 7'b1100110;  // 4
            4'h5: hex_to_7seg = 7'b1101101;  // 5
            4'h6: hex_to_7seg = 7'b1111101;  // 6
            4'h7: hex_to_7seg = 7'b0000111;  // 7
            4'h8: hex_to_7seg = 7'b1111111;  // 8
            4'h9: hex_to_7seg = 7'b1101111;  // 9
            4'hA: hex_to_7seg = 7'b1110111;  // A
            4'hB: hex_to_7seg = 7'b1111100;  // B
            4'hC: hex_to_7seg = 7'b0111001;  // C
            4'hD: hex_to_7seg = 7'b1011110;  // D
            4'hE: hex_to_7seg = 7'b1111001;  // E
            4'hF: hex_to_7seg = 7'b1110001;  // F
            default: hex_to_7seg = 7'b0000000;
        endcase
    endfunction

    // Refresh logic
    always @(posedge clk) begin
        refresh_counter <= refresh_counter + 1;
        if (refresh_counter[15:0] == 0) begin
            current_display <= current_display + 1;
        end
    end

    // Update 7-segment display
    always @(*) begin
        current_digit = digit_array[current_display]; // Select current nibble
        seg = hex_to_7seg(current_digit); // Convert nibble to 7-segment encoding
        an = ~(8'b00000001 << current_display); // Activate corresponding digit
    end

endmodule


//module display (
//    input wire clk,               // System clock
//    input wire [31:0] PC,         // 32-bit Program Counter
//    output reg [7:0] an,          // Anode control (active-low)
//    output reg [6:0] seg          // 7-segment display output
//);

//    reg [2:0] current_display = 0;   // Keeps track of active display (0-7)
//    reg [19:0] refresh_counter = 0;  // Refresh rate counter
//    reg [3:0] digit;

//    // Extract nibbles (each 4 bits) from PC
//    wire [3:0] digit_array [7:0];
//    assign digit_array[0] = PC[3:0];      // Least significant nibble
//    assign digit_array[1] = PC[7:4];
//    assign digit_array[2] = PC[11:8];
//    assign digit_array[3] = PC[15:12];
//    assign digit_array[4] = PC[19:16];
//    assign digit_array[5] = PC[23:20];
//    assign digit_array[6] = PC[27:24];
//    assign digit_array[7] = PC[31:28];    // Most significant nibble

//    // HEX to 7-segment encoding
//    function [6:0] hex_to_7seg(input [3:0] num);
//        case (num)
//            4'h0: hex_to_7seg = 7'b0111111;  // 0
//            4'h1: hex_to_7seg = 7'b0000110;  // 1
//            4'h2: hex_to_7seg = 7'b1011011;  // 2
//            4'h3: hex_to_7seg = 7'b1001111;  // 3
//            4'h4: hex_to_7seg = 7'b1100110;  // 4
//            4'h5: hex_to_7seg = 7'b1101101;  // 5
//            4'h6: hex_to_7seg = 7'b1111101;  // 6
//            4'h7: hex_to_7seg = 7'b0000111;  // 7
//            4'h8: hex_to_7seg = 7'b1111111;  // 8
//            4'h9: hex_to_7seg = 7'b1101111;  // 9
//            4'hA: hex_to_7seg = 7'b1110111;  // A
//            4'hB: hex_to_7seg = 7'b1111100;  // B
//            4'hC: hex_to_7seg = 7'b0111001;  // C
//            4'hD: hex_to_7seg = 7'b1011110;  // D
//            4'hE: hex_to_7seg = 7'b1111001;  // E
//            4'hF: hex_to_7seg = 7'b1110001;  // F
//            default: hex_to_7seg = 7'b0000000;
//        endcase
//    endfunction

//    // Refresh logic to cycle through each digit
//    always @(posedge clk) begin
//        refresh_counter <= refresh_counter + 1;
//        if (refresh_counter[15:0] == 0) begin // Adjust speed with 16-bit counter
//            current_display <= current_display + 1; // Cycle through digits
//        end
//    end

//    // Update 7-segment display and anode control
//    always @(*) begin
//        digit = digit_array[current_display]; // Select current nibble
//        seg = hex_to_7seg(digit); // Convert nibble to 7-segment encoding
        
//        an = 8'b11111111; // Disable all displays
//        an[current_display] = 0; // Enable only the active display
//    end

//endmodule
