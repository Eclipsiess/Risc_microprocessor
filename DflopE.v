`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2025 23:17:13
// Design Name: 
// Module Name: flopr
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


module DflopE #(parameter WIDTH = 8)(
    input clk, 
    input reset, 
    input enable, 
    input [WIDTH-1:0] d, 
    output reg [WIDTH-1:0] q
);
    
always @(posedge clk ,  posedge reset)
begin
    if (reset) 
        q <= 0; 
    else if (enable) 
        q <= d; 
end

endmodule