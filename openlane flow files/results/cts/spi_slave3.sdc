###############################################################################
# Created by write_sdc
# Sat Jun 14 01:33:43 2025
###############################################################################
current_design spi_slave3
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cs}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[10]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[11]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[12]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[13]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[14]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[15]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[4]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[5]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[6]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[7]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[8]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {lfsr_seed[9]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {mosi}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {sclk}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {miso}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {miso}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cs}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mosi}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sclk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {lfsr_seed[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
