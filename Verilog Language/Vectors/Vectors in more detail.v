// 声明一个类型的vector的格式： 
//      type[upper:lower] vector_name;
//  - type 指定了向量的类型
//  - [upper:lower] 从高位到低位
//      - 出现负数-k，表示倒数第k位
// 重要：声明和使用保持一致！

// reg [7:0] mem[255:0];  
// 向量名前面的是位宽，后面是数组长度

// 片选1
// assign 赋值操作中，左值位宽 != 右值位宽，会发生截断或者补足零
// - 左值位宽 > 右值位宽，低位对齐赋值，高位补0，得左值；
// - 左值位宽 < 右值位宽，低位对齐赋值，高位截断，得右值

// 片选2
// 使用[]，进行片选，可以片选1bit，也可以片选k位


`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );

    assign out_hi = in[15:8];
    assign out_lo = in[7:0];

endmodule