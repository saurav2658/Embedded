//AND GATE
/*`timescale 1ns / 1ps
    module andGate;
    	// Inputs
    	reg x;
    	reg y;
    	// Outputs
    	wire z;
    	// Instantiate the Unit Under Test (UUT)
    	andComp uut (
    		.x(x), 
    		.y(y), 
    		.z(z)
    	);
     
    	initial begin
    		// Initialize Inputs
    	x = 0;
    	y = 0;
     
    	#20 x = 1;
    	#20 y = 1;
    	#20 x = 0;	
    	//#20 x = 1;	  
    	//#40;
        end  
     
    		initial begin
    		 $monitor("x=%d,y=%d,z=%d \n",x,y,z);
         end
     
    endmodule
     
     

    module andComp(
        input x,
        input y,
        output z
        );
     
    assign z = x&y;
     
    endmodule

/*
OUTPUT
x y     Z
0 0     0
0 1     0
1 0     0
1 1     1
*/
*/



//NAND GATE
/*`timescale 1ns / 1ps
    module nandGate;
    	// Inputs
    	reg x;
    	reg y;
    	// Outputs
    	wire z;
    	// Instantiate the Unit Under Test (UUT)
    	nandComp uut (
    		.x(x), 
    		.y(y), 
    		.z(z)
    	);
     
    	initial begin
    		// Initialize Inputs
    	x = 0;
    	y = 0;
     
    	#20 x = 1;
    	#20 y = 1;
    	#20 x = 0;	
    	//#20 x = 1;	  
    	//#40;
        end  
     
    		initial begin
    		 $monitor("x=%d,y=%d,z=%d \n",x,y,z);
         end
     
    endmodule
     
     

    module nandComp(
        input x,
        input y,
        output z
        );
     
    assign z = ~(x&y);
     
    endmodule
/*
OUTPUT
x y     Z
0 0     1
0 1     1
1 0     1
1 1     0
*/
*/

//NOR GATE
/*`timescale 1ns / 1ps
    module norGate;
    	// Inputs
    	reg x;
    	reg y;
    	// Outputs
    	wire z;
    	// Instantiate the Unit Under Test (UUT)
    	norComp uut (
    		.x(x), 
    		.y(y), 
    		.z(z)
    	);
     
    	initial begin
    		// Initialize Inputs
    	x = 0;
    	y = 0;
     
    	#20 x = 1;
    	#20 y = 1;
    	#20 x = 0;	
    	//#20 x = 1;	  
    	//#40;
        end  
     
    		initial begin
    		 $monitor("x=%d,y=%d,z=%d \n",x,y,z);
         end
     
    endmodule
     
     

    module norComp(
        input x,
        input y,
        output z
        );
     
    assign z = ~(x|y);
     
    endmodule
/*
OUTPUT
x y     Z
0 0     1
0 1     0
1 0     0
1 1     0
*/
*/

//OR GATE
/*`timescale 1ns / 1ps
    module orGate;
    	// Inputs
    	reg x;
    	reg y;
    	// Outputs
    	wire z;
    	// Instantiate the Unit Under Test (UUT)
    	orComp uut (
    		.x(x), 
    		.y(y), 
    		.z(z)
    	);
     
    	initial begin
    		// Initialize Inputs
    	x = 0;
    	y = 0;
     
    	#20 x = 1;
    	#20 y = 1;
    	#20 x = 0;	
    	//#20 x = 1;	  
    	//#40;
        end  
     
    		initial begin
    		 $monitor("x=%d,y=%d,z=%d \n",x,y,z);
         end
     
    endmodule
     
     

    module orComp(
        input x,
        input y,
        output z
        );
     
    assign z = (x|y);
     
    endmodule
/*
OUTPUT
x y     Z
0 0     0
0 1     1
1 0     1
1 1     1
*/
*/

//XOR GATE
/*`timescale 1ns / 1ps
    module xorGate;
    	// Inputs
    	reg x;
    	reg y;
    	// Outputs
    	wire z;
    	// Instantiate the Unit Under Test (UUT)
    	xorComp uut (
    		.x(x), 
    		.y(y), 
    		.z(z)
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
    		 $monitor("x=%d,y=%d,z=%d \n",x,y,z);
         end
     
    endmodule
     
     

    module xorComp(
        input x,
        input y,
        output z
        );
     
    assign z = ~((x&y)|(~x&~y));
     
    endmodule
/*
OUTPUT
x y     Z
0 0     0
0 1     1
1 0     1
1 1     0
*/
*/

//XNOR GATE
/*
 `timescale 1ns / 1ps
    module xnorGate;
    	// Inputs
    	reg x;
    	reg y;
    	// Outputs
    	wire z;
    	// Instantiate the Unit Under Test (UUT)
    	xnorComp uut (
    		.x(x), 
    		.y(y), 
    		.z(z)
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
    		 $monitor("x=%d,y=%d,z=%d \n",x,y,z);
         end
     
    endmodule
     
     

    module xnorComp(
        input x,
        input y,
        output z
        );
     
    assign z = ((x&y)|(~x&~y));
     
    endmodule
/*
OUTPUT
x y     Z
0 0     1
0 1     0
1 0     0
1 1     1
*/
*/

//NOT GATE
/* `timescale 1ns / 1ps
    module notGate;
    	// Inputs
    	reg x;
    	
    	// Outputs
    	wire z;
    	// Instantiate the Unit Under Test (UUT)
    	notComp uut (
    		.x(x),  
    		.z(z)
    	);
     
    	initial begin
    		// Initialize Inputs
    	x = 0;
     
    	#20 x = 1;
        end  
     
    		initial begin
    		 $monitor("x=%d,z=%d \n",x,z);
    		 end
     
    endmodule
     
         module notComp(
        input x,
        
        output z
        );
     
    assign z = ~x;
endmodule
/*
OUTPUT
x   Z
0   1
1   0
*/
*/
