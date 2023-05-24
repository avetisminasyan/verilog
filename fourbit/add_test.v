`timescale 1ns/1ps
module tb;
reg [3:0] a,b;
reg cin;
wire[3:0] s;
wire cout;

wire [4:0] result;

assign result = {cout, s};

ADD4 t(a,b,cin,cout,s);

initial begin
	a = 12;
	b = 12;
	cin = 0;
	#1;
	$display("{s, cout} = %d", {cout, s});

end
endmodule
