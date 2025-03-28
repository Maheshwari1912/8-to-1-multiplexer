/////////////////////////////////////////////////////////////////////////////////
// Author Name: Maheshwari Ratthapuram
// Date: 28.03.2025
// Design Name: 8_to_1_mux
// Description: This Verilog design implements an 8-to-1 multiplexer, which selects 
//              one out of eight input signals based on a 3-bit select signal and 
//              forwards it to the output.
//////////////////////////////////////////////////////////////////////////////////


module mux8_1(
input [7:0] i,
input [2:0] s,
output reg y
    );
    
   always@(*)begin
   case(s)
    3'b000:y<=i[0];
    3'b001:y<=i[1];
    3'b010:y<=i[2];
    3'b011:y<=i[3];
    3'b100:y<=i[4];
    3'b101:y<=i[5];
    3'b110:y<=i[6];
    3'b111:y<=i[7]; 
    default:$display("invalid input");
    endcase
    end
endmodule
