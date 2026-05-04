-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Apr 26 20:23:41 2026
-- Host        : WIN-3EQ24N3DD8G running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ signal_detect_bd_top_0_0_sim_netlist.vhdl
-- Design      : signal_detect_bd_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_controller is
  port (
    bram_addr_reg_rep_0 : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \bram_addr_reg_rep__0_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \bram_addr_reg_rep__1_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DOADO : out STD_LOGIC_VECTOR ( 15 downto 0 );
    status_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sample_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    start_cnt : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_controller is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal active : STD_LOGIC;
  signal active_i_1_n_0 : STD_LOGIC;
  signal bram_addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bram_addr[5]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr[7]_i_4_n_0\ : STD_LOGIC;
  signal bram_addr_reg_rep_i_10_n_0 : STD_LOGIC;
  signal bram_addr_reg_rep_i_11_n_0 : STD_LOGIC;
  signal bram_addr_reg_rep_i_1_n_0 : STD_LOGIC;
  signal bram_addr_reg_rep_i_2_n_0 : STD_LOGIC;
  signal bram_addr_reg_rep_i_3_n_0 : STD_LOGIC;
  signal bram_addr_reg_rep_i_4_n_0 : STD_LOGIC;
  signal bram_addr_reg_rep_i_5_n_0 : STD_LOGIC;
  signal bram_addr_reg_rep_i_6_n_0 : STD_LOGIC;
  signal bram_addr_reg_rep_i_7_n_0 : STD_LOGIC;
  signal bram_addr_reg_rep_i_8_n_0 : STD_LOGIC;
  signal bram_addr_reg_rep_i_9_n_0 : STD_LOGIC;
  signal \^bram_sel\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \bram_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \bram_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal div_cnt0 : STD_LOGIC;
  signal \div_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \div_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \div_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \div_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \div_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \div_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \div_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \div_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \div_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \div_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \div_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \div_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \div_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \div_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \div_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \div_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \div_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \div_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal div_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \div_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \div_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \div_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \div_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \div_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \div_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \div_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \div_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \div_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \div_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \div_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \div_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \div_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \div_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \div_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \div_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \div_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \div_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \div_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \div_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \div_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \div_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \div_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \div_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \div_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \div_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \div_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \div_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \div_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \div_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \div_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal done0_out : STD_LOGIC;
  signal done_i_2_n_0 : STD_LOGIC;
  signal done_i_3_n_0 : STD_LOGIC;
  signal done_i_4_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sample_cnt : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \sample_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \sample_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \sample_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \sample_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \sample_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \sample_out[15]_i_3_n_0\ : STD_LOGIC;
  signal \sample_out[15]_i_4_n_0\ : STD_LOGIC;
  signal \sample_out[15]_i_5_n_0\ : STD_LOGIC;
  signal \sample_out[15]_i_6_n_0\ : STD_LOGIC;
  signal \sample_out[15]_i_7_n_0\ : STD_LOGIC;
  signal sample_valid_i_1_n_0 : STD_LOGIC;
  signal \^status_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bram_addr_reg_rep_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 to 15 );
  signal NLW_bram_addr_reg_rep_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_bram_addr_reg_rep_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bram_addr_reg_rep_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_bram_addr_reg_rep__0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_bram_addr_reg_rep__0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_bram_addr_reg_rep__0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_bram_addr_reg_rep__1_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_bram_addr_reg_rep__1_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_bram_addr_reg_rep__1_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_bram_addr_reg_rep__2_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_bram_addr_reg_rep__2_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_bram_addr_reg_rep__2_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_div_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of active_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bram_addr[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bram_addr[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bram_addr[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bram_addr[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bram_addr[5]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bram_addr[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bram_addr[7]_i_3\ : label is "soft_lutpair9";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_addr_reg_rep : label is "p0_d15";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of bram_addr_reg_rep : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of bram_addr_reg_rep : label is 3840;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of bram_addr_reg_rep : label is "inst/u_ctrl/bram_addr_reg_rep";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of bram_addr_reg_rep : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of bram_addr_reg_rep : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of bram_addr_reg_rep : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of bram_addr_reg_rep : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of bram_addr_reg_rep : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of bram_addr_reg_rep : label is 14;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \bram_addr_reg_rep__0\ : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS of \bram_addr_reg_rep__0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \bram_addr_reg_rep__0\ : label is 4096;
  attribute RTL_RAM_NAME of \bram_addr_reg_rep__0\ : label is "inst/u_ctrl/bram_addr_reg_rep";
  attribute RTL_RAM_TYPE of \bram_addr_reg_rep__0\ : label is "RAM_SP";
  attribute ram_addr_begin of \bram_addr_reg_rep__0\ : label is 0;
  attribute ram_addr_end of \bram_addr_reg_rep__0\ : label is 1023;
  attribute ram_offset of \bram_addr_reg_rep__0\ : label is 0;
  attribute ram_slice_begin of \bram_addr_reg_rep__0\ : label is 0;
  attribute ram_slice_end of \bram_addr_reg_rep__0\ : label is 15;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \bram_addr_reg_rep__1\ : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS of \bram_addr_reg_rep__1\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \bram_addr_reg_rep__1\ : label is 4096;
  attribute RTL_RAM_NAME of \bram_addr_reg_rep__1\ : label is "inst/u_ctrl/bram_addr_reg_rep";
  attribute RTL_RAM_TYPE of \bram_addr_reg_rep__1\ : label is "RAM_SP";
  attribute ram_addr_begin of \bram_addr_reg_rep__1\ : label is 0;
  attribute ram_addr_end of \bram_addr_reg_rep__1\ : label is 1023;
  attribute ram_offset of \bram_addr_reg_rep__1\ : label is 0;
  attribute ram_slice_begin of \bram_addr_reg_rep__1\ : label is 0;
  attribute ram_slice_end of \bram_addr_reg_rep__1\ : label is 15;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \bram_addr_reg_rep__2\ : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS of \bram_addr_reg_rep__2\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \bram_addr_reg_rep__2\ : label is 4096;
  attribute RTL_RAM_NAME of \bram_addr_reg_rep__2\ : label is "inst/u_ctrl/bram_addr_reg_rep";
  attribute RTL_RAM_TYPE of \bram_addr_reg_rep__2\ : label is "RAM_SP";
  attribute ram_addr_begin of \bram_addr_reg_rep__2\ : label is 0;
  attribute ram_addr_end of \bram_addr_reg_rep__2\ : label is 1023;
  attribute ram_offset of \bram_addr_reg_rep__2\ : label is 0;
  attribute ram_slice_begin of \bram_addr_reg_rep__2\ : label is 0;
  attribute ram_slice_end of \bram_addr_reg_rep__2\ : label is 15;
  attribute SOFT_HLUTNM of bram_addr_reg_rep_i_10 : label is "soft_lutpair6";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \div_cnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \div_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \div_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \div_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \sample_cnt[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sample_cnt[10]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sample_cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sample_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sample_cnt[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sample_cnt[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sample_cnt[5]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sample_cnt[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sample_cnt[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sample_cnt[9]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sample_valid_i_1 : label is "soft_lutpair7";
begin
  SR(0) <= \^sr\(0);
  bram_sel(1 downto 0) <= \^bram_sel\(1 downto 0);
  status_out(1 downto 0) <= \^status_out\(1 downto 0);
active_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3A2"
    )
        port map (
      I0 => div_cnt0,
      I1 => done_i_2_n_0,
      I2 => \sample_out[15]_i_3_n_0\,
      I3 => active,
      O => active_i_1_n_0
    );
active_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => active_i_1_n_0,
      Q => active,
      R => \^sr\(0)
    );
\bram_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sample_out[15]_i_3_n_0\,
      I1 => bram_addr(0),
      O => p_2_in(0)
    );
\bram_addr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => \sample_out[15]_i_3_n_0\,
      I1 => bram_addr(0),
      I2 => bram_addr(1),
      O => p_2_in(1)
    );
\bram_addr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => \sample_out[15]_i_3_n_0\,
      I1 => bram_addr(0),
      I2 => bram_addr(1),
      I3 => bram_addr(2),
      O => p_2_in(2)
    );
\bram_addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => bram_addr(2),
      I1 => bram_addr(0),
      I2 => bram_addr(1),
      I3 => \sample_out[15]_i_3_n_0\,
      I4 => bram_addr(3),
      O => p_2_in(3)
    );
\bram_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => bram_addr(3),
      I1 => bram_addr(1),
      I2 => bram_addr(0),
      I3 => bram_addr(2),
      I4 => \sample_out[15]_i_3_n_0\,
      I5 => bram_addr(4),
      O => p_2_in(4)
    );
\bram_addr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \bram_addr[5]_i_2_n_0\,
      I1 => \sample_out[15]_i_3_n_0\,
      I2 => bram_addr(5),
      O => p_2_in(5)
    );
\bram_addr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => bram_addr(4),
      I1 => bram_addr(2),
      I2 => bram_addr(0),
      I3 => bram_addr(1),
      I4 => bram_addr(3),
      O => \bram_addr[5]_i_2_n_0\
    );
\bram_addr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \bram_addr[7]_i_4_n_0\,
      I1 => \sample_out[15]_i_3_n_0\,
      I2 => bram_addr(6),
      O => p_2_in(6)
    );
