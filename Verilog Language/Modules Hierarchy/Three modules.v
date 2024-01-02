module top_module ( input clk, input d, output q );
    // module my_dff ( input clk, input d, output q );
    wire tq1, tq2;
    my_dff dff1(.clk(clk), .d(d), .q(tq1));
    my_dff dff2(.clk(clk), .d(tq1), .q(tq2));
    my_dff dff3(.clk(clk), .d(tq2), .q(q));
endmodule
