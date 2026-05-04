# ECE-520-Final-Project
This repository is made for the ECE 520 (SoC Design) final project. It describes and demonstrates our Real-Time Signal Detection system.

# Real-Time Sine Wave Detection System — Zybo Z7-10

A hardware-software co-design project implementing a real-time sine wave generation and capture system on the Zybo Z7-10 development board using the Zynq SoC architecture.

## Overview

Four sine waves of varying frequencies and amplitudes are stored in block RAM (BRAM) on the programmable logic (PL) and selectively output based on user switch input. Captured samples are transferred to the ARM processing system (PS) via two AXI GPIO interfaces, streamed over UART to a PC, and plotted using a Python script.

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

## System Architecture

Switches -> switch_decoder -> sample_controller <- BRAM
                                    |
                          axi_gpio_samples / axi_gpio_status
                                    |
                            AXI Interconnect
                                    |
                            Zynq PS (ARM)
                                    |
                             UART / USB
                                    |
                           Python Script (PC)

## Project Structure

vivado/
├── sine_bram.v          # BRAM sine wave lookup tables
├── switch_decoder.v     # Switch input validator
├── sample_controller.v  # Sample sequencer
├── top.v                # Top-level module
├── tb_top.v             # Testbench
└── constraints.xdc      # Pin constraints

vitis/
└── main.c               # ARM PS application

python/
└── signal_plotter.py    # Data capture and visualization

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

## Notes

- Only one switch may be active at a time
- Activating multiple switches simultaneously will trigger an error message
- The system automatically detects and reports multi-switch errors via UART
