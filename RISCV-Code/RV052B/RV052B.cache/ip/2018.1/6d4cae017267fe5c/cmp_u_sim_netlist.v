// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun 29 23:15:03 2020
// Host        : DESKTOP-P4UPRAE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cmp_u_sim_netlist.v
// Design      : cmp_u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flva2104-3-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cmp_u,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [32:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [32:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [32:0]S;

  wire [32:0]A;
  wire [32:0]B;
  wire CE;
  wire CLK;
  wire [32:0]S;
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
  (* c_a_width = "33" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "000000000000000000000000000000000" *) 
  (* c_b_width = "33" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "33" *) 
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
(* C_A_WIDTH = "33" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "000000000000000000000000000000000" *) 
(* C_B_WIDTH = "33" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "33" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
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
  input [32:0]A;
  input [32:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [32:0]S;

  wire \<const0> ;
  wire [32:0]A;
  wire [32:0]B;
  wire CE;
  wire CLK;
  wire [32:0]S;
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
  (* c_a_width = "33" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "000000000000000000000000000000000" *) 
  (* c_b_width = "33" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "33" *) 
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
RHkXOCdK4o/OmqZ50OrEKPISs9RIcEa2Bv98rVj311hOwjqB1So0EziaL9ay4ZP8lJXl7EtdWVCx
tix4eNIH36zxWXmuWp2iEXy29MgtsvYjo6gesQvoRs4QT2FGF+Mc7W2EdMgPltS1NBzOdYwBc8B6
6oKcNrw3iA9t0Q5jM1Vqz4sIAqNdhMAKWb3hDeANfzzbIeN+NS8L0V/3PSzMReOBubSYtXviSQ3d
NHNbeqeM3pIE7CtdhXqLMl068Z/uwQF/Pv+obEV/R8yijPHgaTACCdsocmmMqexN6tD1uNLIySv7
yA5eneOxab+GXYgjEl2qQivHeGNVvw5DX9IFcQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N9Pe7OKGZvD0H6q6KS5i0UywiEK/l4kB0SK9f+Z75fjTcbMHttu6QgSscaDH9pCSisQV6PhYTX80
Tq2Y83HyGvFlGOwLwW3KD5ap4yKiKzgAj3BRujybeko6uVL+FUs6dbM2MA8VYrT/HqeXk6E0IcIh
5bgLB6E2w3qsYQTpFOaOIFLyQbSYck9KOdOw8R0HrjfCDIQLEeBABw5qI9z7w6rNlZzdG+yNqm7y
2Ut8UH0Dd/M0Y62U1m7zdrzwyrizehIBOTwKp/P1GzuuntIDD6iBjMgwfGZ5C5/GICTx/gm+Jx64
wN6AVU0BcmCYnHMnmLbK7apC3yDglsD/vdV+SQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23680)
`pragma protect data_block
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
wjzCcoqwgdq1dnDn03nvLCefR0yG8yP5dw==
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
