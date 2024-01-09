// vector 可以代替单个 wire作为 module 的端口（输入or输出）
module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    // wire向量的声明
    wire [7:0] a;
    wire [7:0] b;
    wire [7:0] c;
    //module my_dff8 ( input clk, input [7:0] d, output [7:0] q );
    my_dff8 dff8_1(.clk(clk), .d(d), .q(a));
    my_dff8 dff8_2(.clk(clk), .d(a), .q(b));
    my_dff8 dff8_3(.clk(clk), .d(b), .q(c));

    // 4选1 - 选择器
    always @(*)
        case(sel)
            2'h0: q = d;
            2'h1: q = a;
            2'h2: q = b;
            2'h3: q = c;
        endcase 
endmodule
