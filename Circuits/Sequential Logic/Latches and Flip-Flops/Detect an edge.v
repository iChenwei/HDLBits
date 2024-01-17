// 参考：
// https://www.bilibili.com/video/BV1Mv411p77r/?spm_id_from=333.999.0.0&vd_source=fffbd4f0f85ae0f467e3f8adb3cd3bda
module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    // 实现边沿检测电路，且只检测 0->1，不检测 1->0
    reg [7:0] temp;  // 暂存
    always @(posedge clk) begin
        // 暂存上一个输入信号
        temp <= in;
        // 前一个输入信号temp为0 并且 当前输入信号in为1时，满足检测上升沿的条件
        pedge <= ~temp & in;
    end

endmodule
