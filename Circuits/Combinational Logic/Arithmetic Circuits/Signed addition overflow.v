module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
 
    assign s = a + b; // verilog的加法自带进位
    // 从补码加发运算的溢出情况考虑问题：正数 + 正数 = 负数；负数 + 负数 = 正数
    assign overflow = (a[7] & b[7] & ~s[7]) || (~a[7] & ~b[7] & s[7]);
endmodule
