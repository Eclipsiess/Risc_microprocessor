`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2025 21:12:19
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


module top(input clk, reset);
wire FlushE,StallD,FlushD,StallF, ZeroE, ALUSrcE, PCSrcE, RegWriteM, RegWriteW, memWriteM ;
wire [1:0] ImmSrcD, ResultSrcE, ALUControlE, ResultSrcW, ForwardAE, ForwardBE;
wire [31:0] InstrD, PCD, PCPlus4D, readDataM, InstrF, pcF, ALUResultM, writeDataM, PCTargetE; 
wire [4:0] RS1E, RS2E,RDE, RDW, RDM ;

    
Controller controller1(clk, reset, FlushE,ZeroE, InstrD, ImmSrcD, ALUSrcE,
PCSrcE, ResultSrcE, ALUControlE,memWriteM,RegWriteM, RegWriteW, ResultSrcW);

data_Path DataPath1(clk,reset,InstrD,ImmSrcD,PCD,PCPlus4D,RS1E, 
RS2E, RDE,RegWriteW,RDW,ResultW,FlushE,ForwardAE,ForwardBE,
ALUControlE,ALUSrcE, RDM,PCPlus4M, writeDataM, ALUResultM,
PCTargetE,ZeroE);

Hazard hazard_unit(RegWriteW, RDW, RegWriteM, RDM, ResultSrcE, ForwardBE, ForwardAE, PCSrcE,
RS1E, RS2E, RDE, FlushE, InstrD[19:15], InstrD[24:20] , StallD, FlushD, StallF );

fetch Fetch(clk, reset,PCSrcE, StallF,StallD, FlushD, InstrF, pcF,PCTargetE,
 InstrD, PCPlus4D, PCD);
 
Data_Memory dmem(clk, reset, memWriteM,
    ALUResultM, writeDataM,readDataM);
    
imem(pcF, InstrF); 
endmodule


