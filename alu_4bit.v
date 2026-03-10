`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2026 14:11:07
// Design Name: 
// Module Name: alu_4bit
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


module alu_4bit(input [3:0]A,input [3:0]B,input[2:0]opcode,output reg [3:0]result,output reg zero,output reg carry,output reg overflow

    );
    reg [4:0]temp;
    always@(*)
    begin
    overflow=0;
    carry=0;
    case(opcode)
    3'b000:
    begin  //ADD
           temp=A+B;
           result=temp[3:0];
           carry=temp[4];
           overflow=(A[3]==B[3])&&(result[3]!=A[3]);
    end
    
    3'b001:
    begin      //SUB
         temp=A-B;
         result=temp[3:0];
         carry=temp[4];
         overflow=(A[3]==B[3])&&(result[3]!=A[3]);
    end
    3'b010:result=A&B;
    3'b011:result=A|B;
    3'b100:result=A^B;
    3'b101:result=~A;
    3'b110:result=(A<B)?4'b0001:4'b0000;
    default: result=4'b0000;
    endcase
    zero=(result==4'b0000);
    end
endmodule
