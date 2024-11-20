-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2.2 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
-- Date        : Wed Nov 20 20:04:51 2024
-- Host        : LAPTOP-DWAYNE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/hdway/Documents/vivado/pwm/pwm.sim/sim_1/impl/func/xsim/test_pwm_func_impl.vhd
-- Design      : pwm
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm is
  port (
    RST : in STD_LOGIC;
    EN : in STD_LOGIC;
    CLK : in STD_LOGIC;
    DUTY : in STD_LOGIC_VECTOR ( 3 downto 0 );
    P : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of pwm : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of pwm : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of pwm : entity is "e15010ae";
  attribute duty_res : integer;
  attribute duty_res of pwm : entity is 4;
  attribute pwm_freq : integer;
  attribute pwm_freq of pwm : entity is 6250000;
  attribute sys_clk : integer;
  attribute sys_clk of pwm : entity is 125000000;
end pwm;

architecture STRUCTURE of pwm is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal DUTY_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EN_IBUF : STD_LOGIC;
  signal P_OBUF : STD_LOGIC;
  signal P_i_1_n_0 : STD_LOGIC;
  signal RST_IBUF : STD_LOGIC;
  signal duty_threshold : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal duty_threshold1 : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \duty_threshold[0]_i_10_n_0\ : STD_LOGIC;
  signal \duty_threshold[0]_i_11_n_0\ : STD_LOGIC;
  signal \duty_threshold[0]_i_12_n_0\ : STD_LOGIC;
  signal \duty_threshold[0]_i_13_n_0\ : STD_LOGIC;
  signal \duty_threshold[0]_i_6_n_0\ : STD_LOGIC;
  signal \duty_threshold[0]_i_7_n_0\ : STD_LOGIC;
  signal \duty_threshold[0]_i_8_n_0\ : STD_LOGIC;
  signal \duty_threshold[0]_i_9_n_0\ : STD_LOGIC;
  signal \duty_threshold[1]_i_2_n_0\ : STD_LOGIC;
  signal \duty_threshold[1]_i_3_n_0\ : STD_LOGIC;
  signal \duty_threshold[1]_i_5_n_0\ : STD_LOGIC;
  signal \duty_threshold[1]_i_6_n_0\ : STD_LOGIC;
  signal \duty_threshold[2]_i_2_n_0\ : STD_LOGIC;
  signal \duty_threshold[2]_i_3_n_0\ : STD_LOGIC;
  signal \duty_threshold[4]_i_4_n_0\ : STD_LOGIC;
  signal \duty_threshold[4]_i_5_n_0\ : STD_LOGIC;
  signal \duty_threshold[4]_i_6_n_0\ : STD_LOGIC;
  signal \duty_threshold_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \duty_threshold_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \duty_threshold_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \duty_threshold_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \duty_threshold_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \duty_threshold_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \duty_threshold_reg[4]_i_3_n_2\ : STD_LOGIC;
  signal \freq_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \freq_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \freq_count[4]_i_1_n_0\ : STD_LOGIC;
  signal freq_count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal pwm_active : STD_LOGIC;
  signal pwm_active_i_1_n_0 : STD_LOGIC;
  signal pwm_active_i_2_n_0 : STD_LOGIC;
  signal \EN^Mid\ : STD_LOGIC;
  signal \RST^Mid\ : STD_LOGIC;
  signal \NLW_duty_threshold_reg[4]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_duty_threshold_reg[4]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_duty_threshold_reg[4]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \duty_threshold_reg[4]_i_2\ : label is "PROPCONST";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \freq_count[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \freq_count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \freq_count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \freq_count[4]_i_2\ : label is "soft_lutpair0";
begin
  \EN^Mid\ <= EN;
  \RST^Mid\ <= RST;
\pulldown_EN^Midinst\: unisim.vcomponents.PULLDOWN
    port map (
      O => \EN^Mid\
    );
\pulldown_RST^Midinst\: unisim.vcomponents.PULLDOWN
    port map (
      O => \RST^Mid\
    );
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
\DUTY_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DUTY(0),
      O => DUTY_IBUF(0)
    );
\DUTY_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DUTY(1),
      O => DUTY_IBUF(1)
    );
\DUTY_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DUTY(2),
      O => DUTY_IBUF(2)
    );
\DUTY_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DUTY(3),
      O => DUTY_IBUF(3)
    );
EN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => \EN^Mid\,
      O => EN_IBUF
    );
P_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => P_OBUF,
      O => P
    );
P_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => RST_IBUF,
      I1 => EN_IBUF,
      O => P_i_1_n_0
    );
P_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => pwm_active,
      Q => P_OBUF,
      R => P_i_1_n_0
    );
RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => \RST^Mid\,
      O => RST_IBUF
    );
\duty_threshold[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \duty_threshold_reg[0]_i_2_n_0\,
      I1 => \duty_threshold_reg[0]_i_3_n_0\,
      I2 => DUTY_IBUF(0),
      I3 => \duty_threshold_reg[0]_i_4_n_0\,
      I4 => DUTY_IBUF(1),
      I5 => \duty_threshold_reg[0]_i_5_n_0\,
      O => p_0_in(0)
    );
\duty_threshold[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF0000F000FFEE0"
    )
        port map (
      I0 => duty_threshold1(5),
      I1 => duty_threshold1(6),
      I2 => duty_threshold1(3),
      I3 => duty_threshold1(7),
      I4 => duty_threshold1(4),
      I5 => \duty_threshold_reg[4]_i_3_n_2\,
      O => \duty_threshold[0]_i_10_n_0\
    );
\duty_threshold[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCC0033F033FF880"
    )
        port map (
      I0 => duty_threshold1(5),
      I1 => duty_threshold1(6),
      I2 => duty_threshold1(7),
      I3 => duty_threshold1(3),
      I4 => duty_threshold1(4),
      I5 => \duty_threshold_reg[4]_i_3_n_2\,
      O => \duty_threshold[0]_i_11_n_0\
    );
\duty_threshold[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF000"
    )
        port map (
      I0 => duty_threshold1(6),
      I1 => duty_threshold1(5),
      I2 => duty_threshold1(7),
      I3 => duty_threshold1(3),
      I4 => duty_threshold1(4),
      I5 => \duty_threshold_reg[4]_i_3_n_2\,
      O => \duty_threshold[0]_i_12_n_0\
    );
\duty_threshold[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE0011F011FFCC0"
    )
        port map (
      I0 => duty_threshold1(5),
      I1 => duty_threshold1(6),
      I2 => duty_threshold1(7),
      I3 => duty_threshold1(3),
      I4 => duty_threshold1(4),
      I5 => \duty_threshold_reg[4]_i_3_n_2\,
      O => \duty_threshold[0]_i_13_n_0\
    );
\duty_threshold[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCC0077F077FF880"
    )
        port map (
      I0 => duty_threshold1(5),
      I1 => duty_threshold1(6),
      I2 => duty_threshold1(7),
      I3 => duty_threshold1(3),
      I4 => duty_threshold1(4),
      I5 => \duty_threshold_reg[4]_i_3_n_2\,
      O => \duty_threshold[0]_i_6_n_0\
    );
\duty_threshold[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0011F011FFEE0"
    )
        port map (
      I0 => duty_threshold1(5),
      I1 => duty_threshold1(6),
      I2 => duty_threshold1(3),
      I3 => duty_threshold1(7),
      I4 => duty_threshold1(4),
      I5 => \duty_threshold_reg[4]_i_3_n_2\,
      O => \duty_threshold[0]_i_7_n_0\
    );
\duty_threshold[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE0033F033FFCC0"
    )
        port map (
      I0 => duty_threshold1(5),
      I1 => duty_threshold1(6),
      I2 => duty_threshold1(7),
      I3 => duty_threshold1(3),
      I4 => duty_threshold1(4),
      I5 => \duty_threshold_reg[4]_i_3_n_2\,
      O => \duty_threshold[0]_i_8_n_0\
    );
\duty_threshold[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF8800F800FFFF0"
    )
        port map (
      I0 => duty_threshold1(6),
      I1 => duty_threshold1(5),
      I2 => duty_threshold1(3),
      I3 => duty_threshold1(7),
      I4 => duty_threshold1(4),
      I5 => \duty_threshold_reg[4]_i_3_n_2\,
      O => \duty_threshold[0]_i_9_n_0\
    );
\duty_threshold[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAFD5D4540A808"
    )
        port map (
      I0 => DUTY_IBUF(0),
      I1 => \duty_threshold[1]_i_2_n_0\,
      I2 => DUTY_IBUF(2),
      I3 => \duty_threshold[1]_i_3_n_0\,
      I4 => DUTY_IBUF(1),
      I5 => \duty_threshold_reg[1]_i_4_n_0\,
      O => p_0_in(1)
    );
\duty_threshold[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555566A566AAAAA"
    )
        port map (
      I0 => duty_threshold1(5),
      I1 => duty_threshold1(6),
      I2 => duty_threshold1(7),
      I3 => duty_threshold1(3),
      I4 => \duty_threshold_reg[4]_i_3_n_2\,
      I5 => duty_threshold1(4),
      O => \duty_threshold[1]_i_2_n_0\
    );
