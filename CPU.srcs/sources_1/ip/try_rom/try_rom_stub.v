// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Sun Dec 10 05:12:49 2017
// Host        : DESKTOP-5452HUO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/gconeice/ComputerTheory/CPU/CPU.srcs/sources_1/ip/try_rom/try_rom_stub.v
// Design      : try_rom
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2017.3" *)
module try_rom(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[11:0],spo[31:0]" */;
  input [11:0]a;
  output [31:0]spo;
endmodule
