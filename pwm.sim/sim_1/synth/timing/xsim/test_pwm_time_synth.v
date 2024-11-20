// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.2 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Wed Nov 20 20:12:16 2024
// Host        : LAPTOP-DWAYNE running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/hdway/Documents/vivado/pwm/pwm.sim/sim_1/synth/timing/xsim/test_pwm_time_synth.v
// Design      : pwm
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* duty_res = "4" *) (* pwm_freq = "6250000" *) (* sys_clk = "125000000" *) 
(* NotValidForBitStream *)
module pwm
   (RST,
    EN,
    CLK,
    DUTY,
    P);
  input RST;
  input EN;
  input CLK;
  input [3:0]DUTY;
  output P;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [3:0]DUTY;
  wire [3:0]DUTY_IBUF;
  wire EN;
  wire EN_IBUF;
  wire P;
  wire P_OBUF;
  wire P_i_1_n_0;
  wire RST;
  wire RST_IBUF;
  wire [4:0]duty_threshold;
  wire [7:3]duty_threshold1;
  wire \duty_threshold[0]_i_10_n_0 ;
  wire \duty_threshold[0]_i_11_n_0 ;
  wire \duty_threshold[0]_i_12_n_0 ;
  wire \duty_threshold[0]_i_13_n_0 ;
  wire \duty_threshold[0]_i_6_n_0 ;
  wire \duty_threshold[0]_i_7_n_0 ;
  wire \duty_threshold[0]_i_8_n_0 ;
  wire \duty_threshold[0]_i_9_n_0 ;
  wire \duty_threshold[1]_i_2_n_0 ;
  wire \duty_threshold[1]_i_3_n_0 ;
  wire \duty_threshold[1]_i_5_n_0 ;
  wire \duty_threshold[1]_i_6_n_0 ;
  wire \duty_threshold[2]_i_2_n_0 ;
  wire \duty_threshold[2]_i_3_n_0 ;
  wire \duty_threshold[4]_i_4_n_0 ;
  wire \duty_threshold[4]_i_5_n_0 ;
  wire \duty_threshold[4]_i_6_n_0 ;
  wire \duty_threshold_reg[0]_i_2_n_0 ;
  wire \duty_threshold_reg[0]_i_3_n_0 ;
  wire \duty_threshold_reg[0]_i_4_n_0 ;
  wire \duty_threshold_reg[0]_i_5_n_0 ;
  wire \duty_threshold_reg[1]_i_4_n_0 ;
  wire \duty_threshold_reg[4]_i_2_n_0 ;
  wire \duty_threshold_reg[4]_i_2_n_1 ;
  wire \duty_threshold_reg[4]_i_2_n_2 ;
  wire \duty_threshold_reg[4]_i_2_n_3 ;
  wire \duty_threshold_reg[4]_i_3_n_2 ;
  wire \freq_count[0]_i_1_n_0 ;
  wire \freq_count[2]_i_1_n_0 ;
  wire \freq_count[4]_i_1_n_0 ;
  wire [4:0]freq_count_reg;
  wire [4:0]p_0_in;
  wire [4:1]p_0_in__0;
  wire pwm_active;
  wire pwm_active_i_1_n_0;
  wire pwm_active_i_2_n_0;
  wire [3:0]\NLW_duty_threshold_reg[4]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_duty_threshold_reg[4]_i_3_O_UNCONNECTED ;
PULLDOWN pulldown_EN
       (.O(EN));
PULLDOWN pulldown_RST
       (.O(RST));

initial begin
 $sdf_annotate("test_pwm_time_synth.sdf",,,,"tool_control");
