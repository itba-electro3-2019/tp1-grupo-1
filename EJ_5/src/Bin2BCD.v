module Bin2BCD(input wire  [7:0]   bin,
                output wire [7:0]  bcd );
    reg [3:0] units, tenths;
    assign bcd = {tenths, units};
    always@(bin)
    begin
        tenths = (bin - bin % 10)/10;
        units = bin % 10;
    end
endmodule
