/*===========================================================================
										HALF ADDER
=============================================================================

Description:
	This is a half adder module using behavioral modeling.
	
Design Engineer:
		Desiree Valois

Date: May 07, 2026
----------------------------------------------------------------------------*/

module half_adder(sum,carry,A,B);
	//ports
	input A, B;
	output reg sum, carry;
	
	//half adder
	always @ (A,B) begin
		case({A,B})
			2'b00: {carry,sum} = 2'b00;
			2'b01: {carry,sum} = 2'b01;
			2'b10: {carry,sum} = 2'b01;
			2'b11: {carry,sum} = 2'b10;
			default: {carry,sum} = 2'b00;
		endcase
	end
endmodule

