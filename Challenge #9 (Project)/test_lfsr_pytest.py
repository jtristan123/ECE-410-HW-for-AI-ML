# test_lfsr_pytest.py
import pytest
from cocotb_test.simulator import run

@pytest.mark.parametrize("simulator", ["iverilog"])
def test_lfsr(simulator):
    run(
        verilog_sources=["lfsr16.v"],
        toplevel="lfsr16",
        module="tests.test_lfsr",   # your cocotb test module
        sim_build="sim_build/" + simulator,
        simulator=simulator
    )
