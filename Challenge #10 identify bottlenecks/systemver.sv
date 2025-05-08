module QUpdateAccel #(
  parameter DATA_W = 16,        // bit‐width of Q‐values
  parameter ALPHA   = 16'h1000, // fixed‐point α
  parameter GAMMA   = 16'h2000  // fixed‐point γ
)(
  input  logic               clk,
  input  logic               rst_n,
  // Interface to Q‐table memory
  output logic [7:0]         addr_s,    // state address
  output logic [7:0]         addr_s_p,  // next‐state address
  output logic               rd_en,
  input  logic [4*DATA_W-1:0] q_s_p,     // concatenated Q[s'][0..3]
  input  logic [DATA_W-1:0]   q_s_a,     // Q[s][a]
  // Reward & control
  input  logic [DATA_W-1:0]   reward,
  input  logic [1:0]          action,
  input  logic               start,     // start one update
  output logic               done,
  // Memory write-back
  output logic               wr_en,
  output logic [DATA_W-1:0]   q_new
);

  typedef enum logic [1:0] {
    IDLE, FETCH, COMPUTE, WRITE
  } state_t;
  state_t state, next_state;

  // Pipeline regs
  logic [DATA_W-1:0] max_q, prod1, prod2, sum1, updated;

  // 1) Find max over 4 values
  always_comb begin
    logic [DATA_W-1:0] m0 = q_s_p[DATA_W*1-1 -: DATA_W];
    logic [DATA_W-1:0] m1 = q_s_p[DATA_W*2-1 -: DATA_W];
    logic [DATA_W-1:0] m2 = q_s_p[DATA_W*3-1 -: DATA_W];
    logic [DATA_W-1:0] m3 = q_s_p[DATA_W*4-1 -: DATA_W];
    max_q = m0;
    if (m1 > max_q) max_q = m1;
    if (m2 > max_q) max_q = m2;
    if (m3 > max_q) max_q = m3;
  end

  // FSM sequencing
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) state <= IDLE;
    else        state <= next_state;
  end

  always_comb begin
    // default
    next_state = state;
    rd_en       = 0;
    wr_en       = 0;
    done        = 0;
    case(state)
      IDLE: if (start) next_state = FETCH;
      FETCH: begin
        rd_en       = 1;              // fetch Q[s][a] & Q[s']
        next_state  = COMPUTE;
      end
      COMPUTE: begin
        // compute: prod1 = (1-α)*Q_old
        prod1 = (16'(1<<12) - ALPHA) * q_s_a >>> 12;
        // prod2 = α*( reward + γ*max_q )
        sum1  = reward + ((GAMMA * max_q) >>> 12);
        prod2 = (ALPHA * sum1) >>> 12;
        updated = prod1 + prod2;
        next_state = WRITE;
      end
      WRITE: begin
        wr_en      = 1;
        q_new      = updated;
        done       = 1;
        next_state = IDLE;
      end
    endcase
  end

  // addr_s, addr_s_p could be driven externally or by additional counters/registers
  // ...
endmodule
