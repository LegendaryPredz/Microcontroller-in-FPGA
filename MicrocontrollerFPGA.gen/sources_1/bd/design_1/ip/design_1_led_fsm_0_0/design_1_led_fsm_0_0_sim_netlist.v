// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Aug 14 22:38:19 2022
// Host        : OrionsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Chick/Microcontroller in FPGA/Microcontroller in
//               FPGA.gen/sources_1/bd/design_1/ip/design_1_led_fsm_0_0/design_1_led_fsm_0_0_sim_netlist.v}
// Design      : design_1_led_fsm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_led_fsm_0_0,led_fsm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "led_fsm,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_led_fsm_0_0
   (clk,
    enable,
    sw_in,
    enb_led,
    led_enb);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sys_clock, INSERT_VIP 0" *) input clk;
  input enable;
  input [2:0]sw_in;
  output enb_led;
  output [2:0]led_enb;

  wire clk;
  wire enable;
  wire enb_led;
  wire [2:0]led_enb;
  wire [2:0]sw_in;

  design_1_led_fsm_0_0_led_fsm inst
       (.clk(clk),
        .enable(enable),
        .enb_led(enb_led),
        .led_enb(led_enb),
        .sw_in(sw_in));
endmodule

(* ORIG_REF_NAME = "led_fsm" *) 
module design_1_led_fsm_0_0_led_fsm
   (enb_led,
    led_enb,
    clk,
    sw_in,
    enable);
  output enb_led;
  output [2:0]led_enb;
  input clk;
  input [2:0]sw_in;
  input enable;

  wire clk;
  wire current_state;
  wire enable;
  wire enb_led;
  wire [2:0]led_enb;
  wire \led_enb[0]_i_1_n_0 ;
  wire \led_enb[1]_i_1_n_0 ;
  wire \led_enb[2]_i_1_n_0 ;
  wire [2:0]sw_in;

  FDRE #(
    .INIT(1'b0)) 
    current_state_reg
       (.C(clk),
        .CE(1'b1),
        .D(enable),
        .Q(current_state),
        .R(1'b0));
  FDRE enb_led_reg
       (.C(clk),
        .CE(1'b1),
        .D(current_state),
        .Q(enb_led),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \led_enb[0]_i_1 
       (.I0(sw_in[0]),
        .I1(current_state),
        .O(\led_enb[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_enb[1]_i_1 
       (.I0(sw_in[1]),
        .I1(current_state),
        .O(\led_enb[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_enb[2]_i_1 
       (.I0(sw_in[2]),
        .I1(current_state),
        .O(\led_enb[2]_i_1_n_0 ));
  FDRE \led_enb_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_enb[0]_i_1_n_0 ),
        .Q(led_enb[0]),
        .R(1'b0));
  FDRE \led_enb_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_enb[1]_i_1_n_0 ),
        .Q(led_enb[1]),
        .R(1'b0));
  FDRE \led_enb_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_enb[2]_i_1_n_0 ),
        .Q(led_enb[2]),
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
