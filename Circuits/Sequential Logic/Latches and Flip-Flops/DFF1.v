module top_module (
    input clk,
    input d, 
    input ar,   // asynchronous reset（异步复位）
    output q);

    always @(posedge clk or posedge ar) begin
        if(ar) q <= 1'b0;
        else q <= d;
    end

endmodule
