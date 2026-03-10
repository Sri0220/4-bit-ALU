`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2026 16:35:44
// Design Name: 
// Module Name: alu_4bit_tb
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


module alu_4bit_tb();
reg [3:0]A;
reg [3:0]B;
reg [2:0]opcode;
wire [3:0]result;
wire carry;
wire zero;
wire overflow;
alu_4bit uut(.A(A),.B(B),.opcode(opcode),.carry(carry),.zero(zero),.overflow(overflow),.result(result));
initial begin
// ADD
A = 4'b0101; B = 4'b0011; opcode = 3'b000; #10;
// SUB
A = 4'b0110; B = 4'b0010; opcode = 3'b001; #10;
// AND
A = 4'b1100; B = 4'b1010; opcode = 3'b010; #10;
// OR
A = 4'b1100; B = 4'b1010; opcode = 3'b011; #10;
// XOR
A = 4'b1100; B = 4'b1010; opcode = 3'b100; #10;
// NOT
A = 4'b1010; B = 4'b0000; opcode = 3'b101; #10;
// SLT (A < B)
A = 4'b0011; B = 4'b0101; opcode = 3'b110; #10;
// SLT (A > B)
A = 4'b0111; B = 4'b0010; opcode = 3'b110; #10;

$finish;

end

endmodule
