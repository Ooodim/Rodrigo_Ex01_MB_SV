module TB;
   logic CLK, R;
   logic[3:0] O;
	Primeiro_Contador TC1(.CLK(CLK), .O(O), .R(R));
   initial
		begin
			R = 1;
			CLK = 0;
			#5;
			R = 0;
			$display(O);

			repeat(100) begin
				if(CLK)
					$display(O);
					CLK = ~CLK;
            #5;
        end
    end
endmodule
