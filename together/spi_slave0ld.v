module spi_slave3 (
    input wire clk,
    input wire cs,
    input wire sclk,
    input wire mosi,
    input wire [7:0] lfsr_seed,
    output reg miso
);

// reg [7:0] lfsr;
reg [2:0] bit_cnt = 0;
reg [7:0] tx_buffer = 8'b0;
reg seeded = 0;

initial begin
    miso = 0;
end

// SPI Receive (shift mosi into nothing, just for protocol)
always @(posedge sclk) begin
    if (!cs) begin
        bit_cnt <= bit_cnt + 1;
    end
end

// SPI Transmit (bit by bit from tx_buffer)
always @(negedge sclk) begin
    if (!cs && bit_cnt < 8)
        miso <= tx_buffer[7 - bit_cnt];
    else
        miso <= 0;
end

// Seed LFSR once and then generate values
always @(posedge sclk) begin
    if (!cs) begin
        if (!seeded) begin
            // lfsr <= lfsr_seed;
            tx_buffer <= lfsr_seed;
            seeded <= 1;
        end else if (bit_cnt == 0) begin
            lfsr <= {lfsr[6:0], lfsr[7] ^ lfsr[5] ^ lfsr[4] ^ lfsr[3]};
            tx_buffer <= lfsr;
        end

        if (bit_cnt == 7)
            bit_cnt <= 0;
    end
end

endmodule
