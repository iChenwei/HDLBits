// 模块（Module）是一个电路，通过输入输出端口和外部的电路联系

// 推荐：一个.v文件中只写一个模块（module）

// 模块的实例化：
//  - 按端口顺序
//  - 按端口名称（推荐！！！）
module top_module ( input a, input b, output out );
    mod_a ma1(.in1(a), .in2(b), .out(out));
endmodule
