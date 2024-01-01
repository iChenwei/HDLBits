// 片选操作符，选择向量中的一段比特位。
// 连接操作符 {a, b, c}，用来连接abc形成更大的向量
// - 用逗号作为间隔
// - 标注位宽（宽度）！！！


module top_module (
    input [4:0] a, b, c, d, e, f, 
    output [7:0] w, x, y, z );      

    // assign { ... } = { ... };
    assign w = {a, b[4:2]}; // 5 + 3
    assign x = {b[1:0], c, d[4]}; // 2 + 5 + 1
    assign y = {d[3:0], e[4:1]}; // 4 + 4
    assign z = {e[0], f, 2'b11}; // 1 + 5 + 2
endmodule