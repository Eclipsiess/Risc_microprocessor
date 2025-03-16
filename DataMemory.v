module Data_Memory(
    input CLK, rst, WE,
    input [31:0] A, WD,
    output [31:0] RD
);

    reg [31:0] memory [1023:0];

    always @ (posedge CLK or posedge rst)
    begin
        if (rst)
            ;
        else if (WE)
            memory[A] <= WD;
    end

    assign RD = (rst) ? 32'd0 : memory[A];

    initial begin
        memory[0] = 32'h00000000;
    end

endmodule
