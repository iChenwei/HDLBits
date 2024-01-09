// always块：代替assign语句描述组合逻辑电路
/*
always块可以描述：组合逻辑和时序逻辑
    always @(*)  -- 组合逻辑
    always @(postedge clk)  -- 时序逻辑

*/
// always块描述组合逻辑电路和assign描述组合逻辑电路是等价
//      always块内不能连续赋值（assign 方式）


// synthesis verilog_input_version verilog_2001
module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);

    assign out_assign = a & b;

    always @(*)
        out_alwaysblock = a & b;

endmodule
