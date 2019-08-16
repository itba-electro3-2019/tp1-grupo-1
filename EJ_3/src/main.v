module main;
    reg [3:0] in;
    reg [1:0] sel;
    wire out;

    mux4in myMux(in, sel, out);

    integer i, j, k, l, m, n;

    initial begin
        for (i = 0; i < 2; i = i + 1) begin
            for (j = 0; j < 2; j = j + 1) begin
                for (k = 0; k < 2; k = k + 1) begin
                    for (l = 0; l < 2; l = l + 1) begin
                        for (m = 0; m < 2; m = m + 1) begin
                            for (n = 0; n < 2; n = n + 1) begin
                                sel[1] = i; sel[0] = j; in[3] = k; in[2] = l; in[1] = m; in[0] = n;
                                $display("Selector is: %b. ", sel);
                                $display("Inputs are: %b", in);
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