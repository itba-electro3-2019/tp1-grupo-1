module main;
    reg in1, in2, in3, in4;
    reg a, b;
    wire out;

    mux4in myMux(in1, in2, in3, in4, a, b, out);

    integer i, j, k, l, m, n;

    initial begin
        for (i = 0; i < 2; i = i + 1) begin
            for (j = 0; j < 2; j = j + 1) begin
                for (k = 0; k < 2; k = k + 1) begin
                    for (l = 0; l < 2; l = l + 1) begin
                        for (m = 0; m < 2; m = m + 1) begin
                            for (n = 0; n < 2; n = n + 1) begin
                                b = i; a = j; in1 = k; in2 = l; in3 = m; in4 = n;
                                $display("Selector is: %b%b. ", b, a);
                                $display("Inputs are: %b %b %b %b. ", in1, in2, in3, in4);
                                #1;
                            end
                        end
                    end
                end
            end
        end
        $finish;
    end

    initial begin
        // monitor only executes when one of the input variable changes.
        $monitor("Outs have changed! New values are: %b", out) ;
    end

endmodule