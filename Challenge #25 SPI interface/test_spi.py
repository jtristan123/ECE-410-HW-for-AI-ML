# test_spi.py
import cocotb
from cocotb.triggers import RisingEdge
from cocotb.binary import BinaryValue

@cocotb.test()
async def spi_send_receive(dut):
    # Set initial values
    dut.sclk <= 0
    dut.mosi <= 0
    dut.cs <= 1

    await RisingEdge(dut.clk)  # wait a clock to sync

    # Activate chip select
    dut.cs <= 0
    data_out = 0b10101010
    data_in = 0

    for i in range(8):
        bit = (data_out >> (7 - i)) & 1
        dut.mosi <= bit
        await RisingEdge(dut.clk)
        dut.sclk <= 1
        await RisingEdge(dut.clk)
        data_in = (data_in << 1) | int(dut.miso.value)
        dut.sclk <= 0

    dut.cs <= 1
    print(f"Received from Verilog: {bin(data_in)}")
