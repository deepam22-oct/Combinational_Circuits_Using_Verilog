// Data flow style
module demux1to4 (
    input  d,
    input  s1, s0,
    output y0, y1, y2, y3
);
    assign y0 = d & ~s1 & ~s0;
    assign y1 = d & ~s1 &  s0;
    assign y2 = d &  s1 & ~s0;
    assign y3 = d &  s1 &  s0;
endmodule

// Behavioral Style 
module demux1to4 (
    input  d,
    input  s1, s0,
    output reg y0, y1, y2, y3
);
    always @(*) begin
        y0 = 0; y1 = 0; y2 = 0; y3 = 0;
        case ({s1, s0})
            2'b00: y0 = d;
            2'b01: y1 = d;
            2'b10: y2 = d;
            2'b11: y3 = d;
        endcase
    end
endmodule
