module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
/*
    module add16 ( input[15:0] a, 
        input[15:0] b, 
        input cin, 
        output[15:0] sum, 
        output cout );
*/
    wire carry;
    wire [15:0] t_sum1;
    wire [15:0] t_sum2;
    add16 ad1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(carry));
    add16 ad2(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(t_sum1), .cout());
    add16 ad3(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(t_sum2), .cout());

    // 三目运算符":" 可以作为2选1的多路选择器
    assign sum[31:16] = carry?t_sum2:t_sum1; 

endmodule
