module top_module (
    input clk,
    input reset,
    input ena,
    output pm,
    output [7:0] hh,
    output [7:0] mm,
    output [7:0] ss
);

    always @(posedge clk) begin
        if(reset == 1'b1) ss[7:0] <= 8'h00;
        else if (ena == 1'b1)
        begin
            if(ss == 8'h59)  ss <= 8'h00;
            else if (ss[3:0] == 4'h9)
            begin
                ss[3:0] <= 4'h0;
                ss[7:4] <= ss[7:4] + 1'h1;
            end
            else
            begin
                ss[3:0] <= ss[3:0] + 1'h1;
                ss[7:4] <= ss[7:4];
            end
        end
        else
        begin
            ss <= ss;
        end
    end

    always @(posedge clk)
    begin
        if(reset == 1'b1) mm[7:0] <= 8'h00;
        else if(ena == 1'b1 && ss == 8'h59) 
        begin
            if(mm == 8'h59)
            begin
                mm <= 8'h00;
            end
            else if(mm[3:0] == 4'h9) 
            begin
                mm[3:0] <= 4'h0;
                mm[7:4] <= mm[7:4] + 1;
            end
            else 
            begin
                mm[3:0] <= mm[3:0] + 1;
                mm[7:4] <= mm[7:4];
            end
        end
        else 
        begin
            mm <= mm;
        end
    end 
    
    always @(posedge clk) begin
        if(reset == 1'b1) hh <= 8'h12;
        
        else if(ena == 1'b1  && mm == 8'h59 && ss == 8'h59)
        begin
            if(hh == 8'h12)
            begin
                hh <= 8'h01;
            end
            else if(hh == 8'h09)
            begin
                hh <= 8'h10;
            end
            else
            begin
                hh[3:0] <= hh[3:0] + 1'h1;
                hh[7:4] <= hh[7:4];
            end
        end
        else 
        begin
            hh <= hh;    
        end
    end

    always @(posedge clk) 
    begin
        if(reset == 1'b1) 
            pm <= 0;
        else if (ena == 1'b1 && hh == 8'h11 && mm == 8'h59 && ss == 8'h59)
            pm <= ~pm;
        else 
            pm <= pm;
    end

endmodule