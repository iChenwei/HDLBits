//wire，有方向的信号（线）。与物理的导线不同，在verilog中表示信息的流向（单向），信息源唯一，信息流向一处或者多处。

// assign，赋值。类似于将两个wire连接，左值始终等于右值，右值决定左值，右值变化左值跟着变化。
module top_module (
    input in,
    output out    
);
    assign out = in;
endmodule