// 连接运算符的多次重复操作： 
// - 语法结构：{重复次数 { 向量 } }
// - 注意：两重{}结构构成一个整体！


module top_module (
    input [7:0] in,
    output [31:0] out );//

    // assign out = { replicate-sign-bit , the-input };
    assign out = { {24{in[7]}}, in };
endmodule
