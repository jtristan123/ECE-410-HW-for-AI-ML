module spi_slave(
    input clk,
    input cs,
    input sclk,
    input mosi,
    output reg miso
);

reg [7:0] shift_reg = 8'b11001100;  // Example response
reg [2:0] bit_cnt = 0;

always @(posedge sclk) begin
    if (!cs) begin
        shift_reg = {shift_reg[6:0], mosi}; // Shift in
        bit_cnt <= bit_cnt + 1;
    end
end

always @(negedge sclk) begin
    if (!cs)
        miso <= shift_reg[7 - bit_cnt];
end

endmodule
