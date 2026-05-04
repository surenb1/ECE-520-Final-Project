-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Apr 26 20:23:41 2026
-- Host        : WIN-3EQ24N3DD8G running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_sb/signal_detect_sb.gen/sources_1/bd/signal_detect_bd/ip/signal_detect_bd_top_0_0/signal_detect_bd_top_0_0_stub.vhdl
-- Design      : signal_detect_bd_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity signal_detect_bd_top_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sample_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    status_out : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end signal_detect_bd_top_0_0;

architecture stub of signal_detect_bd_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,sw[3:0],sample_out[15:0],status_out[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top,Vivado 2023.1";
begin
end;
