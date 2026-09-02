module encoder4_2_tb;
 reg [3:0] in_tb;
 reg en_tb;
 wire [1:0] y_tb;
 integer m;
 
 encoder4_2 DUT(.in(in_tb), .en(en_tb), .y(y_tb));
  
  initial begin
   $monitor ("Values of the inputs and outputs are Time=%0t, in_tb=%b, en_tb=%b, y_tb=%b", $time, in_tb, en_tb, y_tb);
   
   en_tb=1'b0;
   in_tb=4'b0010;
   #2;
   
   en_tb=1'b1;
   for(m=0;m<16;m=m+1)begin
   in_tb=m[3:0];
   #1;
   end
   
   #5;
   $finish;
   end
   
   
endmodule
