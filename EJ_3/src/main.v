module main;
    reg [3:0] in;
    reg [1:0] sel; 
    wire outM;

    reg [1:0] code;
    wire o0, o1, o2, o3;

    mux4in myMux(in, sel, outM);
    decoder4out myDecoder(code, o0, o1, o2, o3);

    integer i, j, k, l, m, n;

    initial begin
        code = 0;
        for (i = 0; i < 2; i = i + 1) begin
            for (j = 0; j < 2; j = j + 1) begin
                for (k = 0; k < 2; k = k + 1) begin
                    for (l = 0; l < 2; l = l + 1) begin
                        for (m = 0; m < 2; m = m + 1) begin
                            for (n = 0; n < 2; n = n + 1) begin
                                sel[1] = i; sel[0] = j; in[3] = k; in[2] = l; in[1] = m; in[0] = n;
                                code[1] = i; code[0] = j;
                                $display("Selector is (or code for the DECODER): %b. ", sel);
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
        $monitor("Outs have changed! New MUX value is: %b. New DECODER value is: %b%b%b%b", outM, o3, o2, o1, o0);
    end

endmodule