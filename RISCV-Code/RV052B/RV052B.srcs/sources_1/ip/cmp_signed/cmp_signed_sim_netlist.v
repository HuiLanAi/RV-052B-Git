// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun 29 19:54:12 2020
// Host        : DESKTOP-P4UPRAE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Administrator/Desktop/RV-052B/RISCV-Code/RV052B/RV052B.srcs/sources_1/ip/cmp_signed/cmp_signed_sim_netlist.v
// Design      : cmp_signed
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flva2104-3-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cmp_signed,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module cmp_signed
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
  cmp_signed_c_addsub_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module cmp_signed_c_addsub_v12_0_12
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
  cmp_signed_c_addsub_v12_0_12_viv xst_addsub
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
af5Ban7VabjFUQBg0CpyzwL61fgdwZsbwA5MvmYKJ9WrCTLsMWLhkSDE4QSjuB5EJkHOfa6gkGcG
6HlFE+4HYJK736uJiUG/AH3QaFQ45GblxW96yT46nLluL6PG0LRZ5ouQNn9RWU7ljlYV2Qm0n+cs
Pu/5dfLCkdGZGgtRh2HcXJk+cP1A+vZp1nERGOJ9HmCpTOI+fV/6wkH/0r4EWg0UOrT54MSBZ4oo
KFWY3MbiLFfAd9SqQl1bb+wV7rFdHwznmrpxnTetvS+1OYfUMM984AHosyW7FKhK9PK7oD9fwdkw
pl2FYQPHB8aY7mhZo4r8xIo4MrNGAVhxfF7q+g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
20bguDfEFRT36IV0wf8lIa6kJmy8o4GT7az7sVIO2P3nEQOZa9ab+YblnN38PnyxQbs9pIM1D7W1
QU59GuzUotHy1XzP4EhrXSBd3nQPmM9EHAv9/roxcm+5+yUaSYGGv9/WTIFavp22diHBDeXEwizE
KNOumiz+oxNZG23/NSvFgj65bIgmyN+wVUBSeKBjmvxHdHvaFpNo7w1qERfWPvmT505g4U/Ztp5g
2whUdBPR6mQww7mbefSAva6iorLdwB9/b95DDLQQvhZTB/UIN3/r5BtfXL5bfrh+yDlqKTvfeRm/
QoIFH406en4uf6PzN1N9Z7mEk8wu3y3JliA8MA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22512)
`pragma protect data_block
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
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