\duty_threshold[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B333333C333CCCCC"
    )
        port map (
      I0 => duty_threshold1(6),
      I1 => duty_threshold1(5),
      I2 => duty_threshold1(3),
      I3 => duty_threshold1(7),
      I4 => \duty_threshold_reg[4]_i_3_n_2\,
      I5 => duty_threshold1(4),
      O => \duty_threshold[1]_i_3_n_0\
    );
\duty_threshold[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333344C344CCCCC"
    )
        port map (
      I0 => duty_threshold1(6),
      I1 => duty_threshold1(5),
      I2 => duty_threshold1(7),
      I3 => duty_threshold1(3),
      I4 => \duty_threshold_reg[4]_i_3_n_2\,
      I5 => duty_threshold1(4),
      O => \duty_threshold[1]_i_5_n_0\
    );
\duty_threshold[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555544A544AAAAA"
    )
        port map (
      I0 => duty_threshold1(5),
      I1 => duty_threshold1(6),
      I2 => duty_threshold1(7),
      I3 => duty_threshold1(3),
      I4 => \duty_threshold_reg[4]_i_3_n_2\,
      I5 => duty_threshold1(4),
      O => \duty_threshold[1]_i_6_n_0\
    );
\duty_threshold[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FBB040"
    )
        port map (
      I0 => DUTY_IBUF(0),
      I1 => DUTY_IBUF(1),
      I2 => \duty_threshold[2]_i_2_n_0\,
      I3 => DUTY_IBUF(2),
      I4 => \duty_threshold[2]_i_3_n_0\,
      O => p_0_in(2)
    );
\duty_threshold[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"011FFFFFFEE00000"
    )
        port map (
      I0 => duty_threshold1(3),
      I1 => duty_threshold1(7),
      I2 => \duty_threshold_reg[4]_i_3_n_2\,
      I3 => duty_threshold1(4),
      I4 => duty_threshold1(5),
      I5 => duty_threshold1(6),
      O => \duty_threshold[2]_i_2_n_0\
    );
\duty_threshold[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"011FFFFFF8800000"
    )
        port map (
      I0 => duty_threshold1(7),
      I1 => duty_threshold1(3),
      I2 => \duty_threshold_reg[4]_i_3_n_2\,
      I3 => duty_threshold1(4),
      I4 => duty_threshold1(5),
      I5 => duty_threshold1(6),
      O => \duty_threshold[2]_i_3_n_0\
    );
\duty_threshold[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FFFFFFE8000000"
    )
        port map (
      I0 => duty_threshold1(3),
      I1 => \duty_threshold_reg[4]_i_3_n_2\,
      I2 => duty_threshold1(4),
      I3 => duty_threshold1(6),
      I4 => duty_threshold1(5),
      I5 => duty_threshold1(7),
      O => p_0_in(3)
    );
\duty_threshold[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF8000"
    )
        port map (
      I0 => duty_threshold1(4),
      I1 => duty_threshold1(7),
      I2 => duty_threshold1(6),
      I3 => duty_threshold1(5),
      I4 => \duty_threshold_reg[4]_i_3_n_2\,
      O => p_0_in(4)
    );
\duty_threshold[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"664C"
    )
        port map (
      I0 => DUTY_IBUF(3),
      I1 => DUTY_IBUF(1),
      I2 => DUTY_IBUF(0),
      I3 => DUTY_IBUF(2),
      O => \duty_threshold[4]_i_4_n_0\
    );
\duty_threshold[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E738"
    )
        port map (
      I0 => DUTY_IBUF(1),
      I1 => DUTY_IBUF(2),
      I2 => DUTY_IBUF(3),
      I3 => DUTY_IBUF(0),
      O => \duty_threshold[4]_i_5_n_0\
    );
\duty_threshold[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A65A"
    )
        port map (
      I0 => DUTY_IBUF(3),
      I1 => DUTY_IBUF(0),
      I2 => DUTY_IBUF(2),
      I3 => DUTY_IBUF(1),
      O => \duty_threshold[4]_i_6_n_0\
    );
\duty_threshold_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_0_in(0),
      Q => duty_threshold(0),
      R => '0'
    );
\duty_threshold_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \duty_threshold[0]_i_6_n_0\,
      I1 => \duty_threshold[0]_i_7_n_0\,
      O => \duty_threshold_reg[0]_i_2_n_0\,
      S => DUTY_IBUF(2)
    );
\duty_threshold_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \duty_threshold[0]_i_8_n_0\,
      I1 => \duty_threshold[0]_i_9_n_0\,
      O => \duty_threshold_reg[0]_i_3_n_0\,
      S => DUTY_IBUF(2)
    );
\duty_threshold_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \duty_threshold[0]_i_10_n_0\,
      I1 => \duty_threshold[0]_i_11_n_0\,
      O => \duty_threshold_reg[0]_i_4_n_0\,
      S => DUTY_IBUF(2)
    );
