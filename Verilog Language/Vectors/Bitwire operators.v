// 逐位逻辑运算：k位的输入向量之间逻辑比较，k位之中逐位进行，产生k位的结果值

// 逻辑运算符：输出（结果）是1位的布尔值，0 <=> 假，1 <=> 真


// 要点：学会切片
module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);

    assign out_or_bitwise = a | b;
    assign out_or_logical = a || b;
    
    assign out_not[5:3] = ~b;
    assign out_not[2:0] = ~a;

endmodule
