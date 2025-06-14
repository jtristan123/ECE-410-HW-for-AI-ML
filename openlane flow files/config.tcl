set ::env(DESIGN_NAME) spi_slave3

set ::env(VERILOG_FILES) [list \
    $::env(DESIGN_DIR)/spi_slave3.v \
    $::env(DESIGN_DIR)/pyrtl_lfsr.v ]

set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) "10.0"

set ::env(SYNTH_STRATEGY) "AREA 0"

