 //HALF ADDER
 `timescale 1ns / 1ps
    module halfAdder;
    	// Inputs
    	reg x;
    	reg y;
    	// Outputs
    	wire z;
        wire c;
    	// Instantiate the Unit Under Test (UUT)
    	halfAdderComp uut (
    		.x(x), 
    		.y(y), 
    		.S(S),
            .C(C)
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
    		 $monitor("x=%d,y=%d\tS=%d,C=%d \n",x,y,S,C);
    		 end
     
    endmodule

 module halfAdderComp(
        input x,
        input y,
        output S,
        output C
        );
     
    assign S = ((x|y)&(~x|~y));
    assign C = x&y;
     
    endmodule

/*
OUTPUT
x y     S C
0 0     0 0
0 1     1 0
1 0     1 0
1 1     0 1
*/
