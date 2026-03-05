`timescale 1ns/1ps

module tb_mux4to1;
    // Sinais para conectar ao MUX
    logic [31:0] d0, d1, d2, d3;
    logic [1:0]  sel;
    logic [31:0] y;

    mux4to1_32bits dut (
        .d0(d0), .d1(d1), .d2(d2), .d3(d3),
        .sel(sel),
        .y(y)
    );

    initial begin
        d0 = 32'hAAAAAAAA; 
        d1 = 32'hBBBBBBBB;
        d2 = 32'hCCCCCCCC;
        d3 = 32'hDDDDDDDD;

        $display("Tempo | Sel | Saída Y");
        $monitor("%4t |  %b  | %h", $time, sel, y);
       
        sel = 2'b00; #10; 
        sel = 2'b01; #10; 
        sel = 2'b10; #10; 
        sel = 2'b11; #10; 

        #10 $stop;
    end
endmodule
