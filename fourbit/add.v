module ADD4(a,b,cin,cout,s);
input [3:0] a,b;
input cin;
output [3:0] s;
output cout;

wire [3:1] c;

ADD stage0(a[0],b[0],cin,c[1],s[0]);
ADD stage1(a[1],b[1],c[1],c[2],s[1]);
ADD stage2(a[2],b[2],c[2],c[3],s[2]);
ADD stage3(a[3],b[3],c[3],cout,s[3]);

endmodule


module ADD(a,b,cin,cout,s);
input a,b,cin;
output cout,s;

assign s = (a^b)^cin;
assign cout = (a&b) | (a&cin) | (b&cin);
endmodule
