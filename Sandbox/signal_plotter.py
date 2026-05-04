import serial
import csv
import matplotlib.pyplot as plt

# ---- CONFIGURATION ----
COM_PORT = 'COM4'       # Change this to your Zybo's COM port
BAUD_RATE = 115200
TOTAL_SAMPLES = 1280
OUTPUT_FILE = 'C:/Users/suren/Documents/ECE_520/Final_Project/Sandbox/samples.csv'
# -----------------------

print("Opening COM port...")
ser = serial.Serial(COM_PORT, BAUD_RATE, timeout=10)
print(f"Connected to {COM_PORT}")

samples = []
print("Waiting for data... flip ONE switch on the board.")

# Read lines until we have all samples
while len(samples) < TOTAL_SAMPLES:
    line = ser.readline().decode('utf-8').strip()
    if line:
        print(f"Raw: {line}")  # ASCII debug print
        try:
            val = int(line)
            samples.append(val)
            print(f"Sample {len(samples):04d}: {val}")
        except ValueError:
            # Non-numeric lines (status messages) just print and skip
            print(f"[MSG] {line}")

ser.close()
print(f"\nCapture complete. {len(samples)} samples received.")

# Save to CSV
with open(OUTPUT_FILE, 'w', newline='') as f:
    writer = csv.writer(f)
    writer.writerow(['Sample Index', 'Value'])
    for i, val in enumerate(samples):
        writer.writerow([i, val])
print(f"Saved to {OUTPUT_FILE}")

# Plot
plt.figure(figsize=(12, 5))
plt.plot(samples, color='steelblue', linewidth=0.8)
plt.title('Captured Waveform from Zybo Z7-10')
plt.xlabel('Sample Index')
plt.ylabel('Amplitude (16-bit signed)')
plt.grid(True)
plt.tight_layout()
plt.show()