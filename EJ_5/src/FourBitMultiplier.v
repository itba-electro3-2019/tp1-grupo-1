/**********************************************************
*   Simple 8 bit multiplier implemented with full         *  
*   adders and "and" gates. Following the same logic      *  
*   or with a for loop (please don't)it can               *  
*   be scaled to N bits.                                  *  
*    The idea behind this desing is to multiply           *  
*   2 four bit arrays the same way you would do it        *  
*   by hand                                               *          
*   eg.:   1001                                           *      
*         x0111                                           *  
*         ¯¯¯¯¯                                           *  
*          1001                                           *  
*         1001-                                           *  
*        1001--                                           *  
*       0000---                                           *  
*       ¯¯¯¯¯¯¯                                           *  
*       0111111                                           *  
*                                                         *  
***********************************************************/

module FourBitMultiplier    (input wire     [3:0]   x, 
                             input wire     [3:0]   y, 
                             output wire    [7:0]   out);

    reg zero = 'b0;
    and (out[0], x[0], y[0]),
        (fa0_in_x, x[1], y[0]), 
        (fa1_in_x, x[2], y[0]),
        (fa2_in_x, x[3], y[0]);

    and (fa0_in_y, x[0], y[1]),
        (fa1_in_y, x[1], y[1]),
        (fa2_in_y, x[2], y[1]),
        (fa3_in_y, x[3], y[1]);    

    FullAdder   first_row_0 (fa0_in_x, fa0_in_y, zero, fa0_cout, out[1]);
    FullAdder   first_row_1 (fa1_in_x, fa1_in_y, fa0_cout, fa1_cout, fa1_out);
    FullAdder   first_row_2 (fa2_in_x, fa2_in_y, fa1_cout, fa2_cout, fa2_out);
    FullAdder   first_row_3 (zero, fa3_in_y, fa2_cout, fa3_cout, fa3_out);    

    and (fa4_in_y, x[0], y[2]),
        (fa5_in_y, x[1], y[2]),
        (fa6_in_y, x[2], y[2]),
        (fa7_in_y, x[3], y[2]);      

    FullAdder second_row_0  (fa1_out, fa4_in_y, zero, fa4_cout, out[2]);
    FullAdder second_row_1  (fa2_out, fa5_in_y, fa4_cout, fa5_cout, fa5_out);
    FullAdder second_row_2  (fa3_out, fa6_in_y, fa5_cout, fa6_cout, fa6_out);
    FullAdder second_row_3  (fa3_cout, fa7_in_y, fa6_cout, fa7_cout, fa7_out);    

    and (fa8_in_y, x[0], y[3]),
        (fa9_in_y, x[1], y[3]),
        (fa10_in_y, x[2], y[3]),
        (fa11_in_y, x[3], y[3]);       

    FullAdder third_row_0   (fa5_out, fa8_in_y, zero, fa8_cout, out[3]);
    FullAdder third_row_1   (fa6_out, fa9_in_y, fa8_cout, fa9_cout, out[4]);
    FullAdder third_row_2   (fa7_out, fa10_in_y, fa9_cout, fa10_cout, out[5]);
    FullAdder third_row_3   (fa7_cout, fa11_in_y, fa10_cout, out[7], out[6]);     

    

endmodule
