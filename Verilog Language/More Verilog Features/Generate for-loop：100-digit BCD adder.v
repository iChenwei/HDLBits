/*
一位全加器：
    sum = a ^ b ^ cin;
    cout = a & b | a & cin | b & cin;
*/

module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [399:0] cout_temp; // 存放每次计算后的count

    genvar i;

    // 先计算cout[0]
    bcd_fadd bcd_fadd_inst1(
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .cout(cout_temp[0]),
        .sum(sum[3:0])
    );

    generate
        for(i = 4; i < 400; i = i + 4) begin: bcd
            bcd_fadd bcd_fadd_inst(
                .a(a[i+3:i]),
                .b(b[i+3:i]),
                .cin(cout_temp[i-4]),
                .cout(cout_temp[i]),
                .sum(sum[i+3:i])
            );
        end
    endgenerate
endmodule
