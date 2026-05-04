# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\suren\Documents\ECE_520\Final_Project\Sandbox\signal_detect_vitis\signal_detect_app_system\_ide\scripts\debugger_signal_detect_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\suren\Documents\ECE_520\Final_Project\Sandbox\signal_detect_vitis\signal_detect_app_system\_ide\scripts\debugger_signal_detect_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351BE7AB6A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351BE7AB6A-13722093-0"}
fpga -file C:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_vitis/signal_detect_app/_ide/bitstream/signal_detect_bd_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_vitis/signal_detect_platform/export/signal_detect_platform/hw/signal_detect_bd_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_vitis/signal_detect_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_vitis/signal_detect_app/Debug/signal_detect_app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
