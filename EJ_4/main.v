module test_module;
    reg in1, in2, in3, in4;
    wire out1, out2, out3, out4;
    
    //module declaration
    bin2gray_4bit binmodule(in1, in2, in3, in4, out1, out2, out3, out4);
     
    integer i, j, k, l;

    initial begin
        for (i = 0; i < 2; i = i + 1) begin
            for (j = 0; j < 2; j = j + 1) begin
                for (k = 0; k < 2; k = k + 1) begin
                    for (l = 0; l < 2; l = l + 1)begin
                        in1= i; in2 = j; in3 = k; in4 = l;
                        $display("binario: %b %b %b %b", in1, in2, in3,in4);
                        #1;
                    end
                end
            end
        end
        $finish;
    end
 
    initial begin
        $monitor("graycode: %b %b %b %b", out1, out2, out3, out4) ;
    end

endmodule
