import pyrtl

# --- 1) Define a 16-bit register for the LFSR state ---
lfsr_reg = pyrtl.Register(bitwidth=16, name='lfsr_reg')

# --- 2) Expose the current LFSR state as a module output ---
lfsr_out = pyrtl.Output(bitwidth=16, name='lfsr_out')
lfsr_out <<= lfsr_reg

# --- 3) Tap bits [15,13,12,10] for a maximal-length LFSR ---
tap15 = lfsr_reg[15]
tap13 = lfsr_reg[13]
tap12 = lfsr_reg[12]
tap10 = lfsr_reg[10]

# --- 4) Compute the feedback bit (XOR of taps) ---
feedback = tap15 ^ tap13 ^ tap12 ^ tap10

# --- 5) Shift left and insert feedback at LSB each cycle ---
next_state = pyrtl.concat(lfsr_reg[14:0], feedback)
lfsr_reg.next <<= next_state

# --- 6) At the end, export the design to Verilog ---
with open('lfsr16.v', 'w') as f:
    pyrtl.OutputToVerilog(f)
