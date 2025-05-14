`timescale 1ns/1ns
`include "comparador.sv"

module tb_comparador;

    logic [1:0]a;
    logic [1:0]b;
    logic x;

    comparador uut0(.A(a),.B(b),.X(x));

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0,tb_comparador);
        a[1] = 1;
        a[0] = 0;
        b[1] = 1;
        b[0] = 1;
        #10;
        a[1] = 0;
        a[0] = 1;
        b[1] = 0;
        b[0] = 1;
        #10;
        a[1] = 1;
        a[0] = 0;
        b[1] = 1;
        b[0] = 0;
        #10;
        a[1] = 1;
        a[0] = 0;
        b[1] = 0;
        b[0] = 1;
        #10;
        $finish;
    end

endmodule