//testbench full-adder

module tb_full_adder;
	//tb signals
	reg A, B, cin;
	wire sum, cout;

	// full-adder instance
	full_adder dut (
        .A(A),
        .B(B),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
	
	//apply stimuli
	initial begin
		{A,B,cin} = 3'b000; #10;
		{A,B,cin} = 3'b001; #10;
		{A,B,cin} = 3'b010; #10;
		{A,B,cin} = 3'b011; #10;
		{A,B,cin} = 3'b100; #10;
		{A,B,cin} = 3'b101; #10;
		{A,B,cin} = 3'b110; #10;
		{A,B,cin} = 3'b111; #10;

	end

endmodule