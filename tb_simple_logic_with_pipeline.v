`timescale 1ns / 1ps

module tb_simple_logic_with_pipeline();
	// Control Signals
	reg reset, clock;
	
	// In/Out Signals
	reg [2:0] a, b, c, d;
	wire [7:0] y;
	
	simple_logic_with_pipeline Wp1(.a(a), .b(b), .c(c), .d(d), .reset(reset), .clock(clock), .y(y));
	
	initial begin
		clock = 1'b1;
		reset = 1'b1;
		
		a = 3'd1;
		b = 3'd2;
		c = 3'd3;
		d = 3'd4;
		
		#400 $stop;
	end
	
	always begin
		#20 clock = !clock;
	end
	
	always begin
		#40 a = a + 3'd1; b = b + 3'd1; c = c + 3'd1; d = d + 3'd1;
	end
endmodule
