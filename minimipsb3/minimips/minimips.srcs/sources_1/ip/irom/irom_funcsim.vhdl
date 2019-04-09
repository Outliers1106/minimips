-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
-- Date        : Sat Mar 30 13:08:29 2019
-- Host        : DESKTOP-BRS6M9C running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim F:/minimipsb3/minimips/minimips.srcs/sources_1/ip/irom/irom_funcsim.vhdl
-- Design      : irom
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \irom_dist_mem_gen_v8_0__parameterized0\ is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is "dist_mem_gen_v8_0";
  attribute C_FAMILY : string;
  attribute C_FAMILY of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is "artix7";
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 10;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 1024;
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is "irom.mif";
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is "./";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 32;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of \irom_dist_mem_gen_v8_0__parameterized0\ : entity is 1;
end \irom_dist_mem_gen_v8_0__parameterized0\;

architecture STRUCTURE of \irom_dist_mem_gen_v8_0__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal n_0_g0_b0 : STD_LOGIC;
  signal n_0_g0_b1 : STD_LOGIC;
  signal n_0_g0_b11 : STD_LOGIC;
  signal n_0_g0_b14 : STD_LOGIC;
  signal n_0_g0_b17 : STD_LOGIC;
  signal n_0_g0_b19 : STD_LOGIC;
  signal n_0_g0_b2 : STD_LOGIC;
  signal n_0_g0_b21 : STD_LOGIC;
  signal n_0_g0_b24 : STD_LOGIC;
  signal n_0_g0_b26 : STD_LOGIC;
  signal n_0_g0_b27 : STD_LOGIC;
  signal n_0_g0_b28 : STD_LOGIC;
  signal n_0_g0_b29 : STD_LOGIC;
  signal n_0_g0_b3 : STD_LOGIC;
  signal n_0_g0_b31 : STD_LOGIC;
  signal n_0_g0_b5 : STD_LOGIC;
  signal n_0_g0_b7 : STD_LOGIC;
  signal \^spo\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of g0_b2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of g0_b28 : label is "soft_lutpair0";
begin
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(31) <= \<const0>\;
  qdpo(30) <= \<const0>\;
  qdpo(29) <= \<const0>\;
  qdpo(28) <= \<const0>\;
  qdpo(27) <= \<const0>\;
  qdpo(26) <= \<const0>\;
  qdpo(25) <= \<const0>\;
  qdpo(24) <= \<const0>\;
  qdpo(23) <= \<const0>\;
  qdpo(22) <= \<const0>\;
  qdpo(21) <= \<const0>\;
  qdpo(20) <= \<const0>\;
  qdpo(19) <= \<const0>\;
  qdpo(18) <= \<const0>\;
  qdpo(17) <= \<const0>\;
  qdpo(16) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(31) <= \<const0>\;
  qspo(30) <= \<const0>\;
  qspo(29) <= \<const0>\;
  qspo(28) <= \<const0>\;
  qspo(27) <= \<const0>\;
  qspo(26) <= \<const0>\;
  qspo(25) <= \<const0>\;
  qspo(24) <= \<const0>\;
  qspo(23) <= \<const0>\;
  qspo(22) <= \<const0>\;
  qspo(21) <= \<const0>\;
  qspo(20) <= \<const0>\;
  qspo(19) <= \<const0>\;
  qspo(18) <= \<const0>\;
  qspo(17) <= \<const0>\;
  qspo(16) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
  spo(31) <= \^spo\(31);
  spo(30) <= \<const0>\;
  spo(29 downto 26) <= \^spo\(29 downto 26);
  spo(25) <= \<const0>\;
  spo(24) <= \^spo\(24);
  spo(23) <= \<const0>\;
  spo(22) <= \<const0>\;
  spo(21) <= \^spo\(21);
  spo(20) <= \<const0>\;
  spo(19) <= \^spo\(19);
  spo(18) <= \<const0>\;
  spo(17) <= \^spo\(17);
  spo(16) <= \<const0>\;
  spo(15) <= \<const0>\;
  spo(14) <= \^spo\(14);
  spo(13) <= \<const0>\;
  spo(12) <= \<const0>\;
  spo(11) <= \^spo\(11);
  spo(10) <= \<const0>\;
  spo(9) <= \<const0>\;
  spo(8) <= \<const0>\;
  spo(7) <= \^spo\(7);
  spo(6) <= \<const0>\;
  spo(5) <= \^spo\(5);
  spo(4) <= \<const0>\;
  spo(3 downto 0) <= \^spo\(3 downto 0);
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => n_0_g0_b0
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => n_0_g0_b1
    );
g0_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000042"
    )
    port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => n_0_g0_b11
    );
g0_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000042"
    )
    port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => n_0_g0_b14
    );
g0_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000034"
    )
    port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => n_0_g0_b17
    );
g0_b19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000B7"
    )
    port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => n_0_g0_b19
    );
