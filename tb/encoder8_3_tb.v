module encoder8_3_tb;
reg en_tb;
reg [7:0] in_tb;
wire [2:0] y_tb;
integer m;

encoder8_3 DUT (.en(en_tb), .in(in_tb), .y(y_tb) );

initial begin
$monitor("Values of Time=%0t, en_tb=%b, in_tb=%b, y_tb=%b", $time, en_tb, in_tb, y_tb);
en_tb = 1'b0;
in_tb = 8'b0000_1000;
#1;

en_tb = 1'b1;
for (m=0; m<256; m=m+1)begin
 in_tb = m[7:0];
 #1;
 end
 
 #2;
 $finish;
 end
 
endmodule
