// 学会利用中间信号（wire）简化电路

//wire的定义需要放置于模块（module 和 endmodule）的body中

// 复习：~ 逐位取非
//      & 逐位与
//      ｜ 逐位或

`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

    wire out_ab;
    wire out_cd;
    
    assign out_ab = a & b; // & 与运算
    assign out_cd = c & d; 

    assign out = out_ab | out_cd;
    assign out_n = ~(out_ab | out_cd);

endmodule
