`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2019 00:24:16
// Design Name: 
// Module Name: Arithmetic_logic_unit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Arithmetic_logic_unit(
input [7:0]a,
input [7:0]b,
input [3:0]alu_select,
output carry_out,
output [7:0]alu_out
);

reg [7:0] out;
wire [8:0] tmp;
assign alu_out=out;
assign tmp={1'b0,a}+{1'b0,b};
assign carry_out=tmp[8];

always @(*)
begin
case(alu_select)
4'b0000: //Addition
out=a+b;
4'b0001: //Substraction
out=a-b;
4'b0010: //Multiplication
out=a*b;
4'b0011: //Division
out=a/b;
4'b0100: //Logical left shift
out=a<<1;
4'b0101: //Logical right shift
out=a>>1;
4'b0110: //Rotate left
out={a[6:0],a[7]};
4'b0111: //Rotate right
out={a[0],a[7:1]};
4'b1000: //Logical and
out=a&b;
4'b1001: //Logical or
out=a|b;
4'b1010: //Logical Xor
out=a^b;
4'b1011: //Logical nor
out=~(a|b);
4'b1100: //Logical nand
out=~(a&b);
4'b1101: //Logical Xnor
out=~(a^b);
4'b1110: //Greater comparision
out=((a>b)?8'd1:8'd0);
4'b1111: //Equal comparision
out=((a==b)?8'd1:8'd0);
default:out=a+b;
endcase
end

endmodule
