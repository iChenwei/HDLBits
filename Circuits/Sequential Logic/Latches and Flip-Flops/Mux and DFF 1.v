module top_module (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);
// 实现子模块
/*
    always @(posedge clk) begin
        if(L) begin
            Q <= r_in;
        end
        else begin
            Q = q_in;
        end 
    end
*/
    always @(posedge clk) begin
        Q <= (L) ? r_in : q_in;
    end
endmodule
