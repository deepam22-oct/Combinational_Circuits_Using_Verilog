// Behavioral Modeling
module B_to_G(
  input [3:0]binary ,
  output [3:0] gray 
);

  assign gray[3] = binary[3] ;
  assign gray[2] = binary[2] ^ binary[3] ;
  assign gray[1] = binary[1] ^ binary[2] ;
  assign gray[0] = binary[0] ^ binary[1] ;

endmodule


// For parametarized 

module B_to_G #(
    parameter WIDTH = 32  
)(
    input  [WIDTH-1:0] binary,  // Binary input
    output [WIDTH-1:0] gray     // Gray code output
);
    genvar i;

    assign gray[WIDTH-1] = binary[WIDTH-1];
    generate
        for (i = WIDTH-2; i >= 0; i = i - 1) begin : gen_gray
            assign gray[i] = binary[i+1] ^ binary[i];
        end
    endgenerate
endmodule
