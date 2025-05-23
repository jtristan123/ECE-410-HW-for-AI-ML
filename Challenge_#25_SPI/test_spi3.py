import cocotb
from cocotb.triggers import RisingEdge, FallingEdge, Timer


@cocotb.test()
async def spi_send_receive(dut):
    dut.cs.value = 0
    dut.sclk.value = 0

    for i in range(5):  # read 5 LFSR values
        received_bits = []
        for _ in range(8):
            dut.sclk.value = 0
            await Timer(10, units='ns')
            dut.sclk.value = 1
            await Timer(10, units='ns')
            val = dut.miso.value
            if val.is_resolvable:
                received_bits.append(int(val))
            else:
                received_bits.append(0)

        result = 0
        for bit in received_bits:
            result = (result << 1) | bit

        print(f"LFSR Output  test_spi3.py[{i}]: {result:08b}")
        await Timer(50, units='ns')  # gap between reads
