module fulladder(x,y,z,s,c);
	input x,y,z;
	output s,c;
	assign s = (~x & ~y & z) | (~x & y & ~z) | (x & ~y & ~z) | (x & y & z);
	assign c = (x&y) | (x&z) | (y&z);
endmodule

module test();
	reg x,y,z;
	wire s,c;
	fulladder fa(x,y,z,s,c);
	initial 
	begin
		x=0;y=0;z=0;
		#1 x=0;y=0;z=1;
		#1 x=0;y=1;z=0;
		#1 x=0;y=1;z=1;
		#1 x=1;y=0;z=0;
		#1 x=1;y=0;z=1;
		#1 x=1;y=1;z=0;
		#1 x=1;y=1;z=1;
	end
	initial
	begin
		$dumpfile("fulladder.vcd");
		$dumpvars();
		$display("X\t Y\t Z\t S\t C");
		$monitor("%d\t%d\t%d\t%d\t%d",x,y,z,s,c);
	end
endmodule