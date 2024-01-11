/*
给出四个无符号数，请找到其中的最小值。
无符号数可以使用比较运算符进行比较(a<b)。
使用条件运算符描述一个两路的最小值电路，然后组合它来创建一个4路最小电路。
可能需要一些wire变量用于表述中间结果。
*/
module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    wire [7:0] intermediate_result1;
    wire [7:0] intermediate_result2;
    assign intermediate_result1 = a < b ? a : b;
    assign intermediate_result2 = c < d ? c : d;

    assign min = intermediate_result1 < intermediate_result2 ? intermediate_result1 : intermediate_result2;
endmodule
