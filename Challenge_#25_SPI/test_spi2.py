import cocotb
from cocotb.triggers import RisingEdge, FallingEdge, Timer

@cocotb.test()
async def test_read_lfsr(dut):
    # Initialize chip select and clock
    dut.cs.value = 0
    dut.sclk.value = 0

    received_bits = []

    for i in range(8):
        dut.sclk.value = 0
        await Timer(10, units='ns')
        dut.sclk.value = 1
        await Timer(10, units='ns')
        received_bits.append(int(dut.miso.value))

    # Convert bits to byte
    result = 0
    for bit in received_bits:
        result = (result << 1) | bit

    print(f"LFSR SPI output spi_test2.py: {result:08b} ({result})")
