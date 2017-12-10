// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Sun Dec 10 05:12:49 2017
// Host        : DESKTOP-5452HUO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/gconeice/ComputerTheory/CPU/CPU.srcs/sources_1/ip/try_rom/try_rom_sim_netlist.v
// Design      : try_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "try_rom,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module try_rom
   (a,
    spo);
  input [11:0]a;
  output [31:0]spo;

  wire [11:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "kintex7" *) 
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
  (* c_addr_width = "12" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "4096" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "try_rom.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  try_rom_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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

(* C_ADDR_WIDTH = "12" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "4096" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "kintex7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "try_rom.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_12" *) 
module try_rom_dist_mem_gen_v8_0_12
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
  input [11:0]a;
  input [31:0]d;
  input [11:0]dpra;
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
  wire [11:0]a;
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
  assign spo[31:7] = \^spo [31:7];
  assign spo[6] = \<const0> ;
  assign spo[5:0] = \^spo [5:0];
  GND GND
       (.G(\<const0> ));
  try_rom_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [31:7],\^spo [5:0]}));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_12_synth" *) 
module try_rom_dist_mem_gen_v8_0_12_synth
   (spo,
    a);
  output [30:0]spo;
  input [11:0]a;

  wire [11:0]a;
  wire [30:0]spo;

  try_rom_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module try_rom_rom
   (spo,
    a);
  output [30:0]spo;
  input [11:0]a;

  wire [11:0]a;
  wire [30:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_4_n_0 ;
  wire \spo[13]_INST_0_i_5_n_0 ;
  wire \spo[13]_INST_0_i_6_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_4_n_0 ;
  wire \spo[14]_INST_0_i_5_n_0 ;
  wire \spo[14]_INST_0_i_6_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[15]_INST_0_i_4_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_3_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_4_n_0 ;
  wire \spo[27]_INST_0_i_1_n_0 ;
  wire \spo[27]_INST_0_i_2_n_0 ;
  wire \spo[27]_INST_0_i_3_n_0 ;
  wire \spo[27]_INST_0_i_4_n_0 ;
  wire \spo[27]_INST_0_i_5_n_0 ;
  wire \spo[27]_INST_0_i_6_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[30]_INST_0_i_1_n_0 ;
  wire \spo[30]_INST_0_i_2_n_0 ;
  wire \spo[30]_INST_0_i_3_n_0 ;
  wire \spo[31]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_3_n_0 ;
  wire \spo[31]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[0]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[0]_INST_0_i_3_n_0 ),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'h0000000004080008)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[2]),
        .I1(\spo[11]_INST_0_i_1_n_0 ),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h033000000CB80000)) 
    \spo[0]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h12240000C1440000)) 
    \spo[0]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[10]_INST_0 
       (.I0(\spo[10]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[10]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[10]_INST_0_i_3_n_0 ),
        .O(spo[9]));
  LUT6 #(
    .INIT(64'h0000000007770000)) 
    \spo[10]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[11]_INST_0_i_1_n_0 ),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3FF23BFF00000000)) 
    \spo[10]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(\spo[31]_INST_0_i_4_n_0 ),
        .O(\spo[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDE00008C000000)) 
    \spo[10]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[11]_INST_0 
       (.I0(a[5]),
        .I1(\spo[11]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(\spo[11]_INST_0_i_2_n_0 ),
        .I4(a[3]),
        .I5(\spo[11]_INST_0_i_3_n_0 ),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[11]_INST_0_i_1 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[10]),
        .I3(a[11]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h32EFFBFF00000000)) 
    \spo[11]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_4_n_0 ),
        .O(\spo[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8DD0000D6EC0000)) 
    \spo[11]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[12]_INST_0 
       (.I0(\spo[12]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[12]_INST_0_i_3_n_0 ),
        .O(spo[11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006700)) 
    \spo[12]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(\spo[11]_INST_0_i_1_n_0 ),
        .I4(a[5]),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400880)) 
    \spo[12]_INST_0_i_2 
       (.I0(a[5]),
        .I1(\spo[31]_INST_0_i_4_n_0 ),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400280020001000)) 
    \spo[12]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[12]_INST_0_i_3_n_0 ));
  MUXF8 \spo[13]_INST_0 
       (.I0(\spo[13]_INST_0_i_1_n_0 ),
        .I1(\spo[13]_INST_0_i_2_n_0 ),
        .O(spo[12]),
        .S(a[6]));
  MUXF7 \spo[13]_INST_0_i_1 
       (.I0(\spo[13]_INST_0_i_3_n_0 ),
        .I1(\spo[13]_INST_0_i_4_n_0 ),
        .O(\spo[13]_INST_0_i_1_n_0 ),
        .S(a[3]));
  MUXF7 \spo[13]_INST_0_i_2 
       (.I0(\spo[13]_INST_0_i_5_n_0 ),
        .I1(\spo[13]_INST_0_i_6_n_0 ),
        .O(\spo[13]_INST_0_i_2_n_0 ),
        .S(a[3]));
  LUT6 #(
    .INIT(64'h1C00E000E0004000)) 
    \spo[13]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h437000000E380000)) 
    \spo[13]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000002800)) 
    \spo[13]_INST_0_i_5 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[13]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h002000C0)) 
    \spo[13]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(\spo[11]_INST_0_i_1_n_0 ),
        .I3(a[5]),
        .I4(a[2]),
        .O(\spo[13]_INST_0_i_6_n_0 ));
  MUXF8 \spo[14]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(\spo[14]_INST_0_i_2_n_0 ),
        .O(spo[13]),
        .S(a[6]));
  MUXF7 \spo[14]_INST_0_i_1 
       (.I0(\spo[14]_INST_0_i_3_n_0 ),
        .I1(\spo[14]_INST_0_i_4_n_0 ),
        .O(\spo[14]_INST_0_i_1_n_0 ),
        .S(a[3]));
  MUXF7 \spo[14]_INST_0_i_2 
       (.I0(\spo[14]_INST_0_i_5_n_0 ),
        .I1(\spo[14]_INST_0_i_6_n_0 ),
        .O(\spo[14]_INST_0_i_2_n_0 ),
        .S(a[3]));
  LUT6 #(
    .INIT(64'h12650000C0000000)) 
    \spo[14]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h233000008C300000)) 
    \spo[14]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000040004000300)) 
    \spo[14]_INST_0_i_5 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0C000100)) 
    \spo[14]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_1_n_0 ),
        .I4(a[1]),
        .O(\spo[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(\spo[15]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[15]_INST_0_i_3_n_0 ),
        .I4(a[3]),
        .I5(\spo[15]_INST_0_i_4_n_0 ),
        .O(spo[14]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spo[15]_INST_0_i_1 
       (.I0(a[5]),
        .I1(\spo[11]_INST_0_i_1_n_0 ),
        .I2(a[2]),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2010)) 
    \spo[15]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(\spo[11]_INST_0_i_1_n_0 ),
        .I3(a[1]),
        .O(\spo[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h673800000C300000)) 
    \spo[15]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1C00200060004000)) 
    \spo[15]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[15]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[16]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(a[3]),
        .I2(\spo[31]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[16]_INST_0_i_1_n_0 ),
        .O(spo[15]));
  LUT6 #(
    .INIT(64'h0080000000101000)) 
    \spo[16]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(\spo[11]_INST_0_i_1_n_0 ),
        .I3(a[5]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[17]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(a[3]),
        .I2(\spo[31]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[17]_INST_0_i_1_n_0 ),
        .O(spo[16]));
  LUT6 #(
    .INIT(64'h0064000001100000)) 
    \spo[17]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(\spo[11]_INST_0_i_1_n_0 ),
        .I5(a[1]),
        .O(\spo[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[18]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[18]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(\spo[18]_INST_0_i_2_n_0 ),
        .I4(a[3]),
        .I5(\spo[18]_INST_0_i_3_n_0 ),
        .O(spo[17]));
  LUT6 #(
    .INIT(64'h0050008000000000)) 
    \spo[18]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(\spo[31]_INST_0_i_4_n_0 ),
        .I3(a[5]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1004000041C40000)) 
    \spo[18]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h20000A0000009400)) 
    \spo[18]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[19]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[21]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(\spo[19]_INST_0_i_1_n_0 ),
        .I4(a[3]),
        .I5(\spo[19]_INST_0_i_2_n_0 ),
        .O(spo[18]));
  LUT6 #(
    .INIT(64'h10630000870E0000)) 
    \spo[19]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[4]),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE55900000A840000)) 
    \spo[19]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[1]_INST_0_i_3_n_0 ),
        .I4(a[3]),
        .I5(\spo[1]_INST_0_i_4_n_0 ),
        .O(spo[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000EF00)) 
    \spo[1]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(\spo[11]_INST_0_i_1_n_0 ),
        .I4(a[5]),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080004000300)) 
    \spo[1]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h60404080A00020A0)) 
    \spo[1]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_4_n_0 ),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8DD1000000800000)) 
    \spo[1]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[20]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[21]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(\spo[20]_INST_0_i_1_n_0 ),
        .I4(a[3]),
        .I5(\spo[20]_INST_0_i_2_n_0 ),
        .O(spo[19]));
  LUT6 #(
    .INIT(64'h30E1000087060000)) 
    \spo[20]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[4]),
        .O(\spo[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE51900000A840000)) 
    \spo[20]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[21]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[21]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(\spo[21]_INST_0_i_2_n_0 ),
        .I4(a[3]),
        .I5(\spo[21]_INST_0_i_3_n_0 ),
        .O(spo[20]));
  LUT6 #(
    .INIT(64'h0000220000008600)) 
    \spo[21]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h306100008F060000)) 
    \spo[21]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[4]),
        .O(\spo[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE15900000A840000)) 
    \spo[21]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[22]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[22]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(\spo[22]_INST_0_i_2_n_0 ),
        .I4(a[3]),
        .I5(\spo[22]_INST_0_i_3_n_0 ),
        .O(spo[21]));
  LUT6 #(
    .INIT(64'h0400030008000C00)) 
    \spo[22]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1061000087CE0000)) 
    \spo[22]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[4]),
        .O(\spo[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE119000000840000)) 
    \spo[22]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[23]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[31]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[23]_INST_0_i_1_n_0 ),
        .I4(a[3]),
        .I5(\spo[23]_INST_0_i_2_n_0 ),
        .O(spo[22]));
  LUT6 #(
    .INIT(64'h4008804000000000)) 
    \spo[23]_INST_0_i_1 
       (.I0(a[5]),
        .I1(\spo[31]_INST_0_i_4_n_0 ),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00004A0040001400)) 
    \spo[23]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[24]_INST_0 
       (.I0(\spo[25]_INST_0_i_1_n_0 ),
        .I1(\spo[29]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_3_n_0 ),
        .I4(a[3]),
        .I5(\spo[24]_INST_0_i_1_n_0 ),
        .O(spo[23]));
  LUT6 #(
    .INIT(64'h85090000512A0000)) 
    \spo[24]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[4]),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[25]_INST_0 
       (.I0(\spo[25]_INST_0_i_1_n_0 ),
        .I1(\spo[31]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[25]_INST_0_i_2_n_0 ),
        .I4(a[3]),
        .I5(\spo[25]_INST_0_i_3_n_0 ),
        .O(spo[24]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spo[25]_INST_0_i_1 
       (.I0(a[1]),
        .I1(\spo[11]_INST_0_i_1_n_0 ),
        .I2(a[5]),
        .I3(a[2]),
        .O(\spo[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000080000000000)) 
    \spo[25]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000601040)) 
    \spo[25]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(\spo[31]_INST_0_i_4_n_0 ),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[26]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(\spo[26]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[26]_INST_0_i_3_n_0 ),
        .I4(a[3]),
        .I5(\spo[26]_INST_0_i_4_n_0 ),
        .O(spo[25]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    \spo[26]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(\spo[11]_INST_0_i_1_n_0 ),
        .I3(a[5]),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400030008000000)) 
    \spo[26]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4A002E00A2008800)) 
    \spo[26]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1C45000080280000)) 
    \spo[26]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[26]_INST_0_i_4_n_0 ));
  MUXF8 \spo[27]_INST_0 
       (.I0(\spo[27]_INST_0_i_1_n_0 ),
        .I1(\spo[27]_INST_0_i_2_n_0 ),
        .O(spo[26]),
        .S(a[6]));
  MUXF7 \spo[27]_INST_0_i_1 
       (.I0(\spo[27]_INST_0_i_3_n_0 ),
        .I1(\spo[27]_INST_0_i_4_n_0 ),
        .O(\spo[27]_INST_0_i_1_n_0 ),
        .S(a[3]));
  MUXF7 \spo[27]_INST_0_i_2 
       (.I0(\spo[27]_INST_0_i_5_n_0 ),
        .I1(\spo[27]_INST_0_i_6_n_0 ),
        .O(\spo[27]_INST_0_i_2_n_0 ),
        .S(a[3]));
  LUT6 #(
    .INIT(64'h0000820004001C00)) 
    \spo[27]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h41000C0000000000)) 
    \spo[27]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0040404000000000)) 
    \spo[27]_INST_0_i_5 
       (.I0(a[5]),
        .I1(\spo[31]_INST_0_i_4_n_0 ),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \spo[27]_INST_0_i_6 
       (.I0(a[1]),
        .I1(\spo[11]_INST_0_i_1_n_0 ),
        .I2(a[5]),
        .I3(a[0]),
        .O(\spo[27]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[31]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[28]_INST_0_i_1_n_0 ),
        .I4(a[3]),
        .I5(\spo[28]_INST_0_i_2_n_0 ),
        .O(spo[27]));
  LUT6 #(
    .INIT(64'h0100480040000000)) 
    \spo[28]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020004003C00)) 
    \spo[28]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(\spo[29]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_3_n_0 ),
        .I4(a[3]),
        .I5(\spo[29]_INST_0_i_4_n_0 ),
        .O(spo[28]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h07000800)) 
    \spo[29]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(\spo[11]_INST_0_i_1_n_0 ),
        .I4(a[1]),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400030008000000)) 
    \spo[29]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h220AA02A00000000)) 
    \spo[29]_INST_0_i_3 
       (.I0(\spo[31]_INST_0_i_4_n_0 ),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8553000002CC0000)) 
    \spo[29]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[2]_INST_0_i_3_n_0 ),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'h00FC000000C70000)) 
    \spo[2]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(\spo[11]_INST_0_i_1_n_0 ),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h031C000070F10000)) 
    \spo[2]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1C00AE00A4006C00)) 
    \spo[2]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[30]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(\spo[30]_INST_0_i_2_n_0 ),
        .I4(a[3]),
        .I5(\spo[30]_INST_0_i_3_n_0 ),
        .O(spo[29]));
  LUT6 #(
    .INIT(64'h0040400400000000)) 
    \spo[30]_INST_0_i_1 
       (.I0(a[5]),
        .I1(\spo[31]_INST_0_i_4_n_0 ),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0081000010C00000)) 
    \spo[30]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h40010000102C0000)) 
    \spo[30]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[31]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(a[3]),
        .I2(\spo[31]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[31]_INST_0_i_3_n_0 ),
        .O(spo[30]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[31]_INST_0_i_1 
       (.I0(a[5]),
        .I1(\spo[11]_INST_0_i_1_n_0 ),
        .I2(a[1]),
        .O(\spo[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040008000000000)) 
    \spo[31]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(\spo[31]_INST_0_i_4_n_0 ),
        .I3(a[5]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004080440)) 
    \spo[31]_INST_0_i_3 
       (.I0(a[1]),
        .I1(\spo[11]_INST_0_i_1_n_0 ),
        .I2(a[5]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[31]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[31]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[11]),
        .I2(a[10]),
        .I3(a[8]),
        .I4(a[9]),
        .O(\spo[31]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[3]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[3]_INST_0_i_3_n_0 ),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'h0000C1000000C000)) 
    \spo[3]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[11]_INST_0_i_1_n_0 ),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h033000000C700000)) 
    \spo[3]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1C002E0020004000)) 
    \spo[3]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(\spo[31]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[4]_INST_0_i_2_n_0 ),
        .I4(a[3]),
        .I5(\spo[4]_INST_0_i_3_n_0 ),
        .O(spo[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spo[4]_INST_0_i_1 
       (.I0(a[1]),
        .I1(\spo[11]_INST_0_i_1_n_0 ),
        .I2(a[5]),
        .I3(a[0]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4030400000000000)) 
    \spo[4]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(\spo[31]_INST_0_i_4_n_0 ),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0011000001A60000)) 
    \spo[4]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[5]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[5]_INST_0_i_3_n_0 ),
        .O(spo[5]));
  LUT6 #(
    .INIT(64'h0000680000002B00)) 
    \spo[5]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(\spo[11]_INST_0_i_1_n_0 ),
        .I4(a[5]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000010C10000)) 
    \spo[5]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00008E0084003C00)) 
    \spo[5]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[7]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[7]_INST_0_i_3_n_0 ),
        .O(spo[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00900080)) 
    \spo[7]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(\spo[11]_INST_0_i_1_n_0 ),
        .I3(a[5]),
        .I4(a[2]),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h14002400)) 
    \spo[7]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[5]),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1C00240020004000)) 
    \spo[7]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(\spo[31]_INST_0_i_4_n_0 ),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[8]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[8]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[8]_INST_0_i_3_n_0 ),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'h000000000B730000)) 
    \spo[8]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[11]_INST_0_i_1_n_0 ),
        .I5(a[5]),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h32EFFB3F00000000)) 
    \spo[8]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_4_n_0 ),
        .O(\spo[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCFD0000F4E80000)) 
    \spo[8]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[9]_INST_0_i_2_n_0 ),
        .I3(a[3]),
        .I4(\spo[9]_INST_0_i_3_n_0 ),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'h0000000003B70000)) 
    \spo[9]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(\spo[11]_INST_0_i_1_n_0 ),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3FCA3FFF00000000)) 
    \spo[9]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(\spo[31]_INST_0_i_4_n_0 ),
        .O(\spo[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF0000B0000000)) 
    \spo[9]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(\spo[31]_INST_0_i_4_n_0 ),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_3_n_0 ));
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
