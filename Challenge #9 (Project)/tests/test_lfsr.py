# tests/test_lfsr.py

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge

@cocotb.test()
async def test_lfsr16_sequence(dut):
    """Verify that the 16-bit LFSR cycles through mostly unique values."""
    # Start a 100 MHz clock on dut.clk
    cocotb.start_soon(Clock(dut.clk, 10, units="ns").start())

    # Assert reset for one cycle
    dut.reset.value = 1
    await RisingEdge(dut.clk)
    dut.reset.value = 0

    seen = set()
    # Sample 1000 cycles of lfsr_out
    for _ in range(1000):
        await RisingEdge(dut.clk)
        seen.add(int(dut.lfsr_out.value))

    # Expect >90% uniqueness over 1000 samples
    assert len(seen) > 900, f"Too many repeats: got only {len(seen)} unique values"
