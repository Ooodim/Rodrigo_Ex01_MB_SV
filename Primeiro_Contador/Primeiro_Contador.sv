module Primeiro_Contador(input logic R, CLK, output logic[3:0] O);
	logic DIR;

	always_ff @(posedge CLK or posedge R)
		if(R) begin
			O <= 4'd0;
			DIR <= 1'b0;
		end else begin
			if(DIR == 0)
				O <= O + 4'd1;
			else
				O <= O - 4'd1;
			if (O == 4'd15) begin			
				O <= O - 4'd1;
				DIR <= 1;
			end else
				if(O == 4'd0) begin
					O <= O + 4'd1;
					DIR <= 0;
				end
		end
		
endmodule
