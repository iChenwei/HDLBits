// XNOR gate：同或门
// 功能：异或门的输出取反
// 异或门：输入不同，结果为1；输入相同，结果为0

// verilog hdl中的“逐位异或”运算符： ^
// 功能：逐位异或运算

// ^ 优先级低于 ~

module top_module( 
    input a, 
    input b, 
    output out );

    assign out = ~(a ^ b);

endmodule
