// vector : 一组wire的集合
// wire 的宽度为 1，vector的宽度可以任意

// 例子： wire [7:0] w;  
//     声明了一个 8bit位宽的信号，名称为 w
// 注意：位宽位于向量名之前

// 片选其中一位 与 C语言中的数组相同
// w[0]、w[1]...


module top_module ( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  ); // Module body starts after module declaration

    assign outv = vec;
    assign o2 = vec[2];
    assign o1 = vec[1];
    assign o0 = vec[0];

endmodule
