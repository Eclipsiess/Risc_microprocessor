module register_File(CLK,rst,WE3,WD3,A1,A2,A3,RD1,RD2);
    input CLK,rst,WE3;
    input [4:0] A1,A2,A3;
    input [31:0]WD3;
    output [31:0]RD1,RD2;


    reg [31:0] register [31:0];
    always @ (negedge CLK)
    begin 
        if(WE3 & (A3 != 5'h0))
            register[A3] <= WD3;
    end
    
    assign RD1 = (rst == 1'b0) ? 32'd0 : register[A1];
    assign RD2 = (rst == 1'b0) ? 32'd0 : register[A2];

    initial begin
        register[0] = 32'h0

    end
endmodule





