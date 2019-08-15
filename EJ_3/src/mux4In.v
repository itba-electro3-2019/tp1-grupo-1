module mux4in (x1, x2, x3, x4, a, b, y);
    input x1, x2, x3, x4, a, b;         // a and b select the exit (x1, x2, x3, x4) where a is the LSB.
    output reg y;

    reg curr;                           // Curr is the register the mux is copying currently./*  */
    integer sel;

    always @(a or b) begin
        sel = a + b*2;

        if (sel == 0)
            assign curr = x4;
        else if (sel == 1)
            assign curr = x3;
        else if (sel == 2)
            assign curr = x2;
        else if (sel == 3)
            assign curr = x1;

    end
    
    always @(curr) begin
        assign y = curr;
    end

endmodule