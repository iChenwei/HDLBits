module top_module(
    input clk,
    input load,
    input [1:0] ena,
    input [99:0] data,
    output reg [99:0] q); 

    always @(posedge clk) begin
        if(load)  
        begin
            q <= data; 
        end
        else // 旋转
        begin
            if(ena == 2'b01) // 右旋
            begin
                q <= {q[0], q[99:1]};
            end
            else if(ena == 2'b10) // 左旋 
            begin
                q <= {q[98:0], q[99]};
            end
            else
            begin
                q <= q;
            end
        end
    end

endmodule
