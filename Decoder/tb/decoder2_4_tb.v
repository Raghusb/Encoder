module decoder2_4_tb;
reg [1:0] din_tb;
wire [3:0] y_tb;
reg enable_tb;

decoder2_4 DUT(
.din(din_tb),
.y(y_tb),
.enable(enable_tb)
);

initial begin
$monitor("Values of Time=%0t, din_tb=%b, y_tb=%b, enable_tb=%b", $time, din_tb, y_tb, enable_tb);
enable_tb=1'b0;
din_tb=2'b11;
#2;

enable_tb=1'b1;
din_tb=2'b00;
#1;
din_tb=2'b01;
#1;
din_tb=2'b10;
#1;
din_tb=2'b11;
#1;
$finish;
end
endmodule
