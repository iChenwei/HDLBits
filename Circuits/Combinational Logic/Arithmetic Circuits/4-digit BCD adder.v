module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );

    wire [3:0] tmp_cout;

    bcd_fadd add1(
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .cout(tmp_cout[0]),
        .sum(sum[3:0])
    );

    bcd_fadd add2(
        .a(a[7:4]),
        .b(b[7:4]),
        .cin(tmp_cout[0]),
        .cout(tmp_cout[1]),
        .sum(sum[7:4])
    );

    bcd_fadd add3(
        .a(a[11:8]),
        .b(b[11:8]),
        .cin(tmp_cout[1]),
        .cout(tmp_cout[2]),
        .sum(sum[11:8])
    );

    bcd_fadd add4(
        .a(a[15:12]),
        .b(b[15:12]),
        .cin(tmp_cout[2]),
        .cout(tmp_cout[3]),
        .sum(sum[15:12])
    );

    assign cout = tmp_cout[3];
endmodule
