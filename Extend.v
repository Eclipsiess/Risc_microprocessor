module extend(In, ImmSrcD , ImmExt1D)
    input [31:0] In,
    input [1:0] ImmSrc;
    output [31:0] ImmExt1D

    assign ImmExt1D =  (ImmSrcD == 2'b00) ? {{20{In[31]}},In[31:20]} : 
                     (ImmSrcD == 2'b01) ? {{20{In[31]}},In[31:25],In[11:7]} : 32'h00000000;

endmodule

