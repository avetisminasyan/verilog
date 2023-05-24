module TestFullAdder;
  parameter DATA_WIDTH = 4;
  reg [DATA_WIDTH-1:0] a, b;
  reg cin;
  wire [DATA_WIDTH-1:0] sum;
  wire cout;
  
  FullAdder #(.DATA_WIDTH(DATA_WIDTH)) full_adder (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );
  
  initial begin
    // Testbench
    $monitor($time, " a=%b b=%b cin=%b sum=%b cout=%b", a, b, cin, sum, cout);
    
    // Test scenario
    a = 4'b1010;
    b = 4'b0110;
    cin = 1;
    #5;
    
    // Add more test cases if needed
    
    $finish;
  end
endmodule
