module top_module (
    input clk,
    input reset,
    output [3:0] q);

    always @(posedge clk) begin
        if(reset) begin
            q <= 4'd1;
        end 
        else if (q == 10) begin
            q <= 4'd1;
        end
        else begin
            q <= q + 1;
        end
    end
endmodule
