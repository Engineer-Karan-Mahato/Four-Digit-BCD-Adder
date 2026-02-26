`timescale 1ns / 1ps

module tb_bcd_adder_4digit();

    reg [15:0]a, b;
    reg cin;
    wire [15:0]sum;
    wire cout;
    
    bcd_adder_4digit dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
        
    initial begin
        a = 16'h1823;   b = 16'h2613;   cin = 1'b1 ;   #10;
        a = 16'h1423;   b = 16'h2683;   cin = 1'b0 ;   #10;
        a = 16'h2473;   b = 16'h2436;   cin = 1'b0 ;   #10;
        a = 16'h2472;   b = 16'h3466;   cin = 1'b1 ;   #10;
        a = 16'h5872;   b = 16'h6426;   cin = 1'b1 ;   #10;
        a = 16'h1822;   b = 16'h4486;   cin = 1'b0 ;   #10;
        a = 16'h4853;   b = 16'h5416;   cin = 1'b0 ;   #10;
        a = 16'h4352;   b = 16'h5613;   cin = 1'b1 ;   #10;
        a = 16'h4352;   b = 16'h5523;   cin = 1'b1 ;   #10;
        a = 16'h5353;   b = 16'h5158;   cin = 1'b1 ;   #10;
        $finish;
    end
    
endmodule
