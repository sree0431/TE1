//testbench
module tb_full_adder;

    reg A, B, cin;      // inputs
    wire sum, cout;     // outputs

    full_adder dut (
		.sum(sum), 
		.cout(cout), 
		.A(A), .B(B), 
		.cin(cin)\
		);

    initial begin

        A=0; B=0; cin=0; #10;
        A=1; B=0; cin=0; #10;
        A=0; B=1; cin=0; #10;
        A=1; B=1; cin=0; #10;
        A=0; B=0; cin=1; #10;
        A=1; B=0; cin=1; #10;
        A=0; B=1; cin=1; #10;
        A=1; B=1; cin=1; #10;

    end

endmodule 