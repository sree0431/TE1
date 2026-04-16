/*
==========================================================
								XOR-GATE
==========================================================
Description: XOR gate using gate-level modeling

Design Engineer:
	Desiree C. Valois
	
Date:
	April 16, 2026
==========================================================

==========================================================
*/

module xor_gate(Y, A, B);
	input A;
	input B;
	output Y;
	
	//xor_gate
	assign Y = (~A & B) + (A + ~B);

endmodule 