`timescale 1ns / 1ps

module top_tb;
 
    wire clk;
    wire cout_ones;
    wire cout_tens;
    wire [7:0] q_ones;
    wire [7:0] q_tens;
   
    clk_gen u_clk_gen (
        clk
    );

    cd4017 u_ones (
        clk,
        1'b0,
        1'b1,
        cout_ones,
        q_ones
    );

    cd4017 u_tens (
        cout_ones,
        1'b0,
        1'b1,
        cout_tens,
        q_tens
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, top_tb); 
        
        #1000; 
        $finish; 
    end
endmodule