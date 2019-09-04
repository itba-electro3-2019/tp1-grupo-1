

module Ej5( input wire      [3:0]    x,
            input wire      [3:0]    y,
            output wire     [7:0]   bcd_out,
            output reg              error  );

    reg     [3:0]   valid_x, valid_y;
    wire    [7:0]   bin_product;
    FourBitMultiplier   multiplier  (valid_x, valid_y, bin_product);
    Bin2BCD             bin2bcd     (bin_product, bcd_out);
    always @(x or y) 
    begin

        if(x>=10 || y>=10) begin
            error = 1;
        end else begin
            valid_x = x;
            valid_y = y;
            error = 0;
        end
    end
endmodule