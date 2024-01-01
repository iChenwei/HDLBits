// NOR gate : 或（OR）非（N）门
// 功能：首先进行逻辑或运算，然后将输出结果进行逐位取非

// verilog hdl中的逻辑或运算符号：｜
// verilog hdl中的优先级问题： ~ >> | ，逻辑非的优先级高于逻辑或
module top_module( 
    input a, 
    input b, 
    output out );

    assign out = ~(a | b);

endmodule