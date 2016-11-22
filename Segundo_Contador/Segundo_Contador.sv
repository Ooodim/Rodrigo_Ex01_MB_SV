module Segundo_Contador(input logic CLK, R, output logic[3:0] O);
	logic DIR;
	
	always_ff @(posedge CLK or posedge R)
		if (R) begin
			DIR <= 0;
			O <= 4'd0;
		end else begin
			if (DIR)
				if (O == 4'd0)
					DIR <= 0;
				else
					O <= O - 4'd1; 
      		else
				if (O == 4'd15)
					DIR <= 1;
				else
					O <= O + 4'd1;
		end
  
endmodule
