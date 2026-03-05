module mux4to1_32bits (
    input  logic [31:0] d0, d1, d2, d3, 
    input  logic [1:0]  sel,            
    output logic [31:0] y               
);

    always_comb begin
        case (sel)
            2'b00:   y = d0;
            2'b01:   y = d1;
            2'b10:   y = d2;
            2'b11:   y = d3;
            default: y = 32'b0;
        endcase
    end

endmodule