\bram_addr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => done_i_2_n_0,
      I1 => \sample_out[15]_i_3_n_0\,
      I2 => rst_n,
      O => \bram_addr[7]_i_1_n_0\
    );
\bram_addr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554FFFFFFFF"
    )
        port map (
      I0 => active,
      I1 => start_cnt(0),
      I2 => start_cnt(1),
      I3 => start_cnt(2),
      I4 => start_cnt(3),
      I5 => \sample_out[15]_i_3_n_0\,
      O => \bram_addr[7]_i_2_n_0\
    );
\bram_addr[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => bram_addr(6),
      I1 => \bram_addr[7]_i_4_n_0\,
      I2 => \sample_out[15]_i_3_n_0\,
      I3 => bram_addr(7),
      O => p_2_in(7)
    );
\bram_addr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => bram_addr(5),
      I1 => bram_addr(3),
      I2 => bram_addr(1),
      I3 => bram_addr(0),
      I4 => bram_addr(2),
      I5 => bram_addr(4),
      O => \bram_addr[7]_i_4_n_0\
    );
\bram_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_addr[7]_i_2_n_0\,
      D => p_2_in(0),
      Q => bram_addr(0),
      R => \bram_addr[7]_i_1_n_0\
    );
\bram_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_addr[7]_i_2_n_0\,
      D => p_2_in(1),
      Q => bram_addr(1),
      R => \bram_addr[7]_i_1_n_0\
    );
\bram_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_addr[7]_i_2_n_0\,
      D => p_2_in(2),
      Q => bram_addr(2),
      R => \bram_addr[7]_i_1_n_0\
    );
\bram_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_addr[7]_i_2_n_0\,
      D => p_2_in(3),
      Q => bram_addr(3),
      R => \bram_addr[7]_i_1_n_0\
    );
\bram_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_addr[7]_i_2_n_0\,
      D => p_2_in(4),
      Q => bram_addr(4),
      R => \bram_addr[7]_i_1_n_0\
    );
\bram_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_addr[7]_i_2_n_0\,
      D => p_2_in(5),
      Q => bram_addr(5),
      R => \bram_addr[7]_i_1_n_0\
    );
\bram_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_addr[7]_i_2_n_0\,
      D => p_2_in(6),
      Q => bram_addr(6),
      R => \bram_addr[7]_i_1_n_0\
    );
\bram_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_addr[7]_i_2_n_0\,
      D => p_2_in(7),
      Q => bram_addr(7),
      R => \bram_addr[7]_i_1_n_0\
    );
