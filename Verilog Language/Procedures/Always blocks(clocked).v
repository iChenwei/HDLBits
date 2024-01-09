/*
Verilog语句中的三种赋值方法：
    - 连续赋值： assign方式，不能在过程块中使用
    - 过程阻塞性赋值： a = b，只能在过成块中使用
    - 过程非阻塞赋值： a <= b, 只能在过成块中使用

总结： 组合逻辑用阻塞性，时序逻辑用非组合性
*/

// synthesis verilog_input_version verilog_2001
module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );

    assign out_assign = a ^ b;

    always @(*) begin
        out_always_comb = a ^ b;
    end

    always @(posedge clk) begin
        out_always_ff <= a ^ b;
    end

endmodule
