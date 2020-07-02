// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun 29 19:54:11 2020
// Host        : DESKTOP-P4UPRAE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cmp_signed_sim_netlist.v
// Design      : cmp_signed
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flva2104-3-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cmp_signed,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "32" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "32" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintexu" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [31:0]S;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "32" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
HXV4h5+M0Gyv7vvpLcg9doICq0dE9GVjJBO+hNdPTJvgX0VGA4ugqBKlkEqGuOyKztRGzLB27s8X
6i5leC2InQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dAxa0GFtAgoazxeRmxSl0Yps/nJ8Rpb3lCs3dkGXEdmxjp4N5EFfyS7U0FLTPNVV4xnePCr4q647
L4KcUzdGFlWPqo/QF8lyz6PEdU6dW8BktZKhrZHQ5uhG7d/Bf0EOVUn0mzfj8sgbaKWZYTEDERK6
pLNcwS3fMTcRzexShzE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qFA2Sas20o42qyLKUfSMJZGJ7FMOuYDRWyURzBBH3n2Qkaa75HLaliBCTs00LUZYplObnmj1+ZAf
80sKN7qGXguQ1PwKDYYHAVh9l9yGVlyNwObLOec7nrtHIPRPZ1Am330sVZYMipFnG9PAZanD2fe4
zBKk26jw4HdRQmG3vM1SWF3vXt1VR+UBS5eMUwG6haQqtGIZWHz48uyl4zc44Tqr2H4sR+yo0gE9
bXUY7Oc0GQvnczTzBftbc9jGOvnoi8sVcybTki5B/gTVWkBqcYl+Bx+SSOCo+FyQZGBqrUAFnf1m
pKFCRJnXqs4g3cmrmEG2RflwrWfJCOs3QdUjPQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EHIPCw3tqvASBeRc846RSvWMIU/QBgZYfNTkmzG9OlWqwIA3ukwCJx+dEAZCMyg/i7GW815EkwKE
ar/FOnRiTLMQpurIVTi3As1Sl6c1DkXq90HBljZSq18EFjvlH8nsGa0654mVCFQN3PiQfUfggiqD
LwP079R222U916zaDIMw6ZgRcbfM7bBAp73emqe6OC5mrt4mMGZ9AbQkGRU4iJeWX5x5zM0ev20/
2HCVT3rThYEK/hMu/29O6ZYpOwhKqVFUV8jaodAIgDRiYY0qd/CTZK9mvOgSUj0t6cJN4/Q/wVKt
mcOTr4F5A5rnCTva3pM2/SBekXOwQb01/rlfUQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L4GJr0S0dl+C4k+rj1r/KaqPKn7XGNysYQlDBTRHxj0Zgto0TejuU3cSjQJkMo/IlhkL5vx3hSMx
8DXh0KGY4W7Mmk5SffBJgti7D1pd1YP3w0zgDKIAkTLpoXaZECn77Jp9JWvdxrSHUb44QeC0VkRr
TT67tMIjtV+eqkCUfUiCSGq39iRyI7EpdVInAevmPCNIG5K4rHLTX0aJWAbgDwBRaTpw7W4wOBUe
Kag07iTsJYfG9TBJdRao3h4g2IyFjrcf4tdYFjQEIGB4Vfxhy6K9JjnkkfxGJQ4A0VrJVKlHsJFv
1+MmwN5+h/oRYCFJgcCtGfttJc2/AOQ8JKB8cw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gW6aOcJbrDMK7JqUnzFxAaYM2DL8EnxF345IOLkdfKxGnLCsw0mROpfP26LD91CJidCf9vaqLHsN
jwsLktZ7qUykkQzv9vOvGkB2KoLh32fPvZjhbcdDei3fy9cH8haCHJCiSghwIIOfzcXDyQO7+mpH
LfBUho9v0PmfLkeqSuE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YOgS+O+OWj8gVxfmdd2e+iTOOA4l1LloRJHtygw6wsU5a/FGoLxtLFOm39pCwOesAIo5cgP1cY7j
GMsvnPuTgP6YVNEPrLenO+0bM+rFgEpkVPDLGiQdrj+9tlcVifFJGGcDEFMtdjPm7SvdpsEh2Fzk
ZyTciJbc1vOSbmNUfL7f5SyT4X8NVQCnr4aIhzmrObrl+d/HXH5pWY0/wveklgGbBxwN3pI0aNdn
cY/a3XotdDTVTgdYnz9zaxscNhKuVHf6BpyCfI+XDdopSBDa7E47+Tot6Ck17VwjOOAKkqSNjD7+
HzzA77lmBhIrUxZnuOejS1O/VD/gmpze9ZPaeA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KNjtcSVICLBWXwGD81tXkrYUuJLt0DFXSdwOwfE3fDkfkURYVbUpgJP9q0crwjvOE6o1u/C/L+po
JWqr7hFM88LgJd/rvTTrEaA5YcQCU2Hw/pRr2h7zo702S1TkxaGgiaul2640RCtwKm16Z3XDD5kR
AS6j31fbMWG/0CMpfNhJeZEwXjhlavTqwZ0SsnsggfUsqoGcaQuMUNWCVc4JdedCLvsdbtGwCGOp
M5cxLGtA4yZrAWzPrNKqKXdRi3p1bA/Q8CLQk1C3nW2e7OrvZ30EcpEphzbsaf5UjrVktHp6dPKR
YaZPxF/2xOMBvhNVw/HORom8AnDGjcf6rF9EFw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hjz8zKIVKPnTHl/is1ZyxkI+yeW2saAfPSNiunYEJqf5JvCzgOU7j9FPVH4CeOohZoZa0HlBD6rY
XH46qIIiqw5C8V+G9xKNN0mrNfQRxGtpQmFI7sL35yp6fb/BxjXlZYnhAJfBxhUtQHpAwp71q+pG
dvjd9GDsLyymVMlJRCB/pt4fSsKRJ0TgrCIH3frjC4CIUsdNSSqJn7U89eglN9t+S/phd1mGpn6l
/gp1Msp0QWyFKCGNTTOCPNhi4dAkPuC/XjEzdgJEi+Tpu3l7KH67WzffDVi8H2KIa2c8uvYffg6V
n/trgsOzpU5wLNRBKnShs720Ed3MSGHqv/jUIA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22528)
`pragma protect data_block
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
EJE7BLBg9ow8uZg96Q==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