bram_addr_reg_rep: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0B840AC70A09094A088807C60702063E057804B203EA0322025A019100C90000",
      INIT_01 => X"1610157D14E6144C13AF130F126D11C7111E10730FC50F150E630DAE0CF70C3E",
      INIT_02 => X"1D411CED1C951C381BD71B721B091A9B1A2919B3193A18BC183B17B5172D16A0",
      INIT_03 => X"1FFD1FF61FE91FD81FC21FA71F871F621F381F0A1ED71E9F1E621E211DDB1D90",
      INIT_04 => X"1DDB1E211E621E9F1ED71F0A1F381F621F871FA71FC21FD81FE91FF61FFD2000",
      INIT_05 => X"172D17B5183B18BC193A19B31A291A9B1B091B721BD71C381C951CED1D411D90",
      INIT_06 => X"0CF70DAE0E630F150FC51073111E11C7126D130F13AF144C14E6157D161016A0",
      INIT_07 => X"00C90191025A032203EA04B20578063E070207C60888094A0A090AC70B840C3E",
      INIT_08 => X"747C753975F776B67778783A78FE79C27A887B4E7C167CDE7DA67E6F7F370000",
      INIT_09 => X"69F06A836B1A6BB46C516CF16D936E396EE26F8D703B70EB719D7252730973C2",
      INIT_0A => X"62BF6313636B63C86429648E64F7656565D7664D66C6674467C5684B68D36960",
      INIT_0B => X"6003600A60176028603E60596079609E60C860F661296161619E61DF62256270",
      INIT_0C => X"622561DF619E6161612960F660C8609E60796059603E60286017600A60036000",
      INIT_0D => X"68D3684B67C5674466C6664D65D7656564F7648E642963C8636B631362BF6270",
      INIT_0E => X"73097252719D70EB703B6F8D6EE26E396D936CF16C516BB46B1A6A8369F06960",
      INIT_0F => X"7F377E6F7DA67CDE7C167B4E7A8879C278FE783A777876B675F77539747C73C2",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11) => bram_addr_reg_rep_i_2_n_0,
      ADDRARDADDR(10) => bram_addr_reg_rep_i_3_n_0,
      ADDRARDADDR(9) => bram_addr_reg_rep_i_4_n_0,
      ADDRARDADDR(8) => bram_addr_reg_rep_i_5_n_0,
      ADDRARDADDR(7) => bram_addr_reg_rep_i_6_n_0,
      ADDRARDADDR(6) => bram_addr_reg_rep_i_7_n_0,
      ADDRARDADDR(5) => bram_addr_reg_rep_i_8_n_0,
      ADDRARDADDR(4) => bram_addr_reg_rep_i_9_n_0,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"0111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15) => NLW_bram_addr_reg_rep_DOADO_UNCONNECTED(15),
      DOADO(14 downto 0) => bram_addr_reg_rep_0(14 downto 0),
      DOBDO(15 downto 0) => NLW_bram_addr_reg_rep_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_bram_addr_reg_rep_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_bram_addr_reg_rep_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => bram_addr_reg_rep_i_1_n_0,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\bram_addr_reg_rep__0\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"2E102B1E2826252722231F191C0B18F815E112C70FAB0C8B096A064703240000",
      INIT_01 => X"584255F4539A51334EBF4C3F49B3471C447A41CD3F163C56398C36B933DE30FB",
      INIT_02 => X"750373B5725470E16F5E6DC96C236A6C68A566CE64E762F160EB5ED65CB35A81",
      INIT_03 => X"7FF57FD77FA67F617F087E9C7E1C7D897CE27C297B5C7A7C79897883776B7640",
      INIT_04 => X"776B788379897A7C7B5C7C297CE27D897E1C7E9C7F087F617FA67FD77FF57FFF",
      INIT_05 => X"5CB35ED660EB62F164E766CE68A56A6C6C236DC96F5E70E1725473B575037640",
      INIT_06 => X"33DE36B9398C3C563F1641CD447A471C49B34C3F4EBF5133539A55F458425A81",
      INIT_07 => X"03240647096A0C8B0FAB12C715E118F81C0B1F192223252728262B1E2E1030FB",
      INIT_08 => X"D1F0D4E2D7DADAD9DDDDE0E7E3F5E708EA1FED39F055F375F696F9B9FCDC0000",
      INIT_09 => X"A7BEAA0CAC66AECDB141B3C1B64DB8E4BB86BE33C0EAC3AAC674C947CC22CF05",
      INIT_0A => X"8AFD8C4B8DAC8F1F90A2923793DD9594975B99329B199D0F9F15A12AA34DA57F",
      INIT_0B => X"800B8029805A809F80F8816481E48277831E83D784A485848677877D889589C0",
      INIT_0C => X"8895877D8677858484A483D7831E827781E4816480F8809F805A8029800B8001",
      INIT_0D => X"A34DA12A9F159D0F9B199932975B959493DD923790A28F1F8DAC8C4B8AFD89C0",
      INIT_0E => X"CC22C947C674C3AAC0EABE33BB86B8E4B64DB3C1B141AECDAC66AA0CA7BEA57F",
      INIT_0F => X"FCDCF9B9F696F375F055ED39EA1FE708E3F5E0E7DDDDDAD9D7DAD4E2D1F0CF05",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11) => bram_addr_reg_rep_i_2_n_0,
      ADDRARDADDR(10) => bram_addr_reg_rep_i_3_n_0,
      ADDRARDADDR(9) => bram_addr_reg_rep_i_4_n_0,
      ADDRARDADDR(8) => bram_addr_reg_rep_i_5_n_0,
      ADDRARDADDR(7) => bram_addr_reg_rep_i_6_n_0,
      ADDRARDADDR(6) => bram_addr_reg_rep_i_7_n_0,
      ADDRARDADDR(5) => bram_addr_reg_rep_i_8_n_0,
      ADDRARDADDR(4) => bram_addr_reg_rep_i_9_n_0,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => \bram_addr_reg_rep__0_0\(15 downto 0),
      DOBDO(15 downto 0) => \NLW_bram_addr_reg_rep__0_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_bram_addr_reg_rep__0_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_bram_addr_reg_rep__0_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => bram_addr_reg_rep_i_1_n_0,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\bram_addr_reg_rep__1\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"228C20571E1D1BDE199A1753150812BA10690E160BC00968070F04B5025B0000",
      INIT_01 => X"423240783EB43CE63B0F392F37473555335C315A2F512D412B29290B26E724BC",
      INIT_02 => X"57C356C855BF54AA53875257511B4FD24E7C4D1B4BAE4A3548B14721458743E1",
      INIT_03 => X"5FF85FE25FBD5F895F475EF65E965E275DAA5D1F5C855BDD5B275A63599158B1",
      INIT_04 => X"59915A635B275BDD5C855D1F5DAA5E275E965EF65F475F895FBD5FE25FF86000",
      INIT_05 => X"4587472148B14A354BAE4D1B4E7C4FD2511B5257538754AA55BF56C857C358B1",
      INIT_06 => X"26E7290B2B292D412F51315A335C35553747392F3B0F3CE63EB44078423243E1",
      INIT_07 => X"025B04B5070F09680BC00E16106912BA15081753199A1BDE1E1D2057228C24BC",
      INIT_08 => X"DD74DFA9E1E3E422E666E8ADEAF8ED46EF97F1EAF440F698F8F1FB4BFDA50000",
      INIT_09 => X"BDCEBF88C14CC31AC4F1C6D1C8B9CAABCCA4CEA6D0AFD2BFD4D7D6F5D919DB44",
      INIT_0A => X"A83DA938AA41AB56AC79ADA9AEE5B02EB184B2E5B452B5CBB74FB8DFBA79BC1F",
      INIT_0B => X"A008A01EA043A077A0B9A10AA16AA1D9A256A2E1A37BA423A4D9A59DA66FA74F",
      INIT_0C => X"A66FA59DA4D9A423A37BA2E1A256A1D9A16AA10AA0B9A077A043A01EA008A000",
      INIT_0D => X"BA79B8DFB74FB5CBB452B2E5B184B02EAEE5ADA9AC79AB56AA41A938A83DA74F",
      INIT_0E => X"D919D6F5D4D7D2BFD0AFCEA6CCA4CAABC8B9C6D1C4F1C31AC14CBF88BDCEBC1F",
      INIT_0F => X"FDA5FB4BF8F1F698F440F1EAEF97ED46EAF8E8ADE666E422E1E3DFA9DD74DB44",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11) => bram_addr_reg_rep_i_2_n_0,
      ADDRARDADDR(10) => bram_addr_reg_rep_i_3_n_0,
      ADDRARDADDR(9) => bram_addr_reg_rep_i_4_n_0,
      ADDRARDADDR(8) => bram_addr_reg_rep_i_5_n_0,
      ADDRARDADDR(7) => bram_addr_reg_rep_i_6_n_0,
      ADDRARDADDR(6) => bram_addr_reg_rep_i_7_n_0,
      ADDRARDADDR(5) => bram_addr_reg_rep_i_8_n_0,
      ADDRARDADDR(4) => bram_addr_reg_rep_i_9_n_0,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => \bram_addr_reg_rep__1_0\(15 downto 0),
      DOBDO(15 downto 0) => \NLW_bram_addr_reg_rep__1_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_bram_addr_reg_rep__1_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_bram_addr_reg_rep__1_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => bram_addr_reg_rep_i_1_n_0,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\bram_addr_reg_rep__2\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"1708158F1413129411110F8C0E050C7C0AF1096407D5064504B5032301920000",
      INIT_01 => X"2C212AFA29CD2899275F261F24DA238E223D20E71F8B1E2B1CC61B5D19EF187D",
      INIT_02 => X"3A8239DA392A387137AF36E536123536345333673274317930762F6B2E5A2D41",
      INIT_03 => X"3FFB3FEC3FD33FB13F843F4E3F0E3EC53E713E143DAE3D3E3CC53C423BB63B20",
      INIT_04 => X"3BB63C423CC53D3E3DAE3E143E713EC53F0E3F4E3F843FB13FD33FEC3FFB4000",
      INIT_05 => X"2E5A2F6B307631793274336734533536361236E537AF3871392A39DA3A823B20",
      INIT_06 => X"19EF1B5D1CC61E2B1F8B20E7223D238E24DA261F275F289929CD2AFA2C212D41",
      INIT_07 => X"0192032304B5064507D509640AF10C7C0E050F8C111112941413158F1708187D",
      INIT_08 => X"E8F8EA71EBEDED6CEEEFF074F1FBF384F50FF69CF82BF9BBFB4BFCDDFE6E0000",
      INIT_09 => X"D3DFD506D633D767D8A1D9E1DB26DC72DDC3DF19E075E1D5E33AE4A3E611E783",
      INIT_0A => X"C57EC626C6D6C78FC851C91BC9EECACACBADCC99CD8CCE87CF8AD095D1A6D2BF",
      INIT_0B => X"C005C014C02DC04FC07CC0B2C0F2C13BC18FC1ECC252C2C2C33BC3BEC44AC4E0",
      INIT_0C => X"C44AC3BEC33BC2C2C252C1ECC18FC13BC0F2C0B2C07CC04FC02DC014C005C000",
      INIT_0D => X"D1A6D095CF8ACE87CD8CCC99CBADCACAC9EEC91BC851C78FC6D6C626C57EC4E0",
      INIT_0E => X"E611E4A3E33AE1D5E075DF19DDC3DC72DB26D9E1D8A1D767D633D506D3DFD2BF",
      INIT_0F => X"FE6EFCDDFB4BF9BBF82BF69CF50FF384F1FBF074EEEFED6CEBEDEA71E8F8E783",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11) => bram_addr_reg_rep_i_2_n_0,
      ADDRARDADDR(10) => bram_addr_reg_rep_i_3_n_0,
      ADDRARDADDR(9) => bram_addr_reg_rep_i_4_n_0,
      ADDRARDADDR(8) => bram_addr_reg_rep_i_5_n_0,
      ADDRARDADDR(7) => bram_addr_reg_rep_i_6_n_0,
      ADDRARDADDR(6) => bram_addr_reg_rep_i_7_n_0,
      ADDRARDADDR(5) => bram_addr_reg_rep_i_8_n_0,
      ADDRARDADDR(4) => bram_addr_reg_rep_i_9_n_0,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => DOADO(15 downto 0),
      DOBDO(15 downto 0) => \NLW_bram_addr_reg_rep__2_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_bram_addr_reg_rep__2_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_bram_addr_reg_rep__2_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => bram_addr_reg_rep_i_1_n_0,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
bram_addr_reg_rep_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => rst_n,
      I1 => \sample_out[15]_i_3_n_0\,
      I2 => div_cnt0,
      O => bram_addr_reg_rep_i_1_n_0
    );
bram_addr_reg_rep_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => bram_addr(3),
      I1 => bram_addr(1),
      I2 => bram_addr(0),
      I3 => bram_addr(2),
      O => bram_addr_reg_rep_i_10_n_0
    );
bram_addr_reg_rep_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => bram_addr(2),
      I1 => bram_addr(0),
      I2 => bram_addr(1),
      O => bram_addr_reg_rep_i_11_n_0
    );
bram_addr_reg_rep_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006A00"
    )
        port map (
      I0 => bram_addr(7),
      I1 => \bram_addr[7]_i_4_n_0\,
      I2 => bram_addr(6),
      I3 => rst_n,
      I4 => \sample_out[15]_i_3_n_0\,
      I5 => done_i_2_n_0,
      O => bram_addr_reg_rep_i_2_n_0
    );
