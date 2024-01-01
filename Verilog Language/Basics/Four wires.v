// assign 描述端口之间的连接关系，没有先后之分。不创建wire，只负责创建wire之间的连接。
module top_module( 
    input a,b,c,
    output w,x,y,z );

    assign w = a;
    assign x = b;
    assign y = b;
    assign z = c;

endmodule
