//============================================================
// Testbench for 4-Bit Johnson Counter
//============================================================

`timescale 1ns/1ps

module johnson_counter_tb;

    reg clk;
    reg reset;
    wire [3:0] q;

    // Instantiate Johnson Counter
    johnson_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation: 10 ns period
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        $dumpfile("johnson_counter.vcd");
        $dumpvars(0, johnson_counter_tb);

        clk = 0;
        reset = 1;

        #10;
        reset = 0;

        #80;

        $finish;
    end

    // Display output
    initial begin
        $monitor("Time = %0t | Reset = %b | Q = %b",
                 $time, reset, q);
    end

endmodule
