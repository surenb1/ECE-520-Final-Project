// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Apr 26 20:23:41 2026
// Host        : WIN-3EQ24N3DD8G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_sb/signal_detect_sb.gen/sources_1/bd/signal_detect_bd/ip/signal_detect_bd_top_0_0/signal_detect_bd_top_0_0_stub.v
// Design      : signal_detect_bd_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top,Vivado 2023.1" *)
module signal_detect_bd_top_0_0(clk, rst_n, sw, sample_out, status_out)
/* synthesis syn_black_box black_box_pad_pin="rst_n,sw[3:0],sample_out[15:0],status_out[2:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst_n;
  input [3:0]sw;
  output [15:0]sample_out;
  output [2:0]status_out;
endmodule
