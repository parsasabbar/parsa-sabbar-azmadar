module addern(carryin , X, Y , S , carryout );
	input carryin;
	input [31:0] X,Y;
	output reg [31:0] S;
	output reg carryout;
	reg [32:0] C;
	integer k;
	
	always @(X, Y, carryin)
	begin
		C[0] = carryin;
		for(k=0; k<n ; k=k+1)
		begin 
			S[k] = X[k] ^ Y[k] ^ C[k];
			C[k+1] = (X[k] & Y[k]) | (X[k] & C[k]) | (Y[k] & C[k]);
		end
		carryout = C[n];
	end
endmodule

			