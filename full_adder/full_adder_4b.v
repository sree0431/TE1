module full_adder_4b ( S, A, B);
    //ports
    input [3:0] A, B;
    output [4:0] S;
    wire w0, w1, w2;
    //full-adder instance
    half_adder ha(
        .sum(S[0]),
        .carry(w0),
        .A(A[0]),
        .B(B[0])
    );
    full_adder fa0(
        .sum(S[1]),
        .cout(w1),
        .cin(w0),
        .A(A[1]),
        .B(B[1])
    );
    full_adder fa1(
        .sum(S[2]),
        .cout(w2),
        .cin(w1),
        .A(A[2]),
        .B(B[2])
    );
    full_adder fa2(
        .sum(S[3]),
        .cout(S[4]),
        .cin(w2),
        .A(A[3]),
        .B(B[3])
    );
	 
endmodule