g0_b2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      I4 => a(5),
      O => n_0_g0_b2
    );
g0_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => n_0_g0_b21
    );
g0_b24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => n_0_g0_b24
    );
g0_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000B1"
    )
    port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => n_0_g0_b26
    );
g0_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000491"
    )
    port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => n_0_g0_b27
    );
g0_b28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => a(0),
      I1 => a(2),
      I2 => a(3),
      I3 => a(4),
      I4 => a(5),
      O => n_0_g0_b28
    );
g0_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000B4"
    )
    port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => n_0_g0_b29
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
    port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => n_0_g0_b3
    );
g0_b31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(3),
      I3 => a(4),
      I4 => a(5),
      O => n_0_g0_b31
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
    port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => n_0_g0_b5
    );
g0_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(2),
      I3 => a(3),
      I4 => a(4),
      I5 => a(5),
      O => n_0_g0_b7
    );
\spo[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b0,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(0)
    );
\spo[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b11,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(11)
    );
\spo[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b14,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(14)
    );
\spo[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b17,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(17)
    );
\spo[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b19,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(19)
    );
\spo[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b1,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(1)
    );
\spo[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b21,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(21)
    );
\spo[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b24,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(24)
    );
\spo[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b26,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(26)
    );
\spo[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b27,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(27)
    );
\spo[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b28,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(28)
    );
\spo[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b29,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(29)
    );
\spo[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b2,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(2)
    );
\spo[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b31,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(31)
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b3,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(3)
    );
\spo[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b5,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(5)
    );
\spo[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => a(8),
      I1 => n_0_g0_b7,
      I2 => a(7),
      I3 => a(6),
      I4 => a(9),
      O => \^spo\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity irom is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of irom : entity is true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of irom : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of irom : entity is "dist_mem_gen_v8_0,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of irom : entity is "irom,dist_mem_gen_v8_0,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of irom : entity is "irom,dist_mem_gen_v8_0,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dist_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=7,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_ADDR_WIDTH=10,C_DEFAULT_DATA=0,C_DEPTH=1024,C_HAS_CLK=0,C_HAS_D=0,C_HAS_DPO=0,C_HAS_DPRA=0,C_HAS_I_CE=0,C_HAS_QDPO=0,C_HAS_QDPO_CE=0,C_HAS_QDPO_CLK=0,C_HAS_QDPO_RST=0,C_HAS_QDPO_SRST=0,C_HAS_QSPO=0,C_HAS_QSPO_CE=0,C_HAS_QSPO_RST=0,C_HAS_QSPO_SRST=0,C_HAS_SPO=1,C_HAS_WE=0,C_MEM_INIT_FILE=irom.mif,C_ELABORATION_DIR=./,C_MEM_TYPE=0,C_PIPELINE_STAGES=0,C_QCE_JOINED=0,C_QUALIFY_WE=0,C_READ_MIF=1,C_REG_A_D_INPUTS=0,C_REG_DPRA_INPUT=0,C_SYNC_ENABLE=1,C_WIDTH=32,C_PARSER_TYPE=1}";
end irom;

architecture STRUCTURE of irom is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of U0 : label is std.standard.true;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 10;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 1024;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "irom.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 32;
begin
U0: entity work.\irom_dist_mem_gen_v8_0__parameterized0\
    port map (
      a(9 downto 0) => a(9 downto 0),
      clk => '0',
      d(31) => '0',
      d(30) => '0',
      d(29) => '0',
      d(28) => '0',
      d(27) => '0',
      d(26) => '0',
      d(25) => '0',
      d(24) => '0',
      d(23) => '0',
      d(22) => '0',
      d(21) => '0',
      d(20) => '0',
      d(19) => '0',
      d(18) => '0',
      d(17) => '0',
      d(16) => '0',
      d(15) => '0',
      d(14) => '0',
      d(13) => '0',
      d(12) => '0',
      d(11) => '0',
      d(10) => '0',
      d(9) => '0',
      d(8) => '0',
      d(7) => '0',
      d(6) => '0',
      d(5) => '0',
      d(4) => '0',
      d(3) => '0',
      d(2) => '0',
      d(1) => '0',
      d(0) => '0',
      dpo(31 downto 0) => NLW_U0_dpo_UNCONNECTED(31 downto 0),
      dpra(9) => '0',
      dpra(8) => '0',
      dpra(7) => '0',
      dpra(6) => '0',
      dpra(5) => '0',
      dpra(4) => '0',
      dpra(3) => '0',
      dpra(2) => '0',
      dpra(1) => '0',
      dpra(0) => '0',
      i_ce => '1',
      qdpo(31 downto 0) => NLW_U0_qdpo_UNCONNECTED(31 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(31 downto 0) => NLW_U0_qspo_UNCONNECTED(31 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(31 downto 0) => spo(31 downto 0),
      we => '0'
    );
end STRUCTURE;
