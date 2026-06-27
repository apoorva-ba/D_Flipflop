`timescale 1ns/1ps

module d_flip_flop_tb;

reg clk;
reg reset;
reg D;
wire Q;

d_flip_flop uut (
    .clk(clk),
    .reset(reset),
    .D(D),
    .Q(Q)
);

// Clock Generation
always #5 clk = ~clk;

initial
begin
    // Generate VCD file
    $dumpfile("d_flip_flop.vcd");
    $dumpvars(0, d_flip_flop_tb);

    $display("Time\tclk\treset\tD\tQ");
    $monitor("%0t\t%b\t%b\t%b\t%b",
             $time, clk, reset, D, Q);

    clk = 0;
    reset = 1;
    D = 0;

    #10;

    reset = 0;
    D = 1;

    #10;

    D = 0;

    #10;

    D = 1;

    #10;

    reset = 1;

    #10;

    reset = 0;
    D = 0;

    #10;

    D = 1;

    #10;

    $finish;
end

endmodule