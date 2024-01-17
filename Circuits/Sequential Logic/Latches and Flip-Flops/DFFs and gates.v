module top_module (
    input clk,
    input x,
    output z
); 

    wire w1, w2, w3;  // 三个触发器的输入

    reg q1 = 1'b0;  // 暂存三个触发器的输出
    reg q2 = 1'b0;
    reg q3 = 1'b0;
    
    assign w1 = q1 ^ x;
    assign w2 = !q2 & x;
    assign w3 = !q3 | x;

    always @(posedge clk) begin
        q1 <= w1;
        q2 <= w2;
        q3 <= w3;
    end
    

    assign z = ~(q1 | q2 | q3);
endmodule