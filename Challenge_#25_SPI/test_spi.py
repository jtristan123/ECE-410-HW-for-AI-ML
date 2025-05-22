import cocotb
from cocotb.triggers import RisingEdge, Timer

@cocotb.test()
async def spi_send_receive(dut):
    # 🔁 Clock generator: toggles 'clk' every 5ns
    async def clk_gen():
        while True:
            dut.clk.value = 0
            await Timer(5, units='ns')
            dut.clk.value = 1
            await Timer(5, units='ns')

    # Start the dummy clock
    cocotb.start_soon(clk_gen())

    # 🚦 Initialize SPI lines
    dut.cs.value = 1
    dut.sclk.value = 0
    dut.mosi.value = 0

    await RisingEdge(dut.clk)

    # 🧪 Send 8 bits over SPI
    dut.cs.value = 0
    data_out = 0b10101010
    data_in = 0

    for i in range(8):
        bit = (data_out >> (7 - i)) & 1
        dut.mosi.value = bit

        await RisingEdge(dut.clk)
        dut.sclk.value = 1
        await RisingEdge(dut.clk)
        data_in = (data_in << 1) | dut.miso.value.integer
        dut.sclk.value = 0

    dut.cs.value = 1

    print(f"\nPython received from Verilog: {bin(data_in)}\n")
