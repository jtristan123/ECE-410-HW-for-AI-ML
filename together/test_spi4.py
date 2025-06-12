import random
import cocotb
from cocotb.triggers import Timer
from GA import run_ga_with_rng
import time


@cocotb.test()
async def spi_send_receive(dut):
    wall_start = time.time()
    
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

    rng_pool = []

    for i in range(100):  # Pull 6000 values
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

        rng_pool.append(result)
        print(f"🔁 LFSR SPI Output [{i}]: {result:08b}")
        print(f"🧪 LFSR internal state: {dut.lfsr_out.value}")
        await Timer(1, units='us')  # allow LFSR to advance

    wall_end = time.time()
    wall_elapsed = wall_end - wall_start
    

    # ✅ Run the Genetic Algorithm using hardware RNG
        # Log wall clock timing
    start_time = time.time()
    run_ga_with_rng(rng_pool)  # Pass to GA
    end_time = time.time()
    duration = end_time - start_time
    print(f"🕒 Wall time for GA using HW RNG: {duration:.4f} seconds")
    print(f"🎲 Seed used for LFSR: {seed}")
    sim_time = cocotb.utils.get_sim_time(units='ns')
    print(f"🧮 Final simulated time: {sim_time} ns")
    print(f"🕒 Wall time for 500 SPI pulls: {wall_elapsed:.4f} seconds")
    print(f"⚡ Avg time per SPI+LFSR: {wall_elapsed / 500:.6f} sec")