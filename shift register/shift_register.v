module shiftregister(R, E, w, Clock, Q);
   input [3:0] R;
   input L, w, Clock;
   output reg [3:0] Q;
   integer k;

   always A(posedge Clock)
   begin
      if(E)
      begin
         Q[n-1] <= w;
         for(k=n-2;k>=0;k=k-1)
            Q[k]<=Q[k+1];
      end
   end
endmodule