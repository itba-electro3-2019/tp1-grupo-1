module main;
reg     [3:0]   x;
reg     [3:0]   y;
wire    [7:0]   out;
wire            error;

Ej5 dut(x, y, out, error);


    initial 
    begin
            x = 3;  
            y = 2;
            #1;
            if(error)
                $display("FATAL ERROR: either %d or %d is not a valid input", x, y);
            else
                $display("%d times %d is %b or %h",x,y,out,out);
            x = 1;
            y = 0;
            #1;
           if(error)
                $display("FATAL ERROR: either %d or %d is not a valid input", x, y);
            else
                $display("%d times %d is %b or %h",x,y,out,out);
            x = 5;
            y = 4;
            #1;
            if(error)
                $display("FATAL ERROR: either %d or %d is not a valid input", x, y);
            else
                $display("%d times %d is %b or %h",x,y,out,out);
            x = 9;
            y = 9;
            #1;
            if(error)
                $display("FATAL ERROR: either %d or %d is not a valid input", x, y);
            else
                $display("%d times %d is %b or %h",x,y,out,out);
            x = 8;
            y = 7;
            #1;
            if(error)
                $display("FATAL ERROR: either %d or %d is not a valid input", x, y);
            else
                $display("%d times %d is %b or %h",x,y,out,out);
            x = 4;
            y = 2;
            #1;
            if(error)
                $display("FATAL ERROR: either %d or %d is not a valid input", x, y);
            else
                $display("%d times %d is %b or %h",x,y,out,out);
            x = 2;
            y = 4;
            #1;
            if(error)
                $display("FATAL ERROR: either %d or %d is not a valid input", x, y);
            else
                $display("%d times %d is %b or %h",x,y,out,out);
            x = 10;
            y = 0;
            #1
            if(error)
                $display("FATAL ERROR: either %d or %d is not a valid input", x, y);
            else
                $display("%d times %d is %b or %h",x,y,out,out);

            $finish;

    end

endmodule