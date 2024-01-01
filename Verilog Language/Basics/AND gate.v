// 逐位“与” ： &
// 逻辑“与”： &&
module top_module( 
    input a, 
    input b, 
    output out );

    assign out = a & b;

endmodule