module spi_slave3 (clk,
    cs,
    miso,
    mosi,
    sclk,
    lfsr_seed);
 input clk;
 input cs;
 output miso;
 input mosi;
 input sclk;
 input [15:0] lfsr_seed;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire \bit_cnt[0] ;
 wire \bit_cnt[1] ;
 wire \bit_cnt[2] ;
 wire \lfsr_inst.lfsr_out[0] ;
 wire \lfsr_inst.lfsr_out[10] ;
 wire \lfsr_inst.lfsr_out[11] ;
 wire \lfsr_inst.lfsr_out[12] ;
 wire \lfsr_inst.lfsr_out[13] ;
 wire \lfsr_inst.lfsr_out[14] ;
 wire \lfsr_inst.lfsr_out[15] ;
 wire \lfsr_inst.lfsr_out[1] ;
 wire \lfsr_inst.lfsr_out[2] ;
 wire \lfsr_inst.lfsr_out[3] ;
 wire \lfsr_inst.lfsr_out[4] ;
 wire \lfsr_inst.lfsr_out[5] ;
 wire \lfsr_inst.lfsr_out[6] ;
 wire \lfsr_inst.lfsr_out[7] ;
 wire \lfsr_inst.lfsr_out[8] ;
 wire \lfsr_inst.lfsr_out[9] ;
 wire \lfsr_inst.load_seed ;
 wire seeded;
 wire \tx_buffer[0] ;
 wire \tx_buffer[1] ;
 wire \tx_buffer[2] ;
 wire \tx_buffer[3] ;
 wire \tx_buffer[4] ;
 wire \tx_buffer[5] ;
 wire \tx_buffer[6] ;
 wire \tx_buffer[7] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;

 sky130_fd_sc_hd__mux2_1 _072_ (.A0(\tx_buffer[7] ),
    .A1(\tx_buffer[6] ),
    .S(\bit_cnt[0] ),
    .X(_057_));
 sky130_fd_sc_hd__or3b_1 _073_ (.A(\bit_cnt[1] ),
    .B(\bit_cnt[2] ),
    .C_N(_057_),
    .X(_058_));
 sky130_fd_sc_hd__mux4_1 _074_ (.A0(\tx_buffer[3] ),
    .A1(\tx_buffer[2] ),
    .A2(\tx_buffer[1] ),
    .A3(\tx_buffer[0] ),
    .S0(\bit_cnt[0] ),
    .S1(\bit_cnt[1] ),
    .X(_059_));
 sky130_fd_sc_hd__and2b_1 _075_ (.A_N(\bit_cnt[2] ),
    .B(\bit_cnt[1] ),
    .X(_060_));
 sky130_fd_sc_hd__mux2_1 _076_ (.A0(\tx_buffer[5] ),
    .A1(\tx_buffer[4] ),
    .S(\bit_cnt[0] ),
    .X(_061_));
 sky130_fd_sc_hd__a22oi_1 _077_ (.A1(\bit_cnt[2] ),
    .A2(_059_),
    .B1(_060_),
    .B2(_061_),
    .Y(_062_));
 sky130_fd_sc_hd__a21oi_1 _078_ (.A1(_058_),
    .A2(_062_),
    .B1(net1),
    .Y(_030_));
 sky130_fd_sc_hd__nor2_1 _079_ (.A(net1),
    .B(seeded),
    .Y(_000_));
 sky130_fd_sc_hd__xnor2_1 _080_ (.A(\lfsr_inst.lfsr_out[12] ),
    .B(\lfsr_inst.lfsr_out[10] ),
    .Y(_063_));
 sky130_fd_sc_hd__xor2_1 _081_ (.A(\lfsr_inst.lfsr_out[15] ),
    .B(\lfsr_inst.lfsr_out[13] ),
    .X(_064_));
 sky130_fd_sc_hd__xnor2_1 _082_ (.A(_063_),
    .B(_064_),
    .Y(_065_));
 sky130_fd_sc_hd__clkbuf_4 _083_ (.A(\lfsr_inst.load_seed ),
    .X(_066_));
 sky130_fd_sc_hd__mux2_1 _084_ (.A0(_065_),
    .A1(net2),
    .S(_066_),
    .X(_067_));
 sky130_fd_sc_hd__clkbuf_1 _085_ (.A(_067_),
    .X(_001_));
 sky130_fd_sc_hd__mux2_1 _086_ (.A0(\lfsr_inst.lfsr_out[0] ),
    .A1(net9),
    .S(_066_),
    .X(_068_));
 sky130_fd_sc_hd__clkbuf_1 _087_ (.A(_068_),
    .X(_008_));
 sky130_fd_sc_hd__mux2_1 _088_ (.A0(\lfsr_inst.lfsr_out[1] ),
    .A1(net10),
    .S(_066_),
    .X(_069_));
 sky130_fd_sc_hd__clkbuf_1 _089_ (.A(_069_),
    .X(_009_));
 sky130_fd_sc_hd__mux2_1 _090_ (.A0(\lfsr_inst.lfsr_out[2] ),
    .A1(net11),
    .S(_066_),
    .X(_070_));
 sky130_fd_sc_hd__clkbuf_1 _091_ (.A(_070_),
    .X(_010_));
 sky130_fd_sc_hd__mux2_1 _092_ (.A0(\lfsr_inst.lfsr_out[3] ),
    .A1(net12),
    .S(_066_),
    .X(_071_));
 sky130_fd_sc_hd__clkbuf_1 _093_ (.A(_071_),
    .X(_011_));
 sky130_fd_sc_hd__mux2_1 _094_ (.A0(\lfsr_inst.lfsr_out[4] ),
    .A1(net13),
    .S(_066_),
    .X(_031_));
 sky130_fd_sc_hd__clkbuf_1 _095_ (.A(_031_),
    .X(_012_));
 sky130_fd_sc_hd__mux2_1 _096_ (.A0(\lfsr_inst.lfsr_out[5] ),
    .A1(net14),
    .S(_066_),
    .X(_032_));
 sky130_fd_sc_hd__clkbuf_1 _097_ (.A(_032_),
    .X(_013_));
 sky130_fd_sc_hd__mux2_1 _098_ (.A0(\lfsr_inst.lfsr_out[6] ),
    .A1(net15),
    .S(_066_),
    .X(_033_));
 sky130_fd_sc_hd__clkbuf_1 _099_ (.A(_033_),
    .X(_014_));
 sky130_fd_sc_hd__mux2_1 _100_ (.A0(\lfsr_inst.lfsr_out[7] ),
    .A1(net16),
    .S(_066_),
    .X(_034_));
 sky130_fd_sc_hd__clkbuf_1 _101_ (.A(_034_),
    .X(_015_));
 sky130_fd_sc_hd__mux2_1 _102_ (.A0(\lfsr_inst.lfsr_out[8] ),
    .A1(net17),
    .S(_066_),
    .X(_035_));
 sky130_fd_sc_hd__clkbuf_1 _103_ (.A(_035_),
    .X(_016_));
 sky130_fd_sc_hd__mux2_1 _104_ (.A0(\lfsr_inst.lfsr_out[9] ),
    .A1(net3),
    .S(\lfsr_inst.load_seed ),
    .X(_036_));
 sky130_fd_sc_hd__clkbuf_1 _105_ (.A(_036_),
    .X(_002_));
 sky130_fd_sc_hd__mux2_1 _106_ (.A0(\lfsr_inst.lfsr_out[10] ),
    .A1(net4),
    .S(\lfsr_inst.load_seed ),
    .X(_037_));
 sky130_fd_sc_hd__clkbuf_1 _107_ (.A(_037_),
    .X(_003_));
 sky130_fd_sc_hd__mux2_1 _108_ (.A0(\lfsr_inst.lfsr_out[11] ),
    .A1(net5),
    .S(\lfsr_inst.load_seed ),
    .X(_038_));
 sky130_fd_sc_hd__clkbuf_1 _109_ (.A(_038_),
    .X(_004_));
 sky130_fd_sc_hd__mux2_1 _110_ (.A0(\lfsr_inst.lfsr_out[12] ),
    .A1(net6),
    .S(\lfsr_inst.load_seed ),
    .X(_039_));
 sky130_fd_sc_hd__clkbuf_1 _111_ (.A(_039_),
    .X(_005_));
 sky130_fd_sc_hd__mux2_1 _112_ (.A0(\lfsr_inst.lfsr_out[13] ),
    .A1(net7),
    .S(\lfsr_inst.load_seed ),
    .X(_040_));
 sky130_fd_sc_hd__clkbuf_1 _113_ (.A(_040_),
    .X(_006_));
 sky130_fd_sc_hd__mux2_1 _114_ (.A0(\lfsr_inst.lfsr_out[14] ),
    .A1(net8),
    .S(\lfsr_inst.load_seed ),
    .X(_041_));
 sky130_fd_sc_hd__clkbuf_1 _115_ (.A(_041_),
    .X(_007_));
 sky130_fd_sc_hd__and2b_1 _116_ (.A_N(net1),
    .B(\bit_cnt[0] ),
    .X(_042_));
 sky130_fd_sc_hd__and2b_1 _117_ (.A_N(\bit_cnt[0] ),
    .B(net1),
    .X(_043_));
 sky130_fd_sc_hd__nor2_1 _118_ (.A(_042_),
    .B(_043_),
    .Y(_018_));
 sky130_fd_sc_hd__nor2_1 _119_ (.A(\bit_cnt[1] ),
    .B(_042_),
    .Y(_044_));
 sky130_fd_sc_hd__and2_1 _120_ (.A(\bit_cnt[1] ),
    .B(_042_),
    .X(_045_));
 sky130_fd_sc_hd__nor2_1 _121_ (.A(_044_),
    .B(_045_),
    .Y(_019_));
 sky130_fd_sc_hd__xor2_1 _122_ (.A(\bit_cnt[2] ),
    .B(_045_),
    .X(_020_));
 sky130_fd_sc_hd__or4b_1 _123_ (.A(\bit_cnt[0] ),
    .B(\bit_cnt[1] ),
    .C(\bit_cnt[2] ),
    .D_N(seeded),
    .X(_046_));
 sky130_fd_sc_hd__buf_2 _124_ (.A(_046_),
    .X(_047_));
 sky130_fd_sc_hd__mux2_1 _125_ (.A0(\lfsr_inst.lfsr_out[8] ),
    .A1(\tx_buffer[0] ),
    .S(_047_),
    .X(_048_));
 sky130_fd_sc_hd__clkbuf_1 _126_ (.A(_048_),
    .X(_021_));
 sky130_fd_sc_hd__mux2_1 _127_ (.A0(\lfsr_inst.lfsr_out[9] ),
    .A1(\tx_buffer[1] ),
    .S(_047_),
    .X(_049_));
 sky130_fd_sc_hd__clkbuf_1 _128_ (.A(_049_),
    .X(_022_));
 sky130_fd_sc_hd__mux2_1 _129_ (.A0(\lfsr_inst.lfsr_out[10] ),
    .A1(\tx_buffer[2] ),
    .S(_047_),
    .X(_050_));
 sky130_fd_sc_hd__clkbuf_1 _130_ (.A(_050_),
    .X(_023_));
 sky130_fd_sc_hd__mux2_1 _131_ (.A0(\lfsr_inst.lfsr_out[11] ),
    .A1(\tx_buffer[3] ),
    .S(_047_),
    .X(_051_));
 sky130_fd_sc_hd__clkbuf_1 _132_ (.A(_051_),
    .X(_024_));
 sky130_fd_sc_hd__mux2_1 _133_ (.A0(\lfsr_inst.lfsr_out[12] ),
    .A1(\tx_buffer[4] ),
    .S(_047_),
    .X(_052_));
 sky130_fd_sc_hd__clkbuf_1 _134_ (.A(_052_),
    .X(_025_));
 sky130_fd_sc_hd__mux2_1 _135_ (.A0(\lfsr_inst.lfsr_out[13] ),
    .A1(\tx_buffer[5] ),
    .S(_047_),
    .X(_053_));
 sky130_fd_sc_hd__clkbuf_1 _136_ (.A(_053_),
    .X(_026_));
 sky130_fd_sc_hd__mux2_1 _137_ (.A0(\lfsr_inst.lfsr_out[14] ),
    .A1(\tx_buffer[6] ),
    .S(_047_),
    .X(_054_));
 sky130_fd_sc_hd__clkbuf_1 _138_ (.A(_054_),
    .X(_027_));
 sky130_fd_sc_hd__mux2_1 _139_ (.A0(\lfsr_inst.lfsr_out[15] ),
    .A1(\tx_buffer[7] ),
    .S(_047_),
    .X(_055_));
 sky130_fd_sc_hd__clkbuf_1 _140_ (.A(_055_),
    .X(_028_));
 sky130_fd_sc_hd__or2_1 _141_ (.A(seeded),
    .B(_000_),
    .X(_056_));
 sky130_fd_sc_hd__clkbuf_1 _142_ (.A(_056_),
    .X(_029_));
 sky130_fd_sc_hd__inv_2 _143_ (.A(net18),
    .Y(_017_));
 sky130_fd_sc_hd__dfxtp_1 _144_ (.CLK(net18),
    .D(_018_),
    .Q(\bit_cnt[0] ));
 sky130_fd_sc_hd__dfxtp_1 _145_ (.CLK(net18),
    .D(_019_),
    .Q(\bit_cnt[1] ));
 sky130_fd_sc_hd__dfxtp_1 _146_ (.CLK(net18),
    .D(_020_),
    .Q(\bit_cnt[2] ));
 sky130_fd_sc_hd__dfxtp_1 _147_ (.CLK(clk),
    .D(_021_),
    .Q(\tx_buffer[0] ));
 sky130_fd_sc_hd__dfxtp_1 _148_ (.CLK(clk),
    .D(_022_),
    .Q(\tx_buffer[1] ));
 sky130_fd_sc_hd__dfxtp_1 _149_ (.CLK(clk),
    .D(_023_),
    .Q(\tx_buffer[2] ));
 sky130_fd_sc_hd__dfxtp_1 _150_ (.CLK(clk),
    .D(_024_),
    .Q(\tx_buffer[3] ));
 sky130_fd_sc_hd__dfxtp_1 _151_ (.CLK(clk),
    .D(_025_),
    .Q(\tx_buffer[4] ));
 sky130_fd_sc_hd__dfxtp_1 _152_ (.CLK(clk),
    .D(_026_),
    .Q(\tx_buffer[5] ));
 sky130_fd_sc_hd__dfxtp_1 _153_ (.CLK(clk),
    .D(_027_),
    .Q(\tx_buffer[6] ));
 sky130_fd_sc_hd__dfxtp_1 _154_ (.CLK(clk),
    .D(_028_),
    .Q(\tx_buffer[7] ));
 sky130_fd_sc_hd__dfxtp_2 _155_ (.CLK(clk),
    .D(_000_),
    .Q(\lfsr_inst.load_seed ));
 sky130_fd_sc_hd__dfxtp_1 _156_ (.CLK(clk),
    .D(_029_),
    .Q(seeded));
 sky130_fd_sc_hd__dfxtp_1 _157_ (.CLK(_017_),
    .D(_030_),
    .Q(net19));
 sky130_fd_sc_hd__dfxtp_1 _158_ (.CLK(clk),
    .D(_001_),
    .Q(\lfsr_inst.lfsr_out[0] ));
 sky130_fd_sc_hd__dfxtp_1 _159_ (.CLK(clk),
    .D(_008_),
    .Q(\lfsr_inst.lfsr_out[1] ));
 sky130_fd_sc_hd__dfxtp_1 _160_ (.CLK(clk),
    .D(_009_),
    .Q(\lfsr_inst.lfsr_out[2] ));
 sky130_fd_sc_hd__dfxtp_1 _161_ (.CLK(clk),
    .D(_010_),
    .Q(\lfsr_inst.lfsr_out[3] ));
 sky130_fd_sc_hd__dfxtp_1 _162_ (.CLK(clk),
    .D(_011_),
    .Q(\lfsr_inst.lfsr_out[4] ));
 sky130_fd_sc_hd__dfxtp_1 _163_ (.CLK(clk),
    .D(_012_),
    .Q(\lfsr_inst.lfsr_out[5] ));
 sky130_fd_sc_hd__dfxtp_1 _164_ (.CLK(clk),
    .D(_013_),
    .Q(\lfsr_inst.lfsr_out[6] ));
 sky130_fd_sc_hd__dfxtp_1 _165_ (.CLK(clk),
    .D(_014_),
    .Q(\lfsr_inst.lfsr_out[7] ));
 sky130_fd_sc_hd__dfxtp_1 _166_ (.CLK(clk),
    .D(_015_),
    .Q(\lfsr_inst.lfsr_out[8] ));
 sky130_fd_sc_hd__dfxtp_1 _167_ (.CLK(clk),
    .D(_016_),
    .Q(\lfsr_inst.lfsr_out[9] ));
 sky130_fd_sc_hd__dfxtp_1 _168_ (.CLK(clk),
    .D(_002_),
    .Q(\lfsr_inst.lfsr_out[10] ));
 sky130_fd_sc_hd__dfxtp_1 _169_ (.CLK(clk),
    .D(_003_),
    .Q(\lfsr_inst.lfsr_out[11] ));
 sky130_fd_sc_hd__dfxtp_1 _170_ (.CLK(clk),
    .D(_004_),
    .Q(\lfsr_inst.lfsr_out[12] ));
 sky130_fd_sc_hd__dfxtp_1 _171_ (.CLK(clk),
    .D(_005_),
    .Q(\lfsr_inst.lfsr_out[13] ));
 sky130_fd_sc_hd__dfxtp_1 _172_ (.CLK(clk),
    .D(_006_),
    .Q(\lfsr_inst.lfsr_out[14] ));
 sky130_fd_sc_hd__dfxtp_1 _173_ (.CLK(clk),
    .D(_007_),
    .Q(\lfsr_inst.lfsr_out[15] ));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_65 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(cs),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(lfsr_seed[0]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(lfsr_seed[10]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(lfsr_seed[11]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(lfsr_seed[12]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(lfsr_seed[13]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(lfsr_seed[14]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(lfsr_seed[15]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(lfsr_seed[1]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(lfsr_seed[2]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(lfsr_seed[3]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(lfsr_seed[4]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(lfsr_seed[5]),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_1 input14 (.A(lfsr_seed[6]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(lfsr_seed[7]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(lfsr_seed[8]),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_1 input17 (.A(lfsr_seed[9]),
    .X(net17));
 sky130_fd_sc_hd__buf_1 input18 (.A(sclk),
    .X(net18));
 sky130_fd_sc_hd__buf_2 output19 (.A(net19),
    .X(miso));
endmodule
