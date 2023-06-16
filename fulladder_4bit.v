module fulladder_4bit(sum, carry_out, carry_in, a, b);
	input [3:0] a, b;
	input carry_in;
	output [3:0] sum;
	output carry_out;
	
	
	fulladder_1bit fa0(sum[0], c0, carry_in, a[0], b[0]);
	fulladder_1bit fa1(sum[1], c1, c0, a[1], b[1]);
	fulladder_1bit fa2(sum[2], c2, c1, a[2], b[2]);
	fulladder_1bit fa3(sum[3], carry_out, c2, a[3], b[3]);

endmodule

module fulladder_1bit(sum_out, carry_out, carry_in, ina, inb);
	input ina, inb;
	input carry_in;
	output sum_out;
	output carry_out;
	
	assign {carry_out, sum_out} = ina + inb + carry_in;
	
endmodule
