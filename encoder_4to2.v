module encoder_4to2(i, e);
	
	input [3:0] i;
	output reg [1:0] e;
	/*
	always @(*) begin // case
		case (i)
			4'b0000: e = 2'b00;
			4'b0010: e = 2'b01;
			4'b0100: e = 2'b10;
			4'b1000: e = 2'b11;
		endcase
	end
	*/
	
	/* 
	always @(*) begin // case, default
		case (i)
			4'b0000: e = 2'b00;
			4'b0010: e = 2'b01;
			4'b0100: e = 2'b10;
			4'b1000: e = 2'b11;
			default: e = 2'bxx;
		endcase
	end
	*/

	/*
	always @(*) begin // if
		if (i[0]) e = 2'b00;
		if (i[1]) e = 2'b01;
		if (i[2]) e = 2'b10;
		if (i[3]) e = 2'b11;
	end
	*/
	
	
	always @(*) begin // if, default
		if (i[0]) e = 2'b00;
		else if (i[1]) e = 2'b01;
		else if (i[2]) e = 2'b10;
		else if (i[3]) e = 2'b11;
		else e = 2'bxx;
	end
	
	
endmodule
