module decoder2_4(
input [1:0] din,
output reg [3:0] y,
input enable

    );
    
    always@(*)
    begin
    if(!enable)
    y=4'b0000;
    else
    begin
    case(din)
    2'b00: y=4'b0001;
    2'b01: y=4'b0010;
    2'b10: y=4'b0100;
    2'b11: y=4'b1000;
    default:y=4'b0000;
    endcase
    end
    end
endmodule
