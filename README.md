# Real-Time Sine Wave Detection System

A hardware-software co-design project implementing a real-time sine wave generation and capture system on the Zybo Z7-10 development board using the Zynq SoC architecture.

## Overview

Four sine waves of varying frequencies and amplitudes are stored in block RAM (BRAM) on the programmable logic (PL) and selectively output based on user switch input. Captured samples are transferred to the ARM processing system (PS) via two AXI GPIO interfaces, streamed over UART to a PC, and plotted using a Python script. For details on intended user operation of the system, please refer to the "How to Use" section.

## Functional Block Diagram
<img width="1212" height="789" alt="Final Block Diagram" src="https://github.com/user-attachments/assets/c6e83f1e-0835-4b65-af12-10dcade28900" />

## Sine Wave Specifications

| Switch | Frequency | Peak Amplitude |
|--------|-----------|----------------|
| SW0    | 1 kHz     | 8,192 (25%)    |
| SW1    | 2 kHz     | 16,384 (50%)   |
| SW2    | 5 kHz     | 24,576 (75%)   |
| SW3    | 10 kHz    | 32,767 (100%)  |

- 256 samples per cycle
- 1,280 total samples per capture (5 cycles)
- 16-bit signed integer sample format
- 1,000 samples per second output rate

## Tools Used

- Xilinx Vivado 2023.1
- Xilinx Vitis 2023.1
- Python 3.14
- pyserial
- matplotlib

## Hardware Requirements

- Zybo Z7-10 development board
- USB-A to Micro-USB cable

## How to Use

1. Program the Zybo Z7-10 with the generated bitstream using Vitis
2. Open a serial terminal or run the Python script on COM4 at 115200 baud
3. Run the Python script:

   python signal_plotter.py

4. Flip exactly one switch (SW0-SW3) on the board to begin capture
5. The script will collect 1,280 samples, save them to samples.csv, and display the waveform plot

## Results
The following are the plots resulting from the successful capture of sampled data by the python script. Figure 1 shows the waveform corresponding to SW0 being switched on. Figure 2 shows the waveform corresponding to SW1 being switched on. Figure 3 shows the waveform corresponding to SW2 being switched on. Finally, Figure 4 shows the corresponding waveform to SW3 being switched on.

### Figure 1 - SW0 Signal Plot
<img width="1200" height="500" alt="TestCase1_SW0_waveform_detected" src="https://github.com/user-attachments/assets/cae2d699-e7d9-4aaa-b912-ab328562c44c" />

### Figure 2 - SW1 Signal Plot
<img width="1200" height="500" alt="TestCase2_SW1_waveform_detected" src="https://github.com/user-attachments/assets/67ee03b2-1710-441d-83ae-f0e64b13947f" />

### Figure 3 - SW2 Signal Plot
<img width="1200" height="500" alt="TestCase3_SW2_waveform_detected" src="https://github.com/user-attachments/assets/dde99750-56d9-4183-ac7c-d363c506453e" />

## Figure 4 - SW3 Signal Plot
<img width="1200" height="500" alt="TestCase4_SW3_waveform_detected" src="https://github.com/user-attachments/assets/1e2c23d0-274f-413a-8383-ffddc00bcc10" />

## Notes

- Only one switch may be active at a time
- Activating multiple switches simultaneously will trigger an error message
- The system automatically detects and reports multi-switch errors via UART

## Video Demo Link
https://youtube.com/shorts/OH825yi2Q50

## Contributors
Suren Bursalyan
Leo Issa Ghoulian
