module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire out_p2_ab, out_p2_cd, out_p1_abc,out_p1_def;

    assign out_p2_ab = p2a & p2b;
    assign out_p2_cd = p2c & p2d;
    assign p2y = out_p2_ab | out_p2_cd;  

    assign out_p1_abc = p1a & p1b & p1c;
    assign out_p1_def = p1d & p1e & p1f;
    assign p1y = out_p1_abc | out_p1_def;
endmodule
