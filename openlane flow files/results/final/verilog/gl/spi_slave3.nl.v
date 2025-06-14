// This is the unpowered netlist.
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
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
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
 wire net1;
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
 wire net2;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net3;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net4;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire seeded;
 wire \tx_buffer[0] ;
 wire \tx_buffer[1] ;
 wire \tx_buffer[2] ;
 wire \tx_buffer[3] ;
 wire \tx_buffer[4] ;
 wire \tx_buffer[5] ;
 wire \tx_buffer[6] ;
 wire \tx_buffer[7] ;

 sky130_fd_sc_hd__fill_1 FILLER_0_0_103 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_34 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_42 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_62 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_85 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_10_22 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_32 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_50 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_58 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_74 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_83 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_85 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_93 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_11_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11_57 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_11_65 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_80 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11_92 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_102 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_12_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_41 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_12_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_66 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_12_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_13_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_13_38 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_13_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_13_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_71 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_14_11 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_14_22 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_14_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_45 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_101 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_15_25 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_89 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_11 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_16_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_61 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_85 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_103 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_17_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_37 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_41 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_17_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_69 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_17_76 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_85 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_97 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_103 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_1_36 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_1_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_61 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_74 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_91 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_45 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_82 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3_23 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_3_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_37 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_14 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_24 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_4_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_37 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_52 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_70 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_5_34 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_40 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_5_60 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_79 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_6_101 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_18 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_35 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_45 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_35 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_52 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_6 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_8_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_52 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_82 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_103 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_9_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_73 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_38 ();
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
    .B(net20),
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
 sky130_fd_sc_hd__mux2_1 _086_ (.A0(net26),
    .A1(net9),
    .S(_066_),
    .X(_068_));
 sky130_fd_sc_hd__clkbuf_1 _087_ (.A(_068_),
    .X(_008_));
 sky130_fd_sc_hd__mux2_1 _088_ (.A0(net24),
    .A1(net10),
    .S(_066_),
    .X(_069_));
 sky130_fd_sc_hd__clkbuf_1 _089_ (.A(_069_),
    .X(_009_));
 sky130_fd_sc_hd__mux2_1 _090_ (.A0(net28),
    .A1(net11),
    .S(_066_),
    .X(_070_));
 sky130_fd_sc_hd__clkbuf_1 _091_ (.A(_070_),
    .X(_010_));
 sky130_fd_sc_hd__mux2_1 _092_ (.A0(net27),
    .A1(net12),
    .S(_066_),
    .X(_071_));
 sky130_fd_sc_hd__clkbuf_1 _093_ (.A(_071_),
    .X(_011_));
 sky130_fd_sc_hd__mux2_1 _094_ (.A0(net21),
    .A1(net13),
    .S(_066_),
    .X(_031_));
 sky130_fd_sc_hd__clkbuf_1 _095_ (.A(_031_),
    .X(_012_));
 sky130_fd_sc_hd__mux2_1 _096_ (.A0(net22),
    .A1(net14),
    .S(_066_),
    .X(_032_));
 sky130_fd_sc_hd__clkbuf_1 _097_ (.A(_032_),
    .X(_013_));
 sky130_fd_sc_hd__mux2_1 _098_ (.A0(net23),
    .A1(net15),
    .S(_066_),
    .X(_033_));
 sky130_fd_sc_hd__clkbuf_1 _099_ (.A(_033_),
    .X(_014_));
 sky130_fd_sc_hd__mux2_1 _100_ (.A0(net25),
    .A1(net16),
    .S(_066_),
    .X(_034_));
 sky130_fd_sc_hd__clkbuf_1 _101_ (.A(_034_),
    .X(_015_));
 sky130_fd_sc_hd__mux2_1 _102_ (.A0(net31),
    .A1(net17),
    .S(_066_),
    .X(_035_));
 sky130_fd_sc_hd__clkbuf_1 _103_ (.A(_035_),
    .X(_016_));
 sky130_fd_sc_hd__mux2_1 _104_ (.A0(net30),
    .A1(net3),
    .S(\lfsr_inst.load_seed ),
    .X(_036_));
 sky130_fd_sc_hd__clkbuf_1 _105_ (.A(_036_),
    .X(_002_));
 sky130_fd_sc_hd__mux2_1 _106_ (.A0(net44),
    .A1(net4),
    .S(\lfsr_inst.load_seed ),
    .X(_037_));
 sky130_fd_sc_hd__clkbuf_1 _107_ (.A(_037_),
    .X(_003_));
 sky130_fd_sc_hd__mux2_1 _108_ (.A0(net40),
    .A1(net5),
    .S(\lfsr_inst.load_seed ),
    .X(_038_));
 sky130_fd_sc_hd__clkbuf_1 _109_ (.A(_038_),
    .X(_004_));
 sky130_fd_sc_hd__mux2_1 _110_ (.A0(net46),
    .A1(net6),
    .S(\lfsr_inst.load_seed ),
    .X(_039_));
 sky130_fd_sc_hd__clkbuf_1 _111_ (.A(_039_),
    .X(_005_));
 sky130_fd_sc_hd__mux2_1 _112_ (.A0(net45),
    .A1(net7),
    .S(\lfsr_inst.load_seed ),
    .X(_040_));
 sky130_fd_sc_hd__clkbuf_1 _113_ (.A(_040_),
    .X(_006_));
 sky130_fd_sc_hd__mux2_1 _114_ (.A0(net29),
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
 sky130_fd_sc_hd__mux2_1 _125_ (.A0(net31),
    .A1(\tx_buffer[0] ),
    .S(_047_),
    .X(_048_));
 sky130_fd_sc_hd__clkbuf_1 _126_ (.A(net32),
    .X(_021_));
 sky130_fd_sc_hd__mux2_1 _127_ (.A0(net30),
    .A1(net34),
    .S(_047_),
    .X(_049_));
 sky130_fd_sc_hd__clkbuf_1 _128_ (.A(_049_),
    .X(_022_));
 sky130_fd_sc_hd__mux2_1 _129_ (.A0(\lfsr_inst.lfsr_out[10] ),
    .A1(net37),
    .S(_047_),
    .X(_050_));
 sky130_fd_sc_hd__clkbuf_1 _130_ (.A(_050_),
    .X(_023_));
 sky130_fd_sc_hd__mux2_1 _131_ (.A0(net40),
    .A1(\tx_buffer[3] ),
    .S(_047_),
    .X(_051_));
 sky130_fd_sc_hd__clkbuf_1 _132_ (.A(net41),
    .X(_024_));
 sky130_fd_sc_hd__mux2_1 _133_ (.A0(\lfsr_inst.lfsr_out[12] ),
    .A1(net42),
    .S(_047_),
    .X(_052_));
 sky130_fd_sc_hd__clkbuf_1 _134_ (.A(net43),
    .X(_025_));
 sky130_fd_sc_hd__mux2_1 _135_ (.A0(\lfsr_inst.lfsr_out[13] ),
    .A1(net35),
    .S(_047_),
    .X(_053_));
 sky130_fd_sc_hd__clkbuf_1 _136_ (.A(net36),
    .X(_026_));
 sky130_fd_sc_hd__mux2_1 _137_ (.A0(net29),
    .A1(net33),
    .S(_047_),
    .X(_054_));
 sky130_fd_sc_hd__clkbuf_1 _138_ (.A(_054_),
    .X(_027_));
 sky130_fd_sc_hd__mux2_1 _139_ (.A0(\lfsr_inst.lfsr_out[15] ),
    .A1(net38),
    .S(_047_),
    .X(_055_));
 sky130_fd_sc_hd__clkbuf_1 _140_ (.A(net39),
    .X(_028_));
 sky130_fd_sc_hd__or2_1 _141_ (.A(net20),
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
 sky130_fd_sc_hd__dfxtp_1 _147_ (.CLK(clknet_1_1__leaf_clk),
    .D(_021_),
    .Q(\tx_buffer[0] ));
 sky130_fd_sc_hd__dfxtp_1 _148_ (.CLK(clknet_1_1__leaf_clk),
    .D(_022_),
    .Q(\tx_buffer[1] ));
 sky130_fd_sc_hd__dfxtp_1 _149_ (.CLK(clknet_1_1__leaf_clk),
    .D(_023_),
    .Q(\tx_buffer[2] ));
 sky130_fd_sc_hd__dfxtp_1 _150_ (.CLK(clknet_1_1__leaf_clk),
    .D(_024_),
    .Q(\tx_buffer[3] ));
 sky130_fd_sc_hd__dfxtp_1 _151_ (.CLK(clknet_1_0__leaf_clk),
    .D(_025_),
    .Q(\tx_buffer[4] ));
 sky130_fd_sc_hd__dfxtp_1 _152_ (.CLK(clknet_1_0__leaf_clk),
    .D(_026_),
    .Q(\tx_buffer[5] ));
 sky130_fd_sc_hd__dfxtp_1 _153_ (.CLK(clknet_1_0__leaf_clk),
    .D(_027_),
    .Q(\tx_buffer[6] ));
 sky130_fd_sc_hd__dfxtp_1 _154_ (.CLK(clknet_1_0__leaf_clk),
    .D(_028_),
    .Q(\tx_buffer[7] ));
 sky130_fd_sc_hd__dfxtp_2 _155_ (.CLK(clknet_1_1__leaf_clk),
    .D(_000_),
    .Q(\lfsr_inst.load_seed ));
 sky130_fd_sc_hd__dfxtp_1 _156_ (.CLK(clknet_1_1__leaf_clk),
    .D(_029_),
    .Q(seeded));
 sky130_fd_sc_hd__dfxtp_1 _157_ (.CLK(_017_),
    .D(_030_),
    .Q(net19));
 sky130_fd_sc_hd__dfxtp_1 _158_ (.CLK(clknet_1_0__leaf_clk),
    .D(_001_),
    .Q(\lfsr_inst.lfsr_out[0] ));
 sky130_fd_sc_hd__dfxtp_1 _159_ (.CLK(clknet_1_0__leaf_clk),
    .D(_008_),
    .Q(\lfsr_inst.lfsr_out[1] ));
 sky130_fd_sc_hd__dfxtp_1 _160_ (.CLK(clknet_1_0__leaf_clk),
    .D(_009_),
    .Q(\lfsr_inst.lfsr_out[2] ));
 sky130_fd_sc_hd__dfxtp_1 _161_ (.CLK(clknet_1_0__leaf_clk),
    .D(_010_),
    .Q(\lfsr_inst.lfsr_out[3] ));
 sky130_fd_sc_hd__dfxtp_1 _162_ (.CLK(clknet_1_0__leaf_clk),
    .D(_011_),
    .Q(\lfsr_inst.lfsr_out[4] ));
 sky130_fd_sc_hd__dfxtp_1 _163_ (.CLK(clknet_1_1__leaf_clk),
    .D(_012_),
    .Q(\lfsr_inst.lfsr_out[5] ));
 sky130_fd_sc_hd__dfxtp_1 _164_ (.CLK(clknet_1_1__leaf_clk),
    .D(_013_),
    .Q(\lfsr_inst.lfsr_out[6] ));
 sky130_fd_sc_hd__dfxtp_1 _165_ (.CLK(clknet_1_1__leaf_clk),
    .D(_014_),
    .Q(\lfsr_inst.lfsr_out[7] ));
 sky130_fd_sc_hd__dfxtp_1 _166_ (.CLK(clknet_1_1__leaf_clk),
    .D(_015_),
    .Q(\lfsr_inst.lfsr_out[8] ));
 sky130_fd_sc_hd__dfxtp_1 _167_ (.CLK(clknet_1_1__leaf_clk),
    .D(_016_),
    .Q(\lfsr_inst.lfsr_out[9] ));
 sky130_fd_sc_hd__dfxtp_1 _168_ (.CLK(clknet_1_1__leaf_clk),
    .D(_002_),
    .Q(\lfsr_inst.lfsr_out[10] ));
 sky130_fd_sc_hd__dfxtp_1 _169_ (.CLK(clknet_1_0__leaf_clk),
    .D(_003_),
    .Q(\lfsr_inst.lfsr_out[11] ));
 sky130_fd_sc_hd__dfxtp_1 _170_ (.CLK(clknet_1_0__leaf_clk),
    .D(_004_),
    .Q(\lfsr_inst.lfsr_out[12] ));
 sky130_fd_sc_hd__dfxtp_1 _171_ (.CLK(clknet_1_0__leaf_clk),
    .D(_005_),
    .Q(\lfsr_inst.lfsr_out[13] ));
 sky130_fd_sc_hd__dfxtp_1 _172_ (.CLK(clknet_1_0__leaf_clk),
    .D(_006_),
    .Q(\lfsr_inst.lfsr_out[14] ));
 sky130_fd_sc_hd__dfxtp_1 _173_ (.CLK(clknet_1_0__leaf_clk),
    .D(_007_),
    .Q(\lfsr_inst.lfsr_out[15] ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__clkinv_1 clkload0 (.A(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(seeded),
    .X(net20));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(\lfsr_inst.lfsr_out[14] ),
    .X(net29));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(\lfsr_inst.lfsr_out[9] ),
    .X(net30));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(\lfsr_inst.lfsr_out[8] ),
    .X(net31));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(_048_),
    .X(net32));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(\tx_buffer[6] ),
    .X(net33));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(\tx_buffer[1] ),
    .X(net34));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(\tx_buffer[5] ),
    .X(net35));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(_053_),
    .X(net36));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(\tx_buffer[2] ),
    .X(net37));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(\tx_buffer[7] ),
    .X(net38));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\lfsr_inst.lfsr_out[4] ),
    .X(net21));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(_055_),
    .X(net39));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(\lfsr_inst.lfsr_out[11] ),
    .X(net40));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(_051_),
    .X(net41));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(\tx_buffer[4] ),
    .X(net42));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(_052_),
    .X(net43));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(\lfsr_inst.lfsr_out[10] ),
    .X(net44));
 sky130_fd_sc_hd__dlygate4sd3_1 hold26 (.A(\lfsr_inst.lfsr_out[13] ),
    .X(net45));
 sky130_fd_sc_hd__dlygate4sd3_1 hold27 (.A(\lfsr_inst.lfsr_out[12] ),
    .X(net46));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(\lfsr_inst.lfsr_out[5] ),
    .X(net22));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(\lfsr_inst.lfsr_out[6] ),
    .X(net23));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(\lfsr_inst.lfsr_out[1] ),
    .X(net24));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(\lfsr_inst.lfsr_out[7] ),
    .X(net25));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(\lfsr_inst.lfsr_out[0] ),
    .X(net26));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(\lfsr_inst.lfsr_out[3] ),
    .X(net27));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(\lfsr_inst.lfsr_out[2] ),
    .X(net28));
 sky130_fd_sc_hd__buf_1 input1 (.A(cs),
    .X(net1));
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
 sky130_fd_sc_hd__buf_2 output19 (.A(net19),
    .X(miso));
endmodule