\duty_threshold_reg[0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \duty_threshold[0]_i_12_n_0\,
      I1 => \duty_threshold[0]_i_13_n_0\,
      O => \duty_threshold_reg[0]_i_5_n_0\,
      S => DUTY_IBUF(2)
    );
\duty_threshold_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_0_in(1),
      Q => duty_threshold(1),
      R => '0'
    );
\duty_threshold_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \duty_threshold[1]_i_5_n_0\,
      I1 => \duty_threshold[1]_i_6_n_0\,
      O => \duty_threshold_reg[1]_i_4_n_0\,
      S => DUTY_IBUF(2)
    );
\duty_threshold_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_0_in(2),
      Q => duty_threshold(2),
      R => '0'
    );
\duty_threshold_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_0_in(3),
      Q => duty_threshold(3),
      R => '0'
    );
\duty_threshold_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => p_0_in(4),
      Q => duty_threshold(4),
      R => '0'
    );
\duty_threshold_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \duty_threshold_reg[4]_i_2_n_0\,
      CO(2 downto 0) => \NLW_duty_threshold_reg[4]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => DUTY_IBUF(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => duty_threshold1(6 downto 3),
      S(3) => DUTY_IBUF(2),
      S(2) => \duty_threshold[4]_i_4_n_0\,
      S(1) => \duty_threshold[4]_i_5_n_0\,
      S(0) => \duty_threshold[4]_i_6_n_0\
    );
\duty_threshold_reg[4]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \duty_threshold_reg[4]_i_2_n_0\,
      CO(3 downto 2) => \NLW_duty_threshold_reg[4]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \duty_threshold_reg[4]_i_3_n_2\,
      CO(0) => \NLW_duty_threshold_reg[4]_i_3_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => DUTY_IBUF(3),
      O(3 downto 1) => \NLW_duty_threshold_reg[4]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => duty_threshold1(7),
      S(3 downto 1) => B"001",
      S(0) => DUTY_IBUF(3)
    );
\freq_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => freq_count_reg(0),
      O => \freq_count[0]_i_1_n_0\
    );
\freq_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => freq_count_reg(0),
      I1 => freq_count_reg(1),
      O => \p_0_in__0\(1)
    );
\freq_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => freq_count_reg(0),
      I1 => freq_count_reg(1),
      I2 => freq_count_reg(2),
      O => \freq_count[2]_i_1_n_0\
    );
\freq_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => freq_count_reg(1),
      I1 => freq_count_reg(0),
      I2 => freq_count_reg(2),
      I3 => freq_count_reg(3),
      O => \p_0_in__0\(3)
    );
\freq_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF80000"
    )
        port map (
      I0 => freq_count_reg(0),
      I1 => freq_count_reg(1),
      I2 => freq_count_reg(3),
      I3 => freq_count_reg(2),
      I4 => freq_count_reg(4),
      I5 => P_i_1_n_0,
      O => \freq_count[4]_i_1_n_0\
    );
\freq_count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => freq_count_reg(2),
      I1 => freq_count_reg(0),
      I2 => freq_count_reg(1),
      I3 => freq_count_reg(3),
      I4 => freq_count_reg(4),
      O => \p_0_in__0\(4)
    );
\freq_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \freq_count[0]_i_1_n_0\,
      Q => freq_count_reg(0),
      R => \freq_count[4]_i_1_n_0\
    );
\freq_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => freq_count_reg(1),
      R => \freq_count[4]_i_1_n_0\
    );
\freq_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \freq_count[2]_i_1_n_0\,
      Q => freq_count_reg(2),
      R => \freq_count[4]_i_1_n_0\
    );
\freq_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => freq_count_reg(3),
      R => \freq_count[4]_i_1_n_0\
    );
\freq_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => freq_count_reg(4),
      R => \freq_count[4]_i_1_n_0\
    );
pwm_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B2BB22B2"
    )
        port map (
      I0 => duty_threshold(4),
      I1 => freq_count_reg(4),
      I2 => duty_threshold(3),
      I3 => freq_count_reg(3),
      I4 => pwm_active_i_2_n_0,
      I5 => P_i_1_n_0,
      O => pwm_active_i_1_n_0
    );
pwm_active_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => freq_count_reg(0),
      I1 => duty_threshold(0),
      I2 => freq_count_reg(1),
      I3 => duty_threshold(1),
      I4 => freq_count_reg(2),
      I5 => duty_threshold(2),
      O => pwm_active_i_2_n_0
    );
pwm_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => pwm_active_i_1_n_0,
      Q => pwm_active,
      R => '0'
    );
end STRUCTURE;
