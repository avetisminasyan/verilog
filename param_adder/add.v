module FullAdder #(
  parameter DATA_WIDTH = 4
) (
  input [DATA_WIDTH-1:0] a,
  input [DATA_WIDTH-1:0] b,
  input cin,
  output [DATA_WIDTH-1:0] sum,
  output cout
);
  
  wire [DATA_WIDTH-1:0] carry;
  
  generate
    genvar i;
    for (i = 0; i < DATA_WIDTH; i = i + 1) begin : ADDER_GEN
      FullAdder fa(
        .a(a[i]),
        .b(b[i]),
        .cin(i == 0 ? cin : carry[i-1]),
        .sum(sum[i]),
        .cout(carry[i])
      );
    end
  endgenerate
  
  assign cout = carry[DATA_WIDTH-1];
  
endmodule

module FullAdder (
  input a,
  input b,
  input cin,
  output sum,
  output cout
);
  
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (cin & (a ^ b));
  
endmodule
