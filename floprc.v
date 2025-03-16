`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2025 23:13:51
// Design Name: 
// Module Name: floprc
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


module floprc #(parameter WIDTH = 8) 
(input clk, 
input reset, 
input clear, 
input [WIDTH-1:0] d,  
output reg [WIDTH-1:0] q); 
always @(posedge clk, posedge reset) 
if (reset) q <= 0; 
else        
if (clear) q <= 0; 
else       q <= d; 
endmodule 
