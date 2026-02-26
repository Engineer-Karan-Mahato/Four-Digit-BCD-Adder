`timescale 1ns / 1ps

module bcd_adder_1digit(
        input [3:0]a, b, input cin, output [3:0] sum, output cout
    );
    
    wire [3:0]sum_ba1;
    wire cout_ba1, correction;
    
    // Binary addition
    binary_adder_4bit ba1 (
        .a(a), 
        .b(b), 
        .cin(cin), 
        .sum(sum_ba1), 
        .cout(cout_ba1)
    );
    
    // BCD correction logic
    assign correction = cout_ba1 | (sum_ba1[3] & sum_ba1[2]) | (sum_ba1[3] & sum_ba1[1]);
    
    // Add 6 if correction required
    binary_adder_4bit ba2 (
        .a(sum_ba1), 
        .b(correction ? 4'b0110 : 4'b0000), //checking if correction required 
        .cin(1'b0), 
        .sum(sum), 
        .cout(cout)
    );
    
endmodule