bram_addr_reg_rep_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000060"
    )
        port map (
      I0 => bram_addr(6),
      I1 => \bram_addr[7]_i_4_n_0\,
      I2 => rst_n,
      I3 => \sample_out[15]_i_3_n_0\,
      I4 => done_i_2_n_0,
      O => bram_addr_reg_rep_i_3_n_0
    );
bram_addr_reg_rep_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000060"
    )
        port map (
      I0 => bram_addr(5),
      I1 => \bram_addr[5]_i_2_n_0\,
      I2 => rst_n,
      I3 => \sample_out[15]_i_3_n_0\,
      I4 => done_i_2_n_0,
      O => bram_addr_reg_rep_i_4_n_0
    );
bram_addr_reg_rep_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000060"
    )
        port map (
      I0 => bram_addr(4),
      I1 => bram_addr_reg_rep_i_10_n_0,
      I2 => rst_n,
      I3 => \sample_out[15]_i_3_n_0\,
      I4 => done_i_2_n_0,
      O => bram_addr_reg_rep_i_5_n_0
    );
bram_addr_reg_rep_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000060"
    )
        port map (
      I0 => bram_addr(3),
      I1 => bram_addr_reg_rep_i_11_n_0,
      I2 => rst_n,
      I3 => \sample_out[15]_i_3_n_0\,
      I4 => done_i_2_n_0,
      O => bram_addr_reg_rep_i_6_n_0
    );
bram_addr_reg_rep_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006A00"
    )
        port map (
      I0 => bram_addr(2),
      I1 => bram_addr(1),
      I2 => bram_addr(0),
      I3 => rst_n,
      I4 => \sample_out[15]_i_3_n_0\,
      I5 => done_i_2_n_0,
      O => bram_addr_reg_rep_i_7_n_0
    );
bram_addr_reg_rep_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000060"
    )
        port map (
      I0 => bram_addr(1),
      I1 => bram_addr(0),
      I2 => rst_n,
      I3 => \sample_out[15]_i_3_n_0\,
      I4 => done_i_2_n_0,
      O => bram_addr_reg_rep_i_8_n_0
    );
bram_addr_reg_rep_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => bram_addr(0),
      I1 => rst_n,
      I2 => \sample_out[15]_i_3_n_0\,
      I3 => done_i_2_n_0,
      O => bram_addr_reg_rep_i_9_n_0
    );
\bram_sel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006FFFF00060000"
    )
        port map (
      I0 => sw(3),
      I1 => sw(1),
      I2 => sw(2),
      I3 => sw(0),
      I4 => div_cnt0,
      I5 => \^bram_sel\(0),
      O => \bram_sel[0]_i_1_n_0\
    );
\bram_sel[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006FFFF00060000"
    )
        port map (
      I0 => sw(3),
      I1 => sw(2),
      I2 => sw(0),
      I3 => sw(1),
      I4 => div_cnt0,
      I5 => \^bram_sel\(1),
      O => \bram_sel[1]_i_1_n_0\
    );
\bram_sel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bram_sel[0]_i_1_n_0\,
      Q => \^bram_sel\(0),
      R => \^sr\(0)
    );
\bram_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bram_sel[1]_i_1_n_0\,
      Q => \^bram_sel\(1),
      R => \^sr\(0)
    );
\div_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554FFFFFFFF"
    )
        port map (
      I0 => active,
      I1 => start_cnt(3),
      I2 => start_cnt(2),
      I3 => start_cnt(1),
      I4 => start_cnt(0),
      I5 => rst_n,
      O => \div_cnt[0]_i_1_n_0\
    );
\div_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(0),
      O => \div_cnt[0]_i_3_n_0\
    );
\div_cnt[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(3),
      O => \div_cnt[0]_i_4_n_0\
    );
\div_cnt[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(2),
      O => \div_cnt[0]_i_5_n_0\
    );
\div_cnt[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(1),
      O => \div_cnt[0]_i_6_n_0\
    );
\div_cnt[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(0),
      O => \div_cnt[0]_i_7_n_0\
    );
\div_cnt[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(15),
      O => \div_cnt[12]_i_2_n_0\
    );
\div_cnt[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(14),
      O => \div_cnt[12]_i_3_n_0\
    );
\div_cnt[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(13),
      O => \div_cnt[12]_i_4_n_0\
    );
\div_cnt[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(12),
      O => \div_cnt[12]_i_5_n_0\
    );
\div_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(7),
      O => \div_cnt[4]_i_2_n_0\
    );
\div_cnt[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(6),
      O => \div_cnt[4]_i_3_n_0\
    );
\div_cnt[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(5),
      O => \div_cnt[4]_i_4_n_0\
    );
\div_cnt[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(4),
      O => \div_cnt[4]_i_5_n_0\
    );
\div_cnt[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(11),
      O => \div_cnt[8]_i_2_n_0\
    );
\div_cnt[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(10),
      O => \div_cnt[8]_i_3_n_0\
    );
\div_cnt[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(9),
      O => \div_cnt[8]_i_4_n_0\
    );
\div_cnt[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => \sample_out[15]_i_7_n_0\,
      I1 => \sample_out[15]_i_6_n_0\,
      I2 => \sample_out[15]_i_5_n_0\,
      I3 => \sample_out[15]_i_4_n_0\,
      I4 => div_cnt_reg(8),
      O => \div_cnt[8]_i_5_n_0\
    );
\div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[0]_i_2_n_7\,
      Q => div_cnt_reg(0),
      R => \div_cnt[0]_i_1_n_0\
    );
\div_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \div_cnt_reg[0]_i_2_n_0\,
      CO(2) => \div_cnt_reg[0]_i_2_n_1\,
      CO(1) => \div_cnt_reg[0]_i_2_n_2\,
      CO(0) => \div_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \div_cnt[0]_i_3_n_0\,
      O(3) => \div_cnt_reg[0]_i_2_n_4\,
      O(2) => \div_cnt_reg[0]_i_2_n_5\,
      O(1) => \div_cnt_reg[0]_i_2_n_6\,
      O(0) => \div_cnt_reg[0]_i_2_n_7\,
      S(3) => \div_cnt[0]_i_4_n_0\,
      S(2) => \div_cnt[0]_i_5_n_0\,
      S(1) => \div_cnt[0]_i_6_n_0\,
      S(0) => \div_cnt[0]_i_7_n_0\
    );
\div_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[8]_i_1_n_5\,
      Q => div_cnt_reg(10),
      R => \div_cnt[0]_i_1_n_0\
    );
\div_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[8]_i_1_n_4\,
      Q => div_cnt_reg(11),
      R => \div_cnt[0]_i_1_n_0\
    );
\div_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[12]_i_1_n_7\,
      Q => div_cnt_reg(12),
      R => \div_cnt[0]_i_1_n_0\
    );
\div_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_div_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \div_cnt_reg[12]_i_1_n_1\,
      CO(1) => \div_cnt_reg[12]_i_1_n_2\,
      CO(0) => \div_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \div_cnt_reg[12]_i_1_n_4\,
      O(2) => \div_cnt_reg[12]_i_1_n_5\,
      O(1) => \div_cnt_reg[12]_i_1_n_6\,
      O(0) => \div_cnt_reg[12]_i_1_n_7\,
      S(3) => \div_cnt[12]_i_2_n_0\,
      S(2) => \div_cnt[12]_i_3_n_0\,
      S(1) => \div_cnt[12]_i_4_n_0\,
      S(0) => \div_cnt[12]_i_5_n_0\
    );
\div_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[12]_i_1_n_6\,
      Q => div_cnt_reg(13),
      R => \div_cnt[0]_i_1_n_0\
    );
\div_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[12]_i_1_n_5\,
      Q => div_cnt_reg(14),
      R => \div_cnt[0]_i_1_n_0\
    );
\div_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[12]_i_1_n_4\,
      Q => div_cnt_reg(15),
      R => \div_cnt[0]_i_1_n_0\
    );
\div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[0]_i_2_n_6\,
      Q => div_cnt_reg(1),
      R => \div_cnt[0]_i_1_n_0\
    );
\div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[0]_i_2_n_5\,
      Q => div_cnt_reg(2),
      R => \div_cnt[0]_i_1_n_0\
    );
\div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[0]_i_2_n_4\,
      Q => div_cnt_reg(3),
      R => \div_cnt[0]_i_1_n_0\
    );
