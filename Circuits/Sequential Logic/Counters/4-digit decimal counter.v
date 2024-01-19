module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q); // 4位二进制数表示一个十进制数（BCD格式）

    always @(posedge clk) begin
        if(reset) begin
            q <= 16'h0;
        end
        else begin
            if(q[3:0] == 4'd9) 
            begin
                q[3:0] <= 4'd0;
                if(q[7:4] == 4'd9) 
                begin
                    q[7:4] <= 4'd0;
                    if(q[11:8] == 4'd9)
                    begin
                        q[11:8] <= 4'd0;
                        if(q[15:12] == 4'd9)
                            q[15:12] <= 4'd0;
                        else
                            q[15:12] <= q[15:12] + 1;
                    end
                    else
                        q[11:8] <= q[11:8] + 1;
                end
                else 
                    q[7:4] <= q[7:4] + 1;
            end
            else 
            begin
               q[3:0] <= q[3:0] + 1; 
            end
        end
    end

    assign ena[1] = q[3 :0] == 4'd9;
    assign ena[2] = q[7 :4] == 4'd9 && q[3:0] == 4'd9;
    assign ena[3] = q[11:8] == 4'd9 && q[7:4] == 4'd9 && q[3:0] == 4'd9;

endmodule
