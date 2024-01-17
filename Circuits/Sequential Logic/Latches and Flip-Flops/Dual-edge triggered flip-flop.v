module top_module (
    input clk,
    input d,
    output q
);
    // 分两步来实现，分别实现上升沿触发器和下降沿触发器；然后根据时钟信号clk
    reg q1, q2;
    always @(posedge clk) begin
        q1 <= d;
    end
    always @(negedge clk) begin
        q2 <= d;
    end
    assign q = clk ? q1 : q2;
endmodule
