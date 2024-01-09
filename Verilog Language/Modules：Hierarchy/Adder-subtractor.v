module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
/*
    module add16 ( input[15:0] a, 
        input[15:0] b, 
        input cin, 
        output[15:0] sum, 
        output cout );
*/
    wire [31:0] b_n;
    wire carry;
    assign b_n = b ^ {32{sub}};
    add16 ad1(.a(a[15:0]), .b(b_n[15:0]), .cin(sub), .sum(sum[15:0]), .cout(carry));
    add16 ad2(.a(a[31:16]), .b(b_n[31:16]), .cin(carry), .sum(sum[31:16]), .cout());

endmodule
