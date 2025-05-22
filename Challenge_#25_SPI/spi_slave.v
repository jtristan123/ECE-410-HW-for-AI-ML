module spi_slave (
    input wire clk,
    input wire cs,
    input wire sclk,
    input wire mosi,
    output reg miso
);

reg [7:0] shift_reg = 8'b11001100;
reg [2:0] bit_cnt = 0;

initial begin
    miso = 0;
end

always @(posedge sclk) begin
    if (!cs) begin
        shift_reg = {shift_reg[6:0], mosi};
        bit_cnt <= bit_cnt + 1;
    end
end

always @(negedge sclk) begin
    if (!cs && bit_cnt < 8)
        miso <= shift_reg[7 - bit_cnt];
    else
        miso <= 0;
end

endmodule
