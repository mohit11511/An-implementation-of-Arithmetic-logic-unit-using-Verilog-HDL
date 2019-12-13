`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2019 01:43:03
// Design Name: 
// Module Name: Arithmetic_logic_unit_tb
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


module Arithmetic_logic_unit_tb();

reg [7:0] a;
reg [7:0] b;
reg [3:0] alu_select;
wire carry_out;
wire [7:0] alu_out;
integer i;

Arithmetic_logic_unit alu1(.a(a),.b(b),.alu_select(alu_select),.carry_out(carry_out),.alu_out(alu_out));
initial
begin
a=8'h0A;
b=8'h09;
alu_select=4'h0;
for(i=0;i<=15;i=i+1)
begin
alu_select=alu_select+8'h01;
#10;
end
end

endmodule
