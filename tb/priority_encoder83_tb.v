module priority_encoder83_tb;
reg en_tb;
reg [7:0] in_tb;
wire [2:0] y_tb;
wire valid_tb;
integer m;

priority_encoder83 DUT (.in(in_tb), .en(en_tb), .y(y_tb), .valid(valid_tb));

initial begin
$monitor ("Values of Time=%0t,en_tb=%b,in_tb =%b, y_tb=%b, valid_tb=%b", $time, en_tb, in_tb, y_tb, valid_tb);

en_tb=1'b0;
in_tb=8'b0000_0010;
#2;

for(m=0;m<256;m=m+1)begin
en_tb=1'b1;
in_tb=m[7:0];
#1;
end

#3;
$finish;
end
endmodule
