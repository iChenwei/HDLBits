/*
在设计电路时，必须首先具体考虑电路：

1、我想实现一个逻辑门；

2、我想实现一个具有输入并产生输出的组合逻辑块；

3、我想实现一组组合逻辑，紧接着一组触发器。

不要上来就写代码，这样往往与你想象的电路相差很远。

*/

//  要考虑所有可能发生的情况，必要时设置默认值。

// synthesis verilog_input_version verilog_2001
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
        else shut_off_computer = 0;
    end


    always @(*) begin
        if (~arrived)
           keep_driving = ~gas_tank_empty;
        else keep_driving = 0;
    end

endmodule
