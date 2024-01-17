// 在组合逻辑中才能产生锁存器
module top_module (
    input d, 
    input ena,
    output q);

    always @(*) begin
        if(ena) q <= d;
    end

endmodule
