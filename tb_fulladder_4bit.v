module tb_fulladder_4bit;
  
  // Inputs
  reg [3:0] a;
  reg [3:0] b;
  reg carry_in;
  
  // Outputs
  wire [3:0] sum;
  wire carry_out;
  
  // Instantiate the Unit Under Test (UUT)
  fulladder_4bit uut (sum, carry_out, carry_in, a, b);
  
  
  // Initialize Inputs
  initial begin
    a = 4'b0000;
    b = 4'b0001;
    carry_in = 0;
  end
  
  // Stimulus
  always #5 begin
    // Increment input values every 5 time units
    a = a + 1;
    b = b + 2;
  end

  initial 
    #50 $finish;  
	 
endmodule
