/* normal 1 bit Full-Adder*/
module FullAdder(   input wire x,
                    input wire y,
                    input wire cin,
                    output wire cout,
                    output wire sum);
    xor(out1, x, y);
    xor(sum, out1, cin);
    and(out2, x, y);
    and(out3, out1, cin);
    or(cout, out2, out3); 

endmodule