\div_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[4]_i_1_n_7\,
      Q => div_cnt_reg(4),
      R => \div_cnt[0]_i_1_n_0\
    );
\div_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_cnt_reg[0]_i_2_n_0\,
      CO(3) => \div_cnt_reg[4]_i_1_n_0\,
      CO(2) => \div_cnt_reg[4]_i_1_n_1\,
      CO(1) => \div_cnt_reg[4]_i_1_n_2\,
      CO(0) => \div_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \div_cnt_reg[4]_i_1_n_4\,
      O(2) => \div_cnt_reg[4]_i_1_n_5\,
      O(1) => \div_cnt_reg[4]_i_1_n_6\,
      O(0) => \div_cnt_reg[4]_i_1_n_7\,
      S(3) => \div_cnt[4]_i_2_n_0\,
      S(2) => \div_cnt[4]_i_3_n_0\,
      S(1) => \div_cnt[4]_i_4_n_0\,
      S(0) => \div_cnt[4]_i_5_n_0\
    );
\div_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[4]_i_1_n_6\,
      Q => div_cnt_reg(5),
      R => \div_cnt[0]_i_1_n_0\
    );
\div_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[4]_i_1_n_5\,
      Q => div_cnt_reg(6),
      R => \div_cnt[0]_i_1_n_0\
    );
\div_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[4]_i_1_n_4\,
      Q => div_cnt_reg(7),
      R => \div_cnt[0]_i_1_n_0\
    );
\div_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[8]_i_1_n_7\,
      Q => div_cnt_reg(8),
      R => \div_cnt[0]_i_1_n_0\
    );
\div_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \div_cnt_reg[4]_i_1_n_0\,
      CO(3) => \div_cnt_reg[8]_i_1_n_0\,
      CO(2) => \div_cnt_reg[8]_i_1_n_1\,
      CO(1) => \div_cnt_reg[8]_i_1_n_2\,
      CO(0) => \div_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \div_cnt_reg[8]_i_1_n_4\,
      O(2) => \div_cnt_reg[8]_i_1_n_5\,
      O(1) => \div_cnt_reg[8]_i_1_n_6\,
      O(0) => \div_cnt_reg[8]_i_1_n_7\,
      S(3) => \div_cnt[8]_i_2_n_0\,
      S(2) => \div_cnt[8]_i_3_n_0\,
      S(1) => \div_cnt[8]_i_4_n_0\,
      S(0) => \div_cnt[8]_i_5_n_0\
    );
\div_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => \div_cnt_reg[8]_i_1_n_6\,
      Q => div_cnt_reg(9),
      R => \div_cnt[0]_i_1_n_0\
    );
done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => done_i_2_n_0,
      I1 => \sample_out[15]_i_3_n_0\,
      O => done0_out
    );
done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => done_i_3_n_0,
      I1 => done_i_4_n_0,
      I2 => sample_cnt(0),
      I3 => sample_cnt(1),
      I4 => sample_cnt(2),
      O => done_i_2_n_0
    );
done_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sample_cnt(6),
      I1 => sample_cnt(5),
      I2 => sample_cnt(4),
      I3 => sample_cnt(3),
      O => done_i_3_n_0
    );
done_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => sample_cnt(9),
      I1 => sample_cnt(10),
      I2 => sample_cnt(8),
      I3 => sample_cnt(7),
      O => done_i_4_n_0
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => done0_out,
      Q => \^status_out\(1),
      R => \^sr\(0)
    );
\sample_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => done_i_2_n_0,
      I1 => \sample_out[15]_i_3_n_0\,
      I2 => sample_cnt(0),
      O => p_1_in(0)
    );
\sample_cnt[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => done_i_2_n_0,
      I1 => \sample_out[15]_i_3_n_0\,
      I2 => div_cnt0,
      O => \sample_cnt[10]_i_1_n_0\
    );
\sample_cnt[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00070008"
    )
        port map (
      I0 => sample_cnt(9),
      I1 => \sample_cnt[10]_i_3_n_0\,
      I2 => done_i_2_n_0,
      I3 => \sample_out[15]_i_3_n_0\,
      I4 => sample_cnt(10),
      O => p_1_in(10)
    );
\sample_cnt[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sample_cnt(8),
      I1 => sample_cnt(6),
      I2 => \sample_cnt[8]_i_2_n_0\,
      I3 => sample_cnt(7),
      O => \sample_cnt[10]_i_3_n_0\
    );
\sample_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0110"
    )
        port map (
      I0 => \sample_out[15]_i_3_n_0\,
      I1 => done_i_2_n_0,
      I2 => sample_cnt(0),
      I3 => sample_cnt(1),
      O => p_1_in(1)
    );
\sample_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01111000"
    )
        port map (
      I0 => \sample_out[15]_i_3_n_0\,
      I1 => done_i_2_n_0,
      I2 => sample_cnt(1),
      I3 => sample_cnt(0),
      I4 => sample_cnt(2),
      O => p_1_in(2)
    );
\sample_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111111110000000"
    )
        port map (
      I0 => \sample_out[15]_i_3_n_0\,
      I1 => done_i_2_n_0,
      I2 => sample_cnt(0),
      I3 => sample_cnt(1),
      I4 => sample_cnt(2),
      I5 => sample_cnt(3),
      O => p_1_in(3)
    );
\sample_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0102"
    )
        port map (
      I0 => \sample_cnt[4]_i_2_n_0\,
      I1 => done_i_2_n_0,
      I2 => \sample_out[15]_i_3_n_0\,
      I3 => sample_cnt(4),
      O => p_1_in(4)
    );
\sample_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sample_cnt(3),
      I1 => sample_cnt(0),
      I2 => sample_cnt(1),
      I3 => sample_cnt(2),
      O => \sample_cnt[4]_i_2_n_0\
    );
\sample_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0102"
    )
        port map (
      I0 => \sample_cnt[5]_i_2_n_0\,
      I1 => done_i_2_n_0,
      I2 => \sample_out[15]_i_3_n_0\,
      I3 => sample_cnt(5),
      O => p_1_in(5)
    );
\sample_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => sample_cnt(4),
      I1 => sample_cnt(2),
      I2 => sample_cnt(1),
      I3 => sample_cnt(0),
      I4 => sample_cnt(3),
      O => \sample_cnt[5]_i_2_n_0\
    );
\sample_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0102"
    )
        port map (
      I0 => \sample_cnt[8]_i_2_n_0\,
      I1 => done_i_2_n_0,
      I2 => \sample_out[15]_i_3_n_0\,
      I3 => sample_cnt(6),
      O => p_1_in(6)
    );
\sample_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00070008"
    )
        port map (
      I0 => sample_cnt(6),
      I1 => \sample_cnt[8]_i_2_n_0\,
      I2 => done_i_2_n_0,
      I3 => \sample_out[15]_i_3_n_0\,
      I4 => sample_cnt(7),
      O => p_1_in(7)
    );
\sample_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000007F00000080"
    )
        port map (
      I0 => sample_cnt(7),
      I1 => \sample_cnt[8]_i_2_n_0\,
      I2 => sample_cnt(6),
      I3 => done_i_2_n_0,
      I4 => \sample_out[15]_i_3_n_0\,
      I5 => sample_cnt(8),
      O => p_1_in(8)
    );
\sample_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => sample_cnt(5),
      I1 => sample_cnt(3),
      I2 => sample_cnt(0),
      I3 => sample_cnt(1),
      I4 => sample_cnt(2),
      I5 => sample_cnt(4),
      O => \sample_cnt[8]_i_2_n_0\
    );
\sample_cnt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0102"
    )
        port map (
      I0 => \sample_cnt[10]_i_3_n_0\,
      I1 => done_i_2_n_0,
      I2 => \sample_out[15]_i_3_n_0\,
      I3 => sample_cnt(9),
      O => p_1_in(9)
    );
\sample_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_cnt[10]_i_1_n_0\,
      D => p_1_in(0),
      Q => sample_cnt(0),
      R => \^sr\(0)
    );
\sample_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_cnt[10]_i_1_n_0\,
      D => p_1_in(10),
      Q => sample_cnt(10),
      R => \^sr\(0)
    );
\sample_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_cnt[10]_i_1_n_0\,
      D => p_1_in(1),
      Q => sample_cnt(1),
      R => \^sr\(0)
    );
