`timescale 1ns / 1ps
module halfSub;
// Inputs
reg x;
reg y;
// Outputs
wire D;
wire B;
// Instantiate the Unit Under Test (UUT)
halfSubComp uut (
.x(x),
.y(y),
.D(D),
.B(B)
);

initial begin
// Initialize Inputs
x = 0;
y = 0;

#20 y = 1;
#20 y=0;
x=1;

#20 x = 1;
y=1;
//#20 x = 1;
//#40;
end

initial begin
$display("Half Subtractor\n");
$display("X Y\tD B");
$monitor("%d %d\t%d %d \n",x,y,D,B);
end

endmodule

module halfSubComp(
input x,
input y,
output D,
output B
);

assign D = (x&(~y))|((~x)&y);
assign B = ~x&y;

endmodule

/*
Output

x y D B
0 0 0 0
0 1 1 1
1 0 1 0
1 1 0 0

*/