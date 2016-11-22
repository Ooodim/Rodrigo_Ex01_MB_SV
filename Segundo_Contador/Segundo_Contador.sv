module Segundo_Contador(input logic CLK, R, output logic[3:0] O);
	logic DIR, AUX1, AUX2;

	always @(posedge CLK or posedge R)
		if(R) begin
			O = 4'd0;
			AUX1 = 1'b1;
			AUX2 = 1'b0;
			DIR = 1'b0;
		end else begin
			if(AUX1) begin
				if(DIR)
					O = O - 4'd1;
				else
					O = O + 4'd1;
				AUX2 = 1'b1;
			end else
			AUX1 = 1'b1;
		if((O == 4'd15 || O == 4'd0) && AUX2) begin
			AUX1 = 1'b0;
			AUX2 = 1'b0;
			DIR = ~DIR;
		end
		end
endmodule
