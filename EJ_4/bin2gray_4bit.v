module bin2gray_4bit(a,b,c,d,s1,s2,s3,s4);
// declaration of I/O
    input a,b,c,d;
    output s1,s2,s3,s4;

// assignation of each output bit
    assign s1 = a;
    assign s2 = (~a & b) | (a & ~b);
    assign s3 = (~c & b) | (c & ~b);
    assign s4 = (~c & d) | (c & ~d);

endmodule