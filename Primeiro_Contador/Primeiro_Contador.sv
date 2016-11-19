module Primeiro_Contador(input logic R, CLK, output logic[3:0] O);
	logic DIR;
	always @(posedge CLK or posedge R) begin
		if (R) begin
			DIR <= 1'd0;
			O <= 4'd0;
		end else begin
			if (DIR == 0)
				O <= O + 4'd1;
			else
				O <= O - 4'd1;
			if (O == 4'd15 || O == 4'd0)
				DIR = ~DIR;
		end
	end
endmodule
