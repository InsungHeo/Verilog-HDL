module HalfAdder(input x, input y, output c, output s);
	
	assign c = x ^ y;
	assign s = x & y;
	
endmodule
	