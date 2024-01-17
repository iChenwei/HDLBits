// 保存两个数据中的1（二者或运算）
// 保存两个数据的中0（二者与运算）

module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);

    reg [31:0] temp;

    always @(posedge clk) begin
        temp <= in;
        if(reset)
            out = 32'h0;
        else 
            out = (temp & ~in) | out;
    end

endmodule