\sample_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_cnt[10]_i_1_n_0\,
      D => p_1_in(2),
      Q => sample_cnt(2),
      R => \^sr\(0)
    );
\sample_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_cnt[10]_i_1_n_0\,
      D => p_1_in(3),
      Q => sample_cnt(3),
      R => \^sr\(0)
    );
\sample_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_cnt[10]_i_1_n_0\,
      D => p_1_in(4),
      Q => sample_cnt(4),
      R => \^sr\(0)
    );
\sample_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_cnt[10]_i_1_n_0\,
      D => p_1_in(5),
      Q => sample_cnt(5),
      R => \^sr\(0)
    );
\sample_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_cnt[10]_i_1_n_0\,
      D => p_1_in(6),
      Q => sample_cnt(6),
      R => \^sr\(0)
    );
\sample_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_cnt[10]_i_1_n_0\,
      D => p_1_in(7),
      Q => sample_cnt(7),
      R => \^sr\(0)
    );
\sample_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_cnt[10]_i_1_n_0\,
      D => p_1_in(8),
      Q => sample_cnt(8),
      R => \^sr\(0)
    );
\sample_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_cnt[10]_i_1_n_0\,
      D => p_1_in(9),
      Q => sample_cnt(9),
      R => \^sr\(0)
    );
\sample_out[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^sr\(0)
    );
\sample_out[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sample_out[15]_i_3_n_0\,
      O => \sample_out[15]_i_2_n_0\
    );
\sample_out[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \sample_out[15]_i_4_n_0\,
      I1 => \sample_out[15]_i_5_n_0\,
      I2 => \sample_out[15]_i_6_n_0\,
      I3 => \sample_out[15]_i_7_n_0\,
      I4 => active,
      O => \sample_out[15]_i_3_n_0\
    );
\sample_out[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => div_cnt_reg(15),
      I1 => div_cnt_reg(14),
      I2 => div_cnt_reg(13),
      I3 => div_cnt_reg(12),
      O => \sample_out[15]_i_4_n_0\
    );
\sample_out[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => div_cnt_reg(11),
      I1 => div_cnt_reg(10),
      I2 => div_cnt_reg(9),
      I3 => div_cnt_reg(8),
      O => \sample_out[15]_i_5_n_0\
    );
\sample_out[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => div_cnt_reg(1),
      I1 => div_cnt_reg(0),
      I2 => div_cnt_reg(3),
      I3 => div_cnt_reg(2),
      O => \sample_out[15]_i_6_n_0\
    );
\sample_out[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => div_cnt_reg(7),
      I1 => div_cnt_reg(6),
      I2 => div_cnt_reg(5),
      I3 => div_cnt_reg(4),
      O => \sample_out[15]_i_7_n_0\
    );
\sample_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(0),
      Q => sample_out(0),
      R => \^sr\(0)
    );
\sample_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(10),
      Q => sample_out(10),
      R => \^sr\(0)
    );
\sample_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(11),
      Q => sample_out(11),
      R => \^sr\(0)
    );
\sample_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(12),
      Q => sample_out(12),
      R => \^sr\(0)
    );
\sample_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(13),
      Q => sample_out(13),
      R => \^sr\(0)
    );
\sample_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(14),
      Q => sample_out(14),
      R => \^sr\(0)
    );
\sample_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(15),
      Q => sample_out(15),
      R => \^sr\(0)
    );
\sample_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(1),
      Q => sample_out(1),
      R => \^sr\(0)
    );
\sample_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(2),
      Q => sample_out(2),
      R => \^sr\(0)
    );
\sample_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(3),
      Q => sample_out(3),
      R => \^sr\(0)
    );
\sample_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(4),
      Q => sample_out(4),
      R => \^sr\(0)
    );
\sample_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(5),
      Q => sample_out(5),
      R => \^sr\(0)
    );
\sample_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(6),
      Q => sample_out(6),
      R => \^sr\(0)
    );
\sample_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(7),
      Q => sample_out(7),
      R => \^sr\(0)
    );
\sample_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(8),
      Q => sample_out(8),
      R => \^sr\(0)
    );
\sample_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sample_out[15]_i_2_n_0\,
      D => D(9),
      Q => sample_out(9),
      R => \^sr\(0)
    );
sample_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5754"
    )
        port map (
      I0 => \sample_out[15]_i_3_n_0\,
      I1 => active,
      I2 => div_cnt0,
      I3 => \^status_out\(0),
      O => sample_valid_i_1_n_0
    );
sample_valid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => start_cnt(3),
      I1 => start_cnt(2),
      I2 => start_cnt(1),
      I3 => start_cnt(0),
      I4 => active,
      O => div_cnt0
    );
sample_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sample_valid_i_1_n_0,
      Q => \^status_out\(0),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sine_bram is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DOADO : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_out_reg[14]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \data_out_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_out_reg[15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sine_bram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sine_bram is
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
\data_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(0),
      I1 => \data_out_reg[14]_0\(0),
      I2 => \data_out_reg[15]_0\(0),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(0),
      O => p_0_in(0)
    );
\data_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(10),
      I1 => \data_out_reg[14]_0\(10),
      I2 => \data_out_reg[15]_0\(10),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(10),
      O => p_0_in(10)
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(11),
      I1 => \data_out_reg[14]_0\(11),
      I2 => \data_out_reg[15]_0\(11),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(11),
      O => p_0_in(11)
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(12),
      I1 => \data_out_reg[14]_0\(12),
      I2 => \data_out_reg[15]_0\(12),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(12),
      O => p_0_in(12)
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(13),
      I1 => \data_out_reg[14]_0\(13),
      I2 => \data_out_reg[15]_0\(13),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(13),
      O => p_0_in(13)
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(14),
      I1 => \data_out_reg[14]_0\(14),
      I2 => \data_out_reg[15]_0\(14),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(14),
      O => p_0_in(14)
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(15),
      I1 => \data_out_reg[14]_0\(14),
      I2 => \data_out_reg[15]_0\(15),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(15),
      O => p_0_in(15)
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(1),
      I1 => \data_out_reg[14]_0\(1),
      I2 => \data_out_reg[15]_0\(1),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(1),
      O => p_0_in(1)
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(2),
      I1 => \data_out_reg[14]_0\(2),
      I2 => \data_out_reg[15]_0\(2),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(2),
      O => p_0_in(2)
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(3),
      I1 => \data_out_reg[14]_0\(3),
      I2 => \data_out_reg[15]_0\(3),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(3),
      O => p_0_in(3)
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(4),
      I1 => \data_out_reg[14]_0\(4),
      I2 => \data_out_reg[15]_0\(4),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(4),
      O => p_0_in(4)
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(5),
      I1 => \data_out_reg[14]_0\(5),
      I2 => \data_out_reg[15]_0\(5),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(5),
      O => p_0_in(5)
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(6),
      I1 => \data_out_reg[14]_0\(6),
      I2 => \data_out_reg[15]_0\(6),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(6),
      O => p_0_in(6)
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(7),
      I1 => \data_out_reg[14]_0\(7),
      I2 => \data_out_reg[15]_0\(7),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(7),
      O => p_0_in(7)
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(8),
      I1 => \data_out_reg[14]_0\(8),
      I2 => \data_out_reg[15]_0\(8),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(8),
      O => p_0_in(8)
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => DOADO(9),
      I1 => \data_out_reg[14]_0\(9),
      I2 => \data_out_reg[15]_0\(9),
      I3 => bram_sel(1),
      I4 => bram_sel(0),
      I5 => \data_out_reg[15]_1\(9),
      O => p_0_in(9)
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => Q(0),
      R => '0'
    );
\data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(10),
      Q => Q(10),
      R => '0'
    );
\data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(11),
      Q => Q(11),
      R => '0'
    );
\data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(12),
      Q => Q(12),
      R => '0'
    );
\data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(13),
      Q => Q(13),
      R => '0'
    );
\data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(14),
      Q => Q(14),
      R => '0'
    );
