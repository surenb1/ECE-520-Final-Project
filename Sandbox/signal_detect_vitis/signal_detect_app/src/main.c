#include "xgpio.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_types.h"

#define GPIO_SAMPLES_ID  XPAR_AXI_GPIO_SAMPLES_DEVICE_ID
#define GPIO_STATUS_ID   XPAR_AXI_GPIO_STATUS_DEVICE_ID

#define BIT_SAMPLE_VALID  0
#define BIT_DONE          1
#define BIT_ERROR         2

#define TOTAL_SAMPLES     1280

int main() {
    XGpio gpio_samples;
    XGpio gpio_status;
    int status;
    u32 status_val;
    u32 sample;
    s16 signed_sample;
    int count = 0;

    xil_printf("\r\n=== Signal Detection System ===\r\n");

    status = XGpio_Initialize(&gpio_samples, GPIO_SAMPLES_ID);
    if (status != XST_SUCCESS) {
        xil_printf("ERROR: Failed to initialize GPIO samples\r\n");
        return -1;
    }

    status = XGpio_Initialize(&gpio_status, GPIO_STATUS_ID);
    if (status != XST_SUCCESS) {
        xil_printf("ERROR: Failed to initialize GPIO status\r\n");
        return -1;
    }

    XGpio_SetDataDirection(&gpio_samples, 1, 0xFFFFFFFF);
    XGpio_SetDataDirection(&gpio_status, 1, 0xFFFFFFFF);

    xil_printf("Flip ONE switch to begin capture.\r\n");

    while (1) {
        status_val = XGpio_DiscreteRead(&gpio_status, 1);

        if ((status_val >> BIT_ERROR) & 1) {
            xil_printf("ERROR: Multiple switches ON. Use only ONE.\r\n");
            while ((XGpio_DiscreteRead(&gpio_status, 1) >> BIT_ERROR) & 1);
            xil_printf("Error cleared. Flip ONE switch.\r\n");
            continue;
        }

        if ((status_val >> BIT_SAMPLE_VALID) & 1) {
            break;
        }
    }

    xil_printf("Capture started! Receiving samples...\r\n");

    while (count < TOTAL_SAMPLES) {
        status_val = XGpio_DiscreteRead(&gpio_status, 1);

        if ((status_val >> BIT_SAMPLE_VALID) & 1) {
            sample = XGpio_DiscreteRead(&gpio_samples, 1) & 0xFFFF;
            signed_sample = (s16)sample;
            xil_printf("%d\r\n", (int)signed_sample);
            count++;
        }
    }

    xil_printf("=== Transfer Complete ===\r\n");
    return 0;
}
