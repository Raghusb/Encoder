module priority_encoder83(
output reg  valid,
input [7:0] in,
input en,
output reg [2:0] y

    );
    
    always@(*)
    begin
    if(!en)begin
    y=3'b000;
    valid=1'b0;
    end else
    begin
    valid=1'b1;
    if (in[7]) 
    y=3'b111;
    else if (in[6])
    y=3'b110;
    else if (in[5])
    y=3'b101;
    else if (in[4])
    y=3'b100;
    else if (in[3])
    y=3'b011;
    else if (in[2])
    y= 3'b010;
    else if(in[1])
    y=3'b001;
    else begin 
    y=3'b000;
    valid=1'b0;
    end
    end
    end  
    
endmodule
