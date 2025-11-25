module tb_ripple_carry_adder;

    reg  [3:0] A, B;
    reg        Cin;
    wire [3:0] Sum;
    wire       Cout;

    ripple_carry_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $monitor("Time=%0t | A=%b | B=%b | Cin=%b | Sum=%b | Cout=%b",
                  $time, A, B, Cin, Sum, Cout);

        Cin = 0; A = 4'b0000; B = 4'b0000; #10;
        Cin = 0; A = 4'b0001; B = 4'b0001; #10;
        Cin = 0; A = 4'b0101; B = 4'b1010; #10;
        Cin = 0; A = 4'b1111; B = 4'b0001; #10;
        Cin = 1; A = 4'b1111; B = 4'b1111; #10;
        Cin = 0; A = 4'b1000; B = 4'b1000; #10;

        $stop;
    end

endmodule
