// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun 29 10:13:19 2020
// Host        : DESKTOP-P4UPRAE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ addsub_no_u_sim_netlist.v
// Design      : addsub_no_u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flva2104-3-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "addsub_no_u,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    ADD,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire ADD;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "2" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000000000000000000000000000" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(ADD),
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

(* C_ADD_MODE = "2" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
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
  wire ADD;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "2" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000000000000000000000000000" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(ADD),
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
RRtV7zMFuGJT0PeXVbyDbQMrDQalRjEIP8KVMXPH6HC+2vuu3PXmHoEyWBp2Sv395FWwUjx7Orwr
Yh+QvBjJ7lCksPwbNJqo+XPizbJseGfV1oVfEgJwyQhThOGzWh0xF2608VOVK9kamQjCdXaRrDMk
oCMq8mP0Glg7M2I/ptWm1xnn+5ZX0EG9BZh7xHYcohiu9vXdmjIKCqWMv+NLUxPZQ6IHqnMFfFTw
3zax2FHy9ytcrlOS/QNUHh3ymSmGcOt472nJnBph/n/WmNtr83rzmkCAVwjDp3o2cyD1W1skvPCd
Ns6p0HH2Wrd02aT8QUzaKReJy4bpZ7LNYDOlog==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XWH+APqblBKJE9OONPI6s7kET1GwjK5gyXpbs7mmD8BHsjTegvJAUXf89xTLpTlIMBFLuUB6uCHE
bIKTqSmoWR0By3X2iqP3JOf84E+8+7b2z9RQ/3LzQbct9Pi1rALjgE1LLAvwvq+7fDoPjPapugEH
qkcyGlBlpVQxAQgkAE9i2L16aZdymNQLYfznlIoNLjW0upNx0pkXqRKbRfj7vax8MP3VuhWQ+1xe
NhSvQMt9z/Nzs+D3mYNfm9UI5tUySju4Mv4bunaQeY38WYMCQNvrppsTSSig5Az1NE+k2i5iO6Uh
MDVFUxmTXOuEUEMigegPgYmzfiA1xtPVWANbzg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12736)
`pragma protect data_block
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
UWqLtWFlcaC69FAEgvKV72zVu8e5yTg0uw==
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