\data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(15),
      Q => Q(15),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => Q(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => Q(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => Q(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => Q(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(5),
      Q => Q(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(6),
      Q => Q(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(7),
      Q => Q(7),
      R => '0'
    );
\data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(8),
      Q => Q(8),
      R => '0'
    );
\data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switch_decoder is
  port (
    valid : out STD_LOGIC;
    status_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switch_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switch_decoder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of error : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \valid__0\ : label is "soft_lutpair0";
begin
error: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEE8"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => sw(0),
      O => status_out(0)
    );
\valid__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0116"
    )
        port map (
      I0 => sw(0),
      I1 => sw(1),
      I2 => sw(2),
      I3 => sw(3),
      O => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  port (
    sample_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    status_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst_n : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  signal bram_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal start_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \start_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \start_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \start_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \start_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \start_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal u_ctrl_n_0 : STD_LOGIC;
  signal u_ctrl_n_1 : STD_LOGIC;
  signal u_ctrl_n_10 : STD_LOGIC;
  signal u_ctrl_n_11 : STD_LOGIC;
  signal u_ctrl_n_12 : STD_LOGIC;
  signal u_ctrl_n_13 : STD_LOGIC;
  signal u_ctrl_n_14 : STD_LOGIC;
  signal u_ctrl_n_15 : STD_LOGIC;
  signal u_ctrl_n_16 : STD_LOGIC;
  signal u_ctrl_n_17 : STD_LOGIC;
  signal u_ctrl_n_18 : STD_LOGIC;
  signal u_ctrl_n_19 : STD_LOGIC;
  signal u_ctrl_n_2 : STD_LOGIC;
  signal u_ctrl_n_20 : STD_LOGIC;
  signal u_ctrl_n_21 : STD_LOGIC;
  signal u_ctrl_n_22 : STD_LOGIC;
  signal u_ctrl_n_23 : STD_LOGIC;
  signal u_ctrl_n_24 : STD_LOGIC;
  signal u_ctrl_n_25 : STD_LOGIC;
  signal u_ctrl_n_26 : STD_LOGIC;
  signal u_ctrl_n_27 : STD_LOGIC;
  signal u_ctrl_n_28 : STD_LOGIC;
  signal u_ctrl_n_29 : STD_LOGIC;
  signal u_ctrl_n_3 : STD_LOGIC;
  signal u_ctrl_n_30 : STD_LOGIC;
  signal u_ctrl_n_31 : STD_LOGIC;
  signal u_ctrl_n_32 : STD_LOGIC;
  signal u_ctrl_n_33 : STD_LOGIC;
  signal u_ctrl_n_34 : STD_LOGIC;
  signal u_ctrl_n_35 : STD_LOGIC;
  signal u_ctrl_n_36 : STD_LOGIC;
  signal u_ctrl_n_37 : STD_LOGIC;
  signal u_ctrl_n_38 : STD_LOGIC;
  signal u_ctrl_n_39 : STD_LOGIC;
  signal u_ctrl_n_4 : STD_LOGIC;
  signal u_ctrl_n_40 : STD_LOGIC;
  signal u_ctrl_n_41 : STD_LOGIC;
  signal u_ctrl_n_42 : STD_LOGIC;
  signal u_ctrl_n_43 : STD_LOGIC;
  signal u_ctrl_n_44 : STD_LOGIC;
  signal u_ctrl_n_45 : STD_LOGIC;
  signal u_ctrl_n_46 : STD_LOGIC;
  signal u_ctrl_n_47 : STD_LOGIC;
  signal u_ctrl_n_48 : STD_LOGIC;
  signal u_ctrl_n_49 : STD_LOGIC;
  signal u_ctrl_n_5 : STD_LOGIC;
  signal u_ctrl_n_50 : STD_LOGIC;
  signal u_ctrl_n_51 : STD_LOGIC;
  signal u_ctrl_n_52 : STD_LOGIC;
  signal u_ctrl_n_53 : STD_LOGIC;
  signal u_ctrl_n_54 : STD_LOGIC;
  signal u_ctrl_n_55 : STD_LOGIC;
  signal u_ctrl_n_56 : STD_LOGIC;
  signal u_ctrl_n_57 : STD_LOGIC;
  signal u_ctrl_n_58 : STD_LOGIC;
  signal u_ctrl_n_59 : STD_LOGIC;
  signal u_ctrl_n_6 : STD_LOGIC;
  signal u_ctrl_n_60 : STD_LOGIC;
  signal u_ctrl_n_61 : STD_LOGIC;
  signal u_ctrl_n_62 : STD_LOGIC;
  signal u_ctrl_n_65 : STD_LOGIC;
  signal u_ctrl_n_7 : STD_LOGIC;
  signal u_ctrl_n_8 : STD_LOGIC;
  signal u_ctrl_n_9 : STD_LOGIC;
  signal valid : STD_LOGIC;
  signal valid_prev : STD_LOGIC;
  signal valid_rose : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \start_cnt[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \start_cnt[2]_i_2\ : label is "soft_lutpair11";
begin
\start_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010114FFFFFFFF"
    )
        port map (
      I0 => valid_prev,
      I1 => sw(0),
      I2 => sw(1),
      I3 => sw(2),
      I4 => sw(3),
      I5 => start_cnt(0),
      O => \start_cnt[0]_i_1_n_0\
    );
\start_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F9"
    )
        port map (
      I0 => start_cnt(0),
      I1 => start_cnt(1),
      I2 => valid_rose,
      O => \start_cnt[1]_i_1_n_0\
    );
\start_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => start_cnt(3),
      I1 => start_cnt(2),
      I2 => start_cnt(1),
      I3 => start_cnt(0),
      I4 => valid_rose,
      O => \start_cnt[2]_i_1_n_0\
    );
\start_cnt[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA9"
    )
        port map (
      I0 => start_cnt(2),
      I1 => start_cnt(0),
      I2 => start_cnt(1),
      I3 => valid_rose,
      O => \start_cnt[2]_i_2_n_0\
    );
\start_cnt[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => sw(3),
      I1 => sw(2),
      I2 => sw(1),
      I3 => sw(0),
      I4 => valid_prev,
      O => valid_rose
    );
\start_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => start_cnt(3),
      I1 => start_cnt(2),
      I2 => start_cnt(1),
      I3 => start_cnt(0),
      I4 => valid_rose,
      O => \start_cnt[3]_i_1_n_0\
    );
\start_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \start_cnt[2]_i_1_n_0\,
      D => \start_cnt[0]_i_1_n_0\,
      Q => start_cnt(0),
      R => u_ctrl_n_65
    );
\start_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \start_cnt[2]_i_1_n_0\,
      D => \start_cnt[1]_i_1_n_0\,
      Q => start_cnt(1),
      R => u_ctrl_n_65
    );
\start_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \start_cnt[2]_i_1_n_0\,
      D => \start_cnt[2]_i_2_n_0\,
      Q => start_cnt(2),
      R => u_ctrl_n_65
    );
\start_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \start_cnt[3]_i_1_n_0\,
      Q => start_cnt(3),
      R => u_ctrl_n_65
    );
