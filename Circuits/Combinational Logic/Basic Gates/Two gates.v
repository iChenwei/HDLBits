module top_module(
    input in1,
    input in2,
    input in3,
    output out
);
    wire out_in1_2 = ~(in1 ^ in2);
    assign out = in3 ^ out_in1_2;
endmodule