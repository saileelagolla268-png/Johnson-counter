//============================================================
// 4-Bit Johnson Counter
// Description : 4-bit Johnson Counter using Verilog HDL
//============================================================

`timescale 1ns/1ps

module johnson_counter (
    input  wire       clk,
    input  wire       reset,
    output reg  [3:0] q
);

    // Johnson Counter operation
    // Inverted MSB is fed back to LSB
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 4'b0000;
        else
            q <= {q[2:0], ~q[3]};
    end

endmodule
