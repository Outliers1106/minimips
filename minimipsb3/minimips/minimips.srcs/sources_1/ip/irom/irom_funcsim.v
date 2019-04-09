// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Sat Mar 30 13:08:29 2019
// Host        : DESKTOP-BRS6M9C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim F:/minimipsb3/minimips/minimips.srcs/sources_1/ip/irom/irom_funcsim.v
// Design      : irom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "irom,dist_mem_gen_v8_0,{}" *) 
(* core_generation_info = "irom,dist_mem_gen_v8_0,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dist_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=7,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_ADDR_WIDTH=10,C_DEFAULT_DATA=0,C_DEPTH=1024,C_HAS_CLK=0,C_HAS_D=0,C_HAS_DPO=0,C_HAS_DPRA=0,C_HAS_I_CE=0,C_HAS_QDPO=0,C_HAS_QDPO_CE=0,C_HAS_QDPO_CLK=0,C_HAS_QDPO_RST=0,C_HAS_QDPO_SRST=0,C_HAS_QSPO=0,C_HAS_QSPO_CE=0,C_HAS_QSPO_RST=0,C_HAS_QSPO_SRST=0,C_HAS_SPO=1,C_HAS_WE=0,C_MEM_INIT_FILE=irom.mif,C_ELABORATION_DIR=./,C_MEM_TYPE=0,C_PIPELINE_STAGES=0,C_QCE_JOINED=0,C_QUALIFY_WE=0,C_READ_MIF=1,C_REG_A_D_INPUTS=0,C_REG_DPRA_INPUT=0,C_SYNC_ENABLE=1,C_WIDTH=32,C_PARSER_TYPE=1}" *) 
(* NotValidForBitStream *)
module irom
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire [9:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

(* C_FAMILY = "artix7" *) 
   (* C_HAS_D = "0" *) 
   (* C_HAS_DPO = "0" *) 
   (* C_HAS_DPRA = "0" *) 
   (* C_HAS_I_CE = "0" *) 
   (* C_HAS_QDPO = "0" *) 
   (* C_HAS_QDPO_CE = "0" *) 
   (* C_HAS_QDPO_CLK = "0" *) 
   (* C_HAS_QDPO_RST = "0" *) 
   (* C_HAS_QDPO_SRST = "0" *) 
   (* C_HAS_WE = "0" *) 
   (* C_MEM_TYPE = "0" *) 
   (* C_PIPELINE_STAGES = "0" *) 
   (* C_QCE_JOINED = "0" *) 
   (* C_QUALIFY_WE = "0" *) 
   (* C_REG_DPRA_INPUT = "0" *) 
   (* DONT_TOUCH *) 
   (* c_addr_width = "10" *) 
   (* c_default_data = "0" *) 
   (* c_depth = "1024" *) 
   (* c_elaboration_dir = "./" *) 
   (* c_has_clk = "0" *) 
   (* c_has_qspo = "0" *) 
   (* c_has_qspo_ce = "0" *) 
   (* c_has_qspo_rst = "0" *) 
   (* c_has_qspo_srst = "0" *) 
   (* c_has_spo = "1" *) 
   (* c_mem_init_file = "irom.mif" *) 
   (* c_parser_type = "1" *) 
   (* c_read_mif = "1" *) 
   (* c_reg_a_d_inputs = "0" *) 
   (* c_sync_enable = "1" *) 
   (* c_width = "32" *) 
   irom_dist_mem_gen_v8_0__parameterized0 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0" *) (* C_FAMILY = "artix7" *) (* C_ADDR_WIDTH = "10" *) 
(* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "1024" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "irom.mif" *) (* C_ELABORATION_DIR = "./" *) (* C_MEM_TYPE = "0" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* C_PARSER_TYPE = "1" *) 
module irom_dist_mem_gen_v8_0__parameterized0
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [9:0]a;
  input [31:0]d;
  input [9:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [9:0]a;
  wire n_0_g0_b0;
  wire n_0_g0_b1;
  wire n_0_g0_b11;
  wire n_0_g0_b14;
  wire n_0_g0_b17;
  wire n_0_g0_b19;
  wire n_0_g0_b2;
  wire n_0_g0_b21;
  wire n_0_g0_b24;
  wire n_0_g0_b26;
  wire n_0_g0_b27;
  wire n_0_g0_b28;
  wire n_0_g0_b29;
  wire n_0_g0_b3;
  wire n_0_g0_b31;
  wire n_0_g0_b5;
  wire n_0_g0_b7;
  wire [31:0]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31] = \^spo [31];
  assign spo[30] = \<const0> ;
  assign spo[29:26] = \^spo [29:26];
  assign spo[25] = \<const0> ;
  assign spo[24] = \^spo [24];
  assign spo[23] = \<const0> ;
  assign spo[22] = \<const0> ;
  assign spo[21] = \^spo [21];
  assign spo[20] = \<const0> ;
  assign spo[19] = \^spo [19];
  assign spo[18] = \<const0> ;
  assign spo[17] = \^spo [17];
  assign spo[16] = \<const0> ;
  assign spo[15] = \<const0> ;
  assign spo[14] = \^spo [14];
  assign spo[13] = \<const0> ;
  assign spo[12] = \<const0> ;
  assign spo[11] = \^spo [11];
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \^spo [7];
  assign spo[6] = \<const0> ;
  assign spo[5] = \^spo [5];
  assign spo[4] = \<const0> ;
  assign spo[3:0] = \^spo [3:0];
GND GND
       (.G(\<const0> ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     g0_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(n_0_g0_b0));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     g0_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(n_0_g0_b1));
LUT6 #(
    .INIT(64'h0000000000000042)) 
     g0_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(n_0_g0_b11));
LUT6 #(
    .INIT(64'h0000000000000042)) 
     g0_b14
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(n_0_g0_b14));
LUT6 #(
    .INIT(64'h0000000000000034)) 
     g0_b17
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(n_0_g0_b17));
LUT6 #(
    .INIT(64'h00000000000000B7)) 
     g0_b19
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(n_0_g0_b19));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h00000004)) 
     g0_b2
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[5]),
        .O(n_0_g0_b2));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     g0_b21
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(n_0_g0_b21));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     g0_b24
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(n_0_g0_b24));
LUT6 #(
    .INIT(64'h00000000000000B1)) 
     g0_b26
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(n_0_g0_b26));
LUT6 #(
    .INIT(64'h0000000000000491)) 
     g0_b27
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(n_0_g0_b27));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h00000008)) 
     g0_b28
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[5]),
        .O(n_0_g0_b28));
LUT6 #(
    .INIT(64'h00000000000000B4)) 
     g0_b29
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(n_0_g0_b29));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     g0_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(n_0_g0_b3));
LUT5 #(
    .INIT(32'h00000001)) 
     g0_b31
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[5]),
        .O(n_0_g0_b31));
LUT6 #(
    .INIT(64'h0000000000000040)) 
     g0_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(n_0_g0_b5));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     g0_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(n_0_g0_b7));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[0]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b0),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [0]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[11]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b11),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [11]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[14]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b14),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [14]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[17]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b17),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [17]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[19]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b19),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [19]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[1]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b1),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [1]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[21]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b21),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [21]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[24]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b24),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [24]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[26]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b26),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [26]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[27]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b27),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [27]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[28]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b28),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [28]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[29]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b29),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [29]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[2]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b2),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [2]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[31]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b31),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [31]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[3]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b3),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [3]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[5]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b5),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [5]));
LUT5 #(
    .INIT(32'h00000004)) 
     \spo[7]_INST_0 
       (.I0(a[8]),
        .I1(n_0_g0_b7),
        .I2(a[7]),
        .I3(a[6]),
        .I4(a[9]),
        .O(\^spo [7]));
endmodule
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
