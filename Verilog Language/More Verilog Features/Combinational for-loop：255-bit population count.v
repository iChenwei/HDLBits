module top_module(
    input [254:0] in,
    output [7:0] out 
);
    always @(*) begin
        out = 8'b00000000;
        for(int i = 0; i < 255; i = i + 1) begin
            if(in[i] == 1'b1) out = out + 1'b1;
            else out = out + 1'b0;
        end
    end

endmodule