// lfsr16.v
// 16-bit maximal-length LFSR with taps at [15,13,12,10]
// Polynomial: x^16 + x^14 + x^13 + x^11 + 1

module lfsr16 (
    input  wire       clk,
    input  wire       reset,     // synchronous reset
    output reg  [15:0] lfsr_out   // current state
);

    wire feedback = lfsr_out[15] ^ lfsr_out[13] ^ lfsr_out[12] ^ lfsr_out[10];

    always @(posedge clk) begin
        if (reset) begin
            lfsr_out <= 16'hACE1;     // seed value
        end else begin
            lfsr_out <= { lfsr_out[14:0], feedback };
        end
    end

endmodule
