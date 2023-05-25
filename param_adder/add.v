module FullAdder #(parameter DATA_WIDTH = 4)(a,b,cin,sum,cout);
  input [data_width-1:0] a,b;
  input cin;
  output [data_width-1:0] sum;
  output cout;
  wire [DATA_WIDTH-1:0] carry;
  generate
    genvar i;
    for (i = 0; i < DATA_WIDTH; i = i + 1)
    begin
      FullAdders fa(
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
module FullAdder(a,b,cin,sum,cout);
  input a,b,cin;
  output sum,cout;
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (cin & (a ^ b));
endmodule
