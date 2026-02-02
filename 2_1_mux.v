// Data flow style using ternary perator 
module mux2to1 (
    input  a, b,
    input  sel,
    output y
);
    assign y = sel ? b : a;
endmodule

// Behavioral style

module mux2to1 (
    input  a, b,
    input  sel,
    output reg y
);
    always @(*) begin
        if (sel)
            y = b;
        else
            y = a;
    end
endmodule
