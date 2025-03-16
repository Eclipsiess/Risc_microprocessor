`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 23:11:06
// Design Name: 
// Module Name: flopenrc
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


module flopenrc #(parameter WIDTH = 8) 
(input clk, reset, clear, en, 
input [WIDTH-1:0] d,  
output reg[WIDTH-1:0] q); 
always @(posedge clk, posedge reset) 
if (reset)   q <= 0; 
else if (en)  
if (clear) q <= 0; 
else       q <= d; 
endmodule 
