// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun 29 10:13:20 2020
// Host        : DESKTOP-P4UPRAE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Administrator/Desktop/RV-052B/RISCV-Code/RV052B/RV052B.srcs/sources_1/ip/addsub_no_u/addsub_no_u_sim_netlist.v
// Design      : addsub_no_u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flva2104-3-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "addsub_no_u,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module addsub_no_u
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
  addsub_no_u_c_addsub_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module addsub_no_u_c_addsub_v12_0_12
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
  addsub_no_u_c_addsub_v12_0_12_viv xst_addsub
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
LmvCLBc1MkIgfpfnvtOLZgVYc38tM5PypXl9DcR9FLGyaN3pSMfy3kt6dKlNO4um+OxZm8DvDZlM
248qGvja6bXXn/palyz2leieKgP3h+DJ3GJmPOB7F/2nlP4X+cR2GgKYjXBdw1jiuLbt8133cHz0
iBu5je4zpEErjhPPtqb3+NukQZzE5kEQu9beZwnwE8M6vKtHD9MUjEn02xjWnpDlrYxtWLTiggP2
VXlGLzZLnJ9aKR8xKOKvqj41DfqUTC9mvqJwyRE9hbdcHJeVfbowMlpLDKhR9PFCCYsZSYPPkYVM
bLqM7g3Y8izLz/xmAkL4OBDwdyRdbFVY1jFs7w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MYul74FRwtRxQd2pL9iqjADpo2X2Y78ozP8H5b1pqthfGQAXURPWiD+gS89d6SHp5r6+eKFWAZEK
nKDPK0XknxcwlrkAQeC0Vut4OrRYbkK5mrpz1TZKlsvsm4guwOrpZdUwI51qLB4uvVWC3Lkyh3Fv
B7Q2gUs9Rtmolr32yPVvnRnDa6T8uv+eytZ2FrdcvilkmwR54WXOEVZ+9Ltg2nvewP5MMtf+SgcE
wojzMIiY22cx2/R43achrwItqGI0mdQur8nTE8duX0Etobq7uTY1iX3YFOVx4u/mNPq448/uifAy
FUfY4/Ot+JUHuCQtJBQwlTXG54q/WAtcOi6dSA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12704)
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
