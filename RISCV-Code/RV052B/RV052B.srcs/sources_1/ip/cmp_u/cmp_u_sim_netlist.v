// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun 29 23:15:04 2020
// Host        : DESKTOP-P4UPRAE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Administrator/Desktop/RV-052B/RISCV-Code/RV052B/RV052B.srcs/sources_1/ip/cmp_u/cmp_u_sim_netlist.v
// Design      : cmp_u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flva2104-3-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cmp_u,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module cmp_u
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
  cmp_u_c_addsub_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module cmp_u_c_addsub_v12_0_12
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
  cmp_u_c_addsub_v12_0_12_viv xst_addsub
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
IxE7tnOt/NHo3yi/K0IFJY1aEcvzzCxrA8R7Ym/EQjnhCpHXbTPk9EWLgFBFc+U3RS8QtuWVVtuQ
NLMeP90DY38MyURJAfsn6rsfp5JrnSp66lpMY4SxolAv2BGeyE+f+xKR3BsjcGeCjLWxV76LEqqO
S3mC4/VReAf+nT5tdZ8XYhg6nK5R1VJSg89UAr65kqAhFcjGnRIC91MJ8N3DlJgjZmARQQC8dLLb
NCzcUDUpaqavRvMzy7fHOKMOM1V6/M1U5BNLB/9sP+3/SHZcOVI4AZACN9yt2l3qeuEJHhNQKW3s
9nZT3pCksKA+OPhNF9KezebauJYKrldxQkJ4Vw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qxcwnvp6rF/bknXFA5RGmFmHe8bWCU8D6zO8vDQ9ZRb5WiUb3ym42RcMUIf++iTe+nDhm49/byGM
q8W3NuMtpX3+6WxneIdQBWDWViD4x6QYm9V+ymh7f0XICnNB8m4yCPnnv+uSWWIBmKT8lXrhHUSL
OtxfgzM3cOQWjb2D+V//mpiP6wVDS0qjX3JLWqPunASitsyJBDaLVjtwLuIaKwb11RO/ywGnKh0q
6foReX2/OjRjvN4B8UfK/71Rj8DCbzcehyNupOoZ3WpYjsS3Scmk7RGcad3Txl9BNR+CPzGhs/aj
KmT00rSENHly4gerLOLtKi8GAGY7SbJg4MZGfw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23600)
`pragma protect data_block
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
5iQ=
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
