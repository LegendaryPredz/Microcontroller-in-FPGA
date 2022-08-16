-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Sun Aug 14 22:38:19 2022
-- Host        : OrionsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/Chick/Microcontroller in FPGA/Microcontroller in
--               FPGA.gen/sources_1/bd/design_1/ip/design_1_led_fsm_0_0/design_1_led_fsm_0_0_stub.vhdl}
-- Design      : design_1_led_fsm_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_led_fsm_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    sw_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    enb_led : out STD_LOGIC;
    led_enb : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end design_1_led_fsm_0_0;

architecture stub of design_1_led_fsm_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,enable,sw_in[2:0],enb_led,led_enb[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "led_fsm,Vivado 2022.1";
begin
end;
