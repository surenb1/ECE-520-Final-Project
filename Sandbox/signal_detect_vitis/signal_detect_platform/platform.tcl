# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\suren\Documents\ECE_520\Final_Project\Sandbox\signal_detect_vitis\signal_detect_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\suren\Documents\ECE_520\Final_Project\Sandbox\signal_detect_vitis\signal_detect_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {signal_detect_platform}\
-hw {C:\Users\suren\Documents\ECE_520\Final_Project\Sandbox\signal_detect_sb\signal_detect_bd_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_vitis}

platform write
platform generate -domains 
platform active {signal_detect_platform}
platform generate
platform config -updatehw {C:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_sb/signal_detect_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_sb/signal_detect_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_sb/signal_detect_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_sb/signal_detect_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_sb/signal_detect_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_sb/signal_detect_bd_wrapper.xsa}
platform config -updatehw {C:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_sb/signal_detect_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_sb/signal_detect_bd_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/signal_detect_sb/signal_detect_bd_wrapper.xsa}
platform generate -domains 
