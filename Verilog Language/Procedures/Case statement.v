// if-else语句 与 case语句 等价
/*
case(in)
    x1: begin

    end

    x2: xxx;

    default:  yyy;
endcase 

*/

// case语句只执行一个语句，且允许重复和堆叠

// synthesis verilog_input_version verilog_2001
module top_module ( 
    input [2:0] sel, 
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out   );//

    always@(*) begin  // This is a combinational circuit
        case(sel)
                3'd0: out = data0;
                3'd1: out = data1;
                3'd2: out = data2;
                3'd3: out = data3;
                3'd4: out = data4;
                3'd5: out = data5;
                default: out =  0;
        endcase
    end

endmodule