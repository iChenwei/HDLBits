/*
半加器：
    sum = a ^ b
    cout  = a & b

一位加法器（一位全加器）：
    sum = a ^ b ^ c_in
    cout  = a & b | ((a ^ b) & c_in))
        = a & b | a & c_in | b & c_in
*/

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    assign sum[0] = a[0] ^ b[0] ^ cin;
    assign cout[0] = a[0] & b[0] | a[0] & cin | b[0] & cin; // cin[1]

    always @(*) begin
        for(int i = 1; i < 100; i = i + 1) begin
            sum[i] = a[i] ^ b[i] ^ cout[i-1];
        end
    end

    always @(*) begin
        for(int i = 1; i < 100; i = i + 1) begin
            cout[i] = a[i] & b[i] | a[i] & cout[i-1] | b[i] & cout[i-1];
        end
    end
endmodule
