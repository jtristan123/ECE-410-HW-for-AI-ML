module spi_slave3 (
    input wire clk,
    input wire cs,
    input wire sclk,
    input wire mosi,
    input wire [15:0] lfsr_seed,
    output reg miso
);

    reg [7:0] tx_buffer = 8'b0;
    reg [2:0] bit_cnt = 0;
    reg seeded = 0;
    reg load_seed = 0;

    wire [15:0] lfsr_out;

    // Instantiate the external LFSR
    pyrtl_lfsr lfsr_inst (
        .clk(clk),
        .load_seed(load_seed),
        .seed_in(lfsr_seed),
        .lfsr_out(lfsr_out)
    );

    initial begin
        miso = 0;
    end

    // SPI Receive tracking
    always @(posedge sclk) begin
        if (!cs)
            bit_cnt <= bit_cnt + 1;
    end

    // SPI Transmit
    always @(negedge sclk) begin
        if (!cs && bit_cnt < 8)
            miso <= tx_buffer[7 - bit_cnt];
        else
            miso <= 0;
    end

    // LFSR seeding and output capture
    always @(posedge clk) begin
        if (!seeded && !cs) begin
            load_seed <= 1;
            seeded <= 1;
        end else begin
            load_seed <= 0;
        end

        if (bit_cnt == 0 && seeded)
            tx_buffer <= lfsr_out[15:8];  // You can change to [7:0] if you want
    end

endmodule

