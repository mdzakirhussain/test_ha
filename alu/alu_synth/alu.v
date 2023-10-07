module alu(a,b,opcode,result);

input [3:0]a,b;
input [2:0]opcode;
output reg [3:0]result;

always@(*)
case(opcode)
3'b000: result=a+b; // add
3'b001: result=a-b; // subtract
3'b010: result=a*b; // multiplication
3'b011: result= a & b; // AND operation
3'b100: result= a | b; // OR operation
3'b101: result= ~(a&b); // NAND operation
3'b110: result= ~(a|b); // NOR operation
3'b111: result= a ^ b; // XOR operation
endcase

endmodule