<<<<<<< HEAD
module decoder4out(coded, y0, y1, y2, y3);
    input [1:0] coded;
    output y0, y1, y2, y3;

    assign y0 = ~coded[1] & ~coded[0];
    assign y1 = ~coded[1] & coded[0];
    assign y2 = coded[1] & ~coded[0];
    assign y3 = coded[1] & coded[0];

endmodule
=======
module decoder4out(x1, x2, y1, y2, y3, y4);
    input x1, x2;
    output y1, y2, y3, y4;
>>>>>>> Adding EJ_1
