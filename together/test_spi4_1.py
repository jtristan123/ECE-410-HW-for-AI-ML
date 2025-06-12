import random
import cocotb
from cocotb.triggers import Timer
from GA import run_ga_with_rng  #Just import here


@cocotb.test()
async def spi_send_receive(dut):
    # 🔁 Clock generator for the main logic clock
    async def clk_gen():
        while True:
            dut.clk.value = 0
            await Timer(5, units='ns')
            dut.clk.value = 1
            await Timer(5, units='ns')

    cocotb.start_soon(clk_gen())

    # 🎲 Seed the LFSR
    seed = random.getrandbits(16)
    dut.lfsr_seed.value = seed
    print(f"🎲 Seeded Verilog LFSR with: {seed:016b}")
    await Timer(20, units='ns')  # allow LFSR to latch the seed

    # ⬇️ Begin SPI session
    dut.cs.value = 0
    dut.sclk.value = 0
    await Timer(10, units='ns')

    for i in range(5):  # Pull 5 values
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

        print(f"🔁 LFSR SPI Output [{i}]: {result:08b}")
        print(f"🧪 LFSR internal state: {dut.lfsr_out.value}")
        await Timer(1, units='us')  # allow LFSR to advance

#run_ga_with_rng = run_ga_with_rng  # Use the imported function