end
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF \DUTY_IBUF[0]_inst 
       (.I(DUTY[0]),
        .O(DUTY_IBUF[0]));
  IBUF \DUTY_IBUF[1]_inst 
       (.I(DUTY[1]),
        .O(DUTY_IBUF[1]));
  IBUF \DUTY_IBUF[2]_inst 
       (.I(DUTY[2]),
        .O(DUTY_IBUF[2]));
  IBUF \DUTY_IBUF[3]_inst 
       (.I(DUTY[3]),
        .O(DUTY_IBUF[3]));
  IBUF EN_IBUF_inst
       (.I(EN),
        .O(EN_IBUF));
  OBUF P_OBUF_inst
       (.I(P_OBUF),
        .O(P));
  LUT2 #(
    .INIT(4'h7)) 
    P_i_1
       (.I0(RST_IBUF),
        .I1(EN_IBUF),
        .O(P_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    P_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(pwm_active),
        .Q(P_OBUF),
        .R(P_i_1_n_0));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \duty_threshold[0]_i_1 
       (.I0(\duty_threshold_reg[0]_i_2_n_0 ),
        .I1(\duty_threshold_reg[0]_i_3_n_0 ),
        .I2(DUTY_IBUF[0]),
        .I3(\duty_threshold_reg[0]_i_4_n_0 ),
        .I4(DUTY_IBUF[1]),
        .I5(\duty_threshold_reg[0]_i_5_n_0 ),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h7FF0000F000FFEE0)) 
    \duty_threshold[0]_i_10 
       (.I0(duty_threshold1[5]),
        .I1(duty_threshold1[6]),
        .I2(duty_threshold1[3]),
        .I3(duty_threshold1[7]),
        .I4(duty_threshold1[4]),
        .I5(\duty_threshold_reg[4]_i_3_n_2 ),
        .O(\duty_threshold[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFCC0033F033FF880)) 
    \duty_threshold[0]_i_11 
       (.I0(duty_threshold1[5]),
        .I1(duty_threshold1[6]),
        .I2(duty_threshold1[7]),
        .I3(duty_threshold1[3]),
        .I4(duty_threshold1[4]),
        .I5(\duty_threshold_reg[4]_i_3_n_2 ),
        .O(\duty_threshold[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF000)) 
    \duty_threshold[0]_i_12 
       (.I0(duty_threshold1[6]),
        .I1(duty_threshold1[5]),
        .I2(duty_threshold1[7]),
        .I3(duty_threshold1[3]),
        .I4(duty_threshold1[4]),
        .I5(\duty_threshold_reg[4]_i_3_n_2 ),
        .O(\duty_threshold[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFEE0011F011FFCC0)) 
    \duty_threshold[0]_i_13 
       (.I0(duty_threshold1[5]),
        .I1(duty_threshold1[6]),
        .I2(duty_threshold1[7]),
        .I3(duty_threshold1[3]),
        .I4(duty_threshold1[4]),
        .I5(\duty_threshold_reg[4]_i_3_n_2 ),
        .O(\duty_threshold[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFCC0077F077FF880)) 
    \duty_threshold[0]_i_6 
       (.I0(duty_threshold1[5]),
        .I1(duty_threshold1[6]),
        .I2(duty_threshold1[7]),
        .I3(duty_threshold1[3]),
        .I4(duty_threshold1[4]),
        .I5(\duty_threshold_reg[4]_i_3_n_2 ),
        .O(\duty_threshold[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0011F011FFEE0)) 
    \duty_threshold[0]_i_7 
       (.I0(duty_threshold1[5]),
        .I1(duty_threshold1[6]),
        .I2(duty_threshold1[3]),
        .I3(duty_threshold1[7]),
        .I4(duty_threshold1[4]),
        .I5(\duty_threshold_reg[4]_i_3_n_2 ),
        .O(\duty_threshold[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFEE0033F033FFCC0)) 
    \duty_threshold[0]_i_8 
       (.I0(duty_threshold1[5]),
        .I1(duty_threshold1[6]),
        .I2(duty_threshold1[7]),
        .I3(duty_threshold1[3]),
        .I4(duty_threshold1[4]),
        .I5(\duty_threshold_reg[4]_i_3_n_2 ),
        .O(\duty_threshold[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h7FF8800F800FFFF0)) 
    \duty_threshold[0]_i_9 
       (.I0(duty_threshold1[6]),
        .I1(duty_threshold1[5]),
        .I2(duty_threshold1[3]),
        .I3(duty_threshold1[7]),
        .I4(duty_threshold1[4]),
        .I5(\duty_threshold_reg[4]_i_3_n_2 ),
        .O(\duty_threshold[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAFD5D4540A808)) 
    \duty_threshold[1]_i_1 
       (.I0(DUTY_IBUF[0]),
        .I1(\duty_threshold[1]_i_2_n_0 ),
        .I2(DUTY_IBUF[2]),
        .I3(\duty_threshold[1]_i_3_n_0 ),
        .I4(DUTY_IBUF[1]),
        .I5(\duty_threshold_reg[1]_i_4_n_0 ),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h5555566A566AAAAA)) 
    \duty_threshold[1]_i_2 
       (.I0(duty_threshold1[5]),
        .I1(duty_threshold1[6]),
        .I2(duty_threshold1[7]),
        .I3(duty_threshold1[3]),
        .I4(\duty_threshold_reg[4]_i_3_n_2 ),
        .I5(duty_threshold1[4]),
        .O(\duty_threshold[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB333333C333CCCCC)) 
    \duty_threshold[1]_i_3 
       (.I0(duty_threshold1[6]),
        .I1(duty_threshold1[5]),
        .I2(duty_threshold1[3]),
        .I3(duty_threshold1[7]),
        .I4(\duty_threshold_reg[4]_i_3_n_2 ),
        .I5(duty_threshold1[4]),
        .O(\duty_threshold[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3333344C344CCCCC)) 
    \duty_threshold[1]_i_5 
       (.I0(duty_threshold1[6]),
        .I1(duty_threshold1[5]),
        .I2(duty_threshold1[7]),
        .I3(duty_threshold1[3]),
        .I4(\duty_threshold_reg[4]_i_3_n_2 ),
        .I5(duty_threshold1[4]),
        .O(\duty_threshold[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555544A544AAAAA)) 
    \duty_threshold[1]_i_6 
       (.I0(duty_threshold1[5]),
        .I1(duty_threshold1[6]),
        .I2(duty_threshold1[7]),
        .I3(duty_threshold1[3]),
        .I4(\duty_threshold_reg[4]_i_3_n_2 ),
        .I5(duty_threshold1[4]),
        .O(\duty_threshold[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF4FBB040)) 
    \duty_threshold[2]_i_1 
       (.I0(DUTY_IBUF[0]),
        .I1(DUTY_IBUF[1]),
        .I2(\duty_threshold[2]_i_2_n_0 ),
        .I3(DUTY_IBUF[2]),
        .I4(\duty_threshold[2]_i_3_n_0 ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h011FFFFFFEE00000)) 
    \duty_threshold[2]_i_2 
       (.I0(duty_threshold1[3]),
        .I1(duty_threshold1[7]),
        .I2(\duty_threshold_reg[4]_i_3_n_2 ),
        .I3(duty_threshold1[4]),
        .I4(duty_threshold1[5]),
        .I5(duty_threshold1[6]),
        .O(\duty_threshold[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h011FFFFFF8800000)) 
    \duty_threshold[2]_i_3 
       (.I0(duty_threshold1[7]),
        .I1(duty_threshold1[3]),
        .I2(\duty_threshold_reg[4]_i_3_n_2 ),
        .I3(duty_threshold1[4]),
        .I4(duty_threshold1[5]),
        .I5(duty_threshold1[6]),
        .O(\duty_threshold[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h03FFFFFFE8000000)) 
    \duty_threshold[3]_i_1 
       (.I0(duty_threshold1[3]),
        .I1(\duty_threshold_reg[4]_i_3_n_2 ),
        .I2(duty_threshold1[4]),
        .I3(duty_threshold1[6]),
        .I4(duty_threshold1[5]),
        .I5(duty_threshold1[7]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h3FFF8000)) 
    \duty_threshold[4]_i_1 
       (.I0(duty_threshold1[4]),
        .I1(duty_threshold1[7]),
        .I2(duty_threshold1[6]),
        .I3(duty_threshold1[5]),
        .I4(\duty_threshold_reg[4]_i_3_n_2 ),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'h664C)) 
    \duty_threshold[4]_i_4 
       (.I0(DUTY_IBUF[3]),
        .I1(DUTY_IBUF[1]),
        .I2(DUTY_IBUF[0]),
        .I3(DUTY_IBUF[2]),
        .O(\duty_threshold[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE738)) 
    \duty_threshold[4]_i_5 
       (.I0(DUTY_IBUF[1]),
        .I1(DUTY_IBUF[2]),
        .I2(DUTY_IBUF[3]),
        .I3(DUTY_IBUF[0]),
        .O(\duty_threshold[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA65A)) 
    \duty_threshold[4]_i_6 
       (.I0(DUTY_IBUF[3]),
        .I1(DUTY_IBUF[0]),
        .I2(DUTY_IBUF[2]),
        .I3(DUTY_IBUF[1]),
        .O(\duty_threshold[4]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(duty_threshold[0]),
        .R(1'b0));
  MUXF7 \duty_threshold_reg[0]_i_2 
       (.I0(\duty_threshold[0]_i_6_n_0 ),
        .I1(\duty_threshold[0]_i_7_n_0 ),
        .O(\duty_threshold_reg[0]_i_2_n_0 ),
        .S(DUTY_IBUF[2]));
  MUXF7 \duty_threshold_reg[0]_i_3 
       (.I0(\duty_threshold[0]_i_8_n_0 ),
        .I1(\duty_threshold[0]_i_9_n_0 ),
        .O(\duty_threshold_reg[0]_i_3_n_0 ),
        .S(DUTY_IBUF[2]));
  MUXF7 \duty_threshold_reg[0]_i_4 
       (.I0(\duty_threshold[0]_i_10_n_0 ),
        .I1(\duty_threshold[0]_i_11_n_0 ),
        .O(\duty_threshold_reg[0]_i_4_n_0 ),
        .S(DUTY_IBUF[2]));
  MUXF7 \duty_threshold_reg[0]_i_5 
       (.I0(\duty_threshold[0]_i_12_n_0 ),
        .I1(\duty_threshold[0]_i_13_n_0 ),
        .O(\duty_threshold_reg[0]_i_5_n_0 ),
        .S(DUTY_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(duty_threshold[1]),
        .R(1'b0));
  MUXF7 \duty_threshold_reg[1]_i_4 
       (.I0(\duty_threshold[1]_i_5_n_0 ),
        .I1(\duty_threshold[1]_i_6_n_0 ),
        .O(\duty_threshold_reg[1]_i_4_n_0 ),
        .S(DUTY_IBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(duty_threshold[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(duty_threshold[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \duty_threshold_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(duty_threshold[4]),
        .R(1'b0));
  CARRY4 \duty_threshold_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\duty_threshold_reg[4]_i_2_n_0 ,\duty_threshold_reg[4]_i_2_n_1 ,\duty_threshold_reg[4]_i_2_n_2 ,\duty_threshold_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({DUTY_IBUF[2:0],1'b0}),
        .O(duty_threshold1[6:3]),
        .S({DUTY_IBUF[2],\duty_threshold[4]_i_4_n_0 ,\duty_threshold[4]_i_5_n_0 ,\duty_threshold[4]_i_6_n_0 }));
  CARRY4 \duty_threshold_reg[4]_i_3 
       (.CI(\duty_threshold_reg[4]_i_2_n_0 ),
        .CO({\NLW_duty_threshold_reg[4]_i_3_CO_UNCONNECTED [3:2],\duty_threshold_reg[4]_i_3_n_2 ,\NLW_duty_threshold_reg[4]_i_3_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DUTY_IBUF[3]}),
        .O({\NLW_duty_threshold_reg[4]_i_3_O_UNCONNECTED [3:1],duty_threshold1[7]}),
        .S({1'b0,1'b0,1'b1,DUTY_IBUF[3]}));
  LUT1 #(
    .INIT(2'h1)) 
    \freq_count[0]_i_1 
       (.I0(freq_count_reg[0]),
        .O(\freq_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \freq_count[1]_i_1 
       (.I0(freq_count_reg[0]),
        .I1(freq_count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \freq_count[2]_i_1 
       (.I0(freq_count_reg[0]),
        .I1(freq_count_reg[1]),
        .I2(freq_count_reg[2]),
        .O(\freq_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \freq_count[3]_i_1 
       (.I0(freq_count_reg[1]),
        .I1(freq_count_reg[0]),
        .I2(freq_count_reg[2]),
        .I3(freq_count_reg[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF80000)) 
    \freq_count[4]_i_1 
       (.I0(freq_count_reg[0]),
        .I1(freq_count_reg[1]),
        .I2(freq_count_reg[3]),
        .I3(freq_count_reg[2]),
        .I4(freq_count_reg[4]),
        .I5(P_i_1_n_0),
        .O(\freq_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \freq_count[4]_i_2 
       (.I0(freq_count_reg[2]),
        .I1(freq_count_reg[0]),
        .I2(freq_count_reg[1]),
        .I3(freq_count_reg[3]),
        .I4(freq_count_reg[4]),
        .O(p_0_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \freq_count_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\freq_count[0]_i_1_n_0 ),
        .Q(freq_count_reg[0]),
        .R(\freq_count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \freq_count_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(freq_count_reg[1]),
        .R(\freq_count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \freq_count_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\freq_count[2]_i_1_n_0 ),
        .Q(freq_count_reg[2]),
        .R(\freq_count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \freq_count_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(freq_count_reg[3]),
        .R(\freq_count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \freq_count_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(freq_count_reg[4]),
        .R(\freq_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B2BB22B2)) 
    pwm_active_i_1
       (.I0(duty_threshold[4]),
        .I1(freq_count_reg[4]),
        .I2(duty_threshold[3]),
        .I3(freq_count_reg[3]),
        .I4(pwm_active_i_2_n_0),
        .I5(P_i_1_n_0),
        .O(pwm_active_i_1_n_0));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    pwm_active_i_2
       (.I0(freq_count_reg[0]),
        .I1(duty_threshold[0]),
        .I2(freq_count_reg[1]),
        .I3(duty_threshold[1]),
        .I4(freq_count_reg[2]),
        .I5(duty_threshold[2]),
        .O(pwm_active_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pwm_active_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(pwm_active_i_1_n_0),
        .Q(pwm_active),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
