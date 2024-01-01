// 逻辑操作符：~ 
// 功能：逐位取反（每一位都取反）
// 注意：取反结果的位宽 = 输入信号的位宽
module top_module( input in, output out );
    assign out = ~in;
endmodule
