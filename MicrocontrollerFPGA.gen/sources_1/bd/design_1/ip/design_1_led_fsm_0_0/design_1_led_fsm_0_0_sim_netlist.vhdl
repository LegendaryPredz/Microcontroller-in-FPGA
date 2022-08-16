-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Sun Aug 14 22:38:19 2022
-- Host        : OrionsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/Chick/Microcontroller in FPGA/Microcontroller in
--               FPGA.gen/sources_1/bd/design_1/ip/design_1_led_fsm_0_0/design_1_led_fsm_0_0_sim_netlist.vhdl}
-- Design      : design_1_led_fsm_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_fsm_0_0_led_fsm is
  port (
    enb_led : out STD_LOGIC;
    led_enb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    sw_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_fsm_0_0_led_fsm : entity is "led_fsm";
end design_1_led_fsm_0_0_led_fsm;

architecture STRUCTURE of design_1_led_fsm_0_0_led_fsm is
  signal current_state : STD_LOGIC;
  signal \led_enb[0]_i_1_n_0\ : STD_LOGIC;
  signal \led_enb[1]_i_1_n_0\ : STD_LOGIC;
  signal \led_enb[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led_enb[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_enb[2]_i_1\ : label is "soft_lutpair0";
begin
current_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => enable,
      Q => current_state,
      R => '0'
    );
enb_led_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => current_state,
      Q => enb_led,
      R => '0'
    );
\led_enb[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sw_in(0),
      I1 => current_state,
      O => \led_enb[0]_i_1_n_0\
    );
\led_enb[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sw_in(1),
      I1 => current_state,
      O => \led_enb[1]_i_1_n_0\
    );
\led_enb[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sw_in(2),
      I1 => current_state,
      O => \led_enb[2]_i_1_n_0\
    );
\led_enb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led_enb[0]_i_1_n_0\,
      Q => led_enb(0),
      R => '0'
    );
\led_enb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led_enb[1]_i_1_n_0\,
      Q => led_enb(1),
      R => '0'
    );
\led_enb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led_enb[2]_i_1_n_0\,
      Q => led_enb(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_fsm_0_0 is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    sw_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    enb_led : out STD_LOGIC;
    led_enb : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_led_fsm_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_led_fsm_0_0 : entity is "design_1_led_fsm_0_0,led_fsm,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_led_fsm_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_led_fsm_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_led_fsm_0_0 : entity is "led_fsm,Vivado 2022.1";
end design_1_led_fsm_0_0;

architecture STRUCTURE of design_1_led_fsm_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sys_clock, INSERT_VIP 0";
begin
inst: entity work.design_1_led_fsm_0_0_led_fsm
     port map (
      clk => clk,
      enable => enable,
      enb_led => enb_led,
      led_enb(2 downto 0) => led_enb(2 downto 0),
      sw_in(2 downto 0) => sw_in(2 downto 0)
    );
end STRUCTURE;
