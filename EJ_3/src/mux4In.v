<<<<<<< HEAD
module mux4in (x, sel, y);
    input [3:0] x;
    input [1:0] sel;                      // sel selects the exit (x[3], x[2], x[1], x[0]).
    output reg y;

    always @(sel or x) begin
        if (sel == 0)
            assign y = x[0];
        else if (sel == 1)
            assign y = x[1];
        else if (sel == 2)
            assign y = x[2];
        else if (sel == 3)
            assign y = x[3];

    end

=======
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

>>>>>>> Adding EJ_1
endmodule