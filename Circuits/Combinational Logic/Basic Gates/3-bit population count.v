module top_module( 
    input [2:0] in,
    output [1:0] out );
    
    always @(*) begin
        out = 2'b00;
        for(int i = 0; i < 3; i = i + 1) begin
            if(in[i] == 1'b1) out = out + 1'b1;
            else out = out + 1'b0;
        end
    end
endmodule
