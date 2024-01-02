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
    wire t_cout;
    add16 a16_1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .cout(t_cout), .sum(sum[15:0]));
    add16 a16_2(.a(a[31:16]), .b(b[31:16]),.cin(t_cout), .cout(), .sum(sum[31:16]));
endmodule
