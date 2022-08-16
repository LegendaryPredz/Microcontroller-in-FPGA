// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Aug 14 22:38:19 2022
// Host        : OrionsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/Chick/Microcontroller in FPGA/Microcontroller in
//               FPGA.gen/sources_1/bd/design_1/ip/design_1_led_fsm_0_0/design_1_led_fsm_0_0_stub.v}
// Design      : design_1_led_fsm_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "led_fsm,Vivado 2022.1" *)
module design_1_led_fsm_0_0(clk, enable, sw_in, enb_led, led_enb)
/* synthesis syn_black_box black_box_pad_pin="clk,enable,sw_in[2:0],enb_led,led_enb[2:0]" */;
  input clk;
  input enable;
  input [2:0]sw_in;
  output enb_led;
  output [2:0]led_enb;
endmodule
