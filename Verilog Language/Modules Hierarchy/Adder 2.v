module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire t_ad;
    // 实例化两个add16
    // module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    add16 ad1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(t_ad));
    add16 ad2(.a(a[31:16]), .b(b[31:16]), .cin(t_ad), .sum(sum[31:16]), .cout());

endmodule


module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    assign sum = a ^ b ^ cin;
    assign cout = a & b | a & cin | b & cin;
endmodule