u_bram: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sine_bram
     port map (
      DOADO(15) => u_ctrl_n_47,
      DOADO(14) => u_ctrl_n_48,
      DOADO(13) => u_ctrl_n_49,
      DOADO(12) => u_ctrl_n_50,
      DOADO(11) => u_ctrl_n_51,
      DOADO(10) => u_ctrl_n_52,
      DOADO(9) => u_ctrl_n_53,
      DOADO(8) => u_ctrl_n_54,
      DOADO(7) => u_ctrl_n_55,
      DOADO(6) => u_ctrl_n_56,
      DOADO(5) => u_ctrl_n_57,
      DOADO(4) => u_ctrl_n_58,
      DOADO(3) => u_ctrl_n_59,
      DOADO(2) => u_ctrl_n_60,
      DOADO(1) => u_ctrl_n_61,
      DOADO(0) => u_ctrl_n_62,
      Q(15 downto 0) => data_out(15 downto 0),
      bram_sel(1 downto 0) => bram_sel(1 downto 0),
      clk => clk,
      \data_out_reg[14]_0\(14) => u_ctrl_n_0,
      \data_out_reg[14]_0\(13) => u_ctrl_n_1,
      \data_out_reg[14]_0\(12) => u_ctrl_n_2,
      \data_out_reg[14]_0\(11) => u_ctrl_n_3,
      \data_out_reg[14]_0\(10) => u_ctrl_n_4,
      \data_out_reg[14]_0\(9) => u_ctrl_n_5,
      \data_out_reg[14]_0\(8) => u_ctrl_n_6,
      \data_out_reg[14]_0\(7) => u_ctrl_n_7,
      \data_out_reg[14]_0\(6) => u_ctrl_n_8,
      \data_out_reg[14]_0\(5) => u_ctrl_n_9,
      \data_out_reg[14]_0\(4) => u_ctrl_n_10,
      \data_out_reg[14]_0\(3) => u_ctrl_n_11,
      \data_out_reg[14]_0\(2) => u_ctrl_n_12,
      \data_out_reg[14]_0\(1) => u_ctrl_n_13,
      \data_out_reg[14]_0\(0) => u_ctrl_n_14,
      \data_out_reg[15]_0\(15) => u_ctrl_n_15,
      \data_out_reg[15]_0\(14) => u_ctrl_n_16,
      \data_out_reg[15]_0\(13) => u_ctrl_n_17,
      \data_out_reg[15]_0\(12) => u_ctrl_n_18,
      \data_out_reg[15]_0\(11) => u_ctrl_n_19,
      \data_out_reg[15]_0\(10) => u_ctrl_n_20,
      \data_out_reg[15]_0\(9) => u_ctrl_n_21,
      \data_out_reg[15]_0\(8) => u_ctrl_n_22,
      \data_out_reg[15]_0\(7) => u_ctrl_n_23,
      \data_out_reg[15]_0\(6) => u_ctrl_n_24,
      \data_out_reg[15]_0\(5) => u_ctrl_n_25,
      \data_out_reg[15]_0\(4) => u_ctrl_n_26,
      \data_out_reg[15]_0\(3) => u_ctrl_n_27,
      \data_out_reg[15]_0\(2) => u_ctrl_n_28,
      \data_out_reg[15]_0\(1) => u_ctrl_n_29,
      \data_out_reg[15]_0\(0) => u_ctrl_n_30,
      \data_out_reg[15]_1\(15) => u_ctrl_n_31,
      \data_out_reg[15]_1\(14) => u_ctrl_n_32,
      \data_out_reg[15]_1\(13) => u_ctrl_n_33,
      \data_out_reg[15]_1\(12) => u_ctrl_n_34,
      \data_out_reg[15]_1\(11) => u_ctrl_n_35,
      \data_out_reg[15]_1\(10) => u_ctrl_n_36,
      \data_out_reg[15]_1\(9) => u_ctrl_n_37,
      \data_out_reg[15]_1\(8) => u_ctrl_n_38,
      \data_out_reg[15]_1\(7) => u_ctrl_n_39,
      \data_out_reg[15]_1\(6) => u_ctrl_n_40,
      \data_out_reg[15]_1\(5) => u_ctrl_n_41,
      \data_out_reg[15]_1\(4) => u_ctrl_n_42,
      \data_out_reg[15]_1\(3) => u_ctrl_n_43,
      \data_out_reg[15]_1\(2) => u_ctrl_n_44,
      \data_out_reg[15]_1\(1) => u_ctrl_n_45,
      \data_out_reg[15]_1\(0) => u_ctrl_n_46
    );
u_ctrl: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample_controller
     port map (
      D(15 downto 0) => data_out(15 downto 0),
      DOADO(15) => u_ctrl_n_47,
      DOADO(14) => u_ctrl_n_48,
      DOADO(13) => u_ctrl_n_49,
      DOADO(12) => u_ctrl_n_50,
      DOADO(11) => u_ctrl_n_51,
      DOADO(10) => u_ctrl_n_52,
      DOADO(9) => u_ctrl_n_53,
      DOADO(8) => u_ctrl_n_54,
      DOADO(7) => u_ctrl_n_55,
      DOADO(6) => u_ctrl_n_56,
      DOADO(5) => u_ctrl_n_57,
      DOADO(4) => u_ctrl_n_58,
      DOADO(3) => u_ctrl_n_59,
      DOADO(2) => u_ctrl_n_60,
      DOADO(1) => u_ctrl_n_61,
      DOADO(0) => u_ctrl_n_62,
      SR(0) => u_ctrl_n_65,
      bram_addr_reg_rep_0(14) => u_ctrl_n_0,
      bram_addr_reg_rep_0(13) => u_ctrl_n_1,
      bram_addr_reg_rep_0(12) => u_ctrl_n_2,
      bram_addr_reg_rep_0(11) => u_ctrl_n_3,
      bram_addr_reg_rep_0(10) => u_ctrl_n_4,
      bram_addr_reg_rep_0(9) => u_ctrl_n_5,
      bram_addr_reg_rep_0(8) => u_ctrl_n_6,
      bram_addr_reg_rep_0(7) => u_ctrl_n_7,
      bram_addr_reg_rep_0(6) => u_ctrl_n_8,
      bram_addr_reg_rep_0(5) => u_ctrl_n_9,
      bram_addr_reg_rep_0(4) => u_ctrl_n_10,
      bram_addr_reg_rep_0(3) => u_ctrl_n_11,
      bram_addr_reg_rep_0(2) => u_ctrl_n_12,
      bram_addr_reg_rep_0(1) => u_ctrl_n_13,
      bram_addr_reg_rep_0(0) => u_ctrl_n_14,
      \bram_addr_reg_rep__0_0\(15) => u_ctrl_n_15,
      \bram_addr_reg_rep__0_0\(14) => u_ctrl_n_16,
      \bram_addr_reg_rep__0_0\(13) => u_ctrl_n_17,
      \bram_addr_reg_rep__0_0\(12) => u_ctrl_n_18,
      \bram_addr_reg_rep__0_0\(11) => u_ctrl_n_19,
      \bram_addr_reg_rep__0_0\(10) => u_ctrl_n_20,
      \bram_addr_reg_rep__0_0\(9) => u_ctrl_n_21,
      \bram_addr_reg_rep__0_0\(8) => u_ctrl_n_22,
      \bram_addr_reg_rep__0_0\(7) => u_ctrl_n_23,
      \bram_addr_reg_rep__0_0\(6) => u_ctrl_n_24,
      \bram_addr_reg_rep__0_0\(5) => u_ctrl_n_25,
      \bram_addr_reg_rep__0_0\(4) => u_ctrl_n_26,
      \bram_addr_reg_rep__0_0\(3) => u_ctrl_n_27,
      \bram_addr_reg_rep__0_0\(2) => u_ctrl_n_28,
      \bram_addr_reg_rep__0_0\(1) => u_ctrl_n_29,
      \bram_addr_reg_rep__0_0\(0) => u_ctrl_n_30,
      \bram_addr_reg_rep__1_0\(15) => u_ctrl_n_31,
      \bram_addr_reg_rep__1_0\(14) => u_ctrl_n_32,
      \bram_addr_reg_rep__1_0\(13) => u_ctrl_n_33,
      \bram_addr_reg_rep__1_0\(12) => u_ctrl_n_34,
      \bram_addr_reg_rep__1_0\(11) => u_ctrl_n_35,
      \bram_addr_reg_rep__1_0\(10) => u_ctrl_n_36,
      \bram_addr_reg_rep__1_0\(9) => u_ctrl_n_37,
      \bram_addr_reg_rep__1_0\(8) => u_ctrl_n_38,
      \bram_addr_reg_rep__1_0\(7) => u_ctrl_n_39,
      \bram_addr_reg_rep__1_0\(6) => u_ctrl_n_40,
      \bram_addr_reg_rep__1_0\(5) => u_ctrl_n_41,
      \bram_addr_reg_rep__1_0\(4) => u_ctrl_n_42,
      \bram_addr_reg_rep__1_0\(3) => u_ctrl_n_43,
      \bram_addr_reg_rep__1_0\(2) => u_ctrl_n_44,
      \bram_addr_reg_rep__1_0\(1) => u_ctrl_n_45,
      \bram_addr_reg_rep__1_0\(0) => u_ctrl_n_46,
      bram_sel(1 downto 0) => bram_sel(1 downto 0),
      clk => clk,
      rst_n => rst_n,
      sample_out(15 downto 0) => sample_out(15 downto 0),
      start_cnt(3 downto 0) => start_cnt(3 downto 0),
      status_out(1 downto 0) => status_out(1 downto 0),
      sw(3 downto 0) => sw(3 downto 0)
    );
u_sw_dec: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_switch_decoder
     port map (
      status_out(0) => status_out(2),
      sw(3 downto 0) => sw(3 downto 0),
      valid => valid
    );
valid_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid,
      Q => valid_prev,
      R => u_ctrl_n_65
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sample_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    status_out : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "signal_detect_bd_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN signal_detect_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
     port map (
      clk => clk,
      rst_n => rst_n,
      sample_out(15 downto 0) => sample_out(15 downto 0),
      status_out(2 downto 0) => status_out(2 downto 0),
      sw(3 downto 0) => sw(3 downto 0)
    );
end STRUCTURE;
