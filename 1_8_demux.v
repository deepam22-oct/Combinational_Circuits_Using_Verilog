// Behavioral style 

module demux1to8 (
    input  d,
    input  [2:0]s,
    output reg [7:0]y
);
    always @(*) begin
        y = 8'b0;
        case (s)
            3'b000: y[0]= d;
            3'b001: y[1] = d;
            3'b010: y[2] = d;
            3'b011: y[3] = d;
            3'b100: y[4] = d;
            3'b101: y[5] = d;
            3'b110: y[6] = d;
            3'b111: y[7] = d;
        endcase
    end
endmodule

// Behavioral modling exam friendly 

module demux1to8 (
    input  d,
    input  [2:0]s,
    output reg [7:0] y
);
    always @(*) begin
        y = 8'b0;                 // clear all outputs
        y[s] = d;        // route data to selected output
    end
endmodule



// code for n-bit demux 
module demux #(
    parameter N = 3               // number of select lines
)(
    input              d,          // data input
    input  [N-1:0]     sel,        // select lines
    output reg [(1<<N)-1:0] y      // 2^N outputs
);

    integer i;

    always @(*) begin
        y = { (1<<N){1'b0} };      // clear all outputs
        y[sel] = d;               // route input to selected output
    end

endmodule
