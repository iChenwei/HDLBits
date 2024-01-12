// A:  z = (x^y) & x
// B:  z = ~(x | y) | x & y
module top_module (input x, input y, output z);
    wire IA1_out, IA2_out, IB1_out, IB2_out;
    wire IAB1_out, IAB2_out;

    assign IA1_out = (x ^ y) & x;
    assign IB1_out = ~(x | y) | x & y;
    assign IA2_out = (x ^ y) & x;
    assign IB2_out = ~(x | y) | x & y;

    assign IAB1_out = IA1_out | IB1_out;
    assign IAB2_out = IA2_out & IB2_out;

    assign z = IAB1_out ^ IAB2_out;
endmodule
