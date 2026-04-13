/*
==========================================================
								FULL-ADDER
==========================================================
Description: Full adder act.

Design Engineer:
	Desiree C. Valois
	
Date:
	April 10, 2026
==========================================================

==========================================================
*/

module full_adder (sum, cout, A, B, cin);
	output sum, cout;
	input A, B, cin;
	
	wire w1, w2, w3;
	
	xor u1(w1, A, B);
	xor u2(sum, w1, cin);
	
	and u3(w2, w1, cin);
	and u4(w3, A, B);
	or  u5(cout, w2, w3);
	
endmodule 