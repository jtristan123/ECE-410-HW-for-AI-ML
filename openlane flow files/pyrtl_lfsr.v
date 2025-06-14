module pyrtl_lfsr (
    input wire clk,
    input wire load_seed,
    input wire [15:0] seed_in,
    output reg [15:0] lfsr_out
);

    always @(posedge clk) begin
        if (load_seed)
            lfsr_out <= seed_in;
        else
            lfsr_out <= {lfsr_out[14:0], lfsr_out[15] ^ lfsr_out[13] ^ lfsr_out[12] ^ lfsr_out[10]};
    end

endmodule
