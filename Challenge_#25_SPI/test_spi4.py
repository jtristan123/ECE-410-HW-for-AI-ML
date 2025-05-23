import random
import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def spi_send_receive(dut):
    seed = random.getrandbits(8)
    dut.lfsr_seed.value = seed
    print(f"Seeded LFSR with: {seed:08b}")
    await Timer(10, units='ns')  # Let Verilog init with the seed

    dut.cs.value = 0
    dut.sclk.value = 0
    await Timer(10, units='ns')
    
    for i in range(5):  # Read 5 values
        received_bits = []
        for _ in range(8):
            dut.sclk.value = 0
            await Timer(10, units='ns')
            dut.sclk.value = 1
            await Timer(10, units='ns')
            val = dut.miso.value
            received_bits.append(int(val) if val.is_resolvable else 0)

        result = 0
        for bit in received_bits:
            result = (result << 1) | bit
        print(f"LFSR Output  test_spi4.py[{i}]: {result:08b}")
        await Timer(50, units='ns')
