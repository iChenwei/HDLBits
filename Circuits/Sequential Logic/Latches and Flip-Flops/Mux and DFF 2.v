// 实现子模块module top_module (
module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    //实现选择器
    wire D;
    assign D = (L) ? R :
                (E) ? w : Q; 
    // 实现触发器
    always @(posedge clk) begin
        Q <= D;
    end
endmodule
