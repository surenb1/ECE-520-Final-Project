`timescale 1ns / 1ps

module sine_bram (
    input  wire        clk,
    input  wire [1:0]  wave_sel,
    input  wire [7:0]  addr,
    output reg  [15:0] data_out
);

    reg signed [15:0] bram0 [0:255];  // 1 kHz,  25% amplitude (~8192)
    reg signed [15:0] bram1 [0:255];  // 2 kHz,  50% amplitude (~16384)
    reg signed [15:0] bram2 [0:255];  // 5 kHz,  75% amplitude (~24576)
    reg signed [15:0] bram3 [0:255];  // 10 kHz, 100% amplitude (~32767)

    integer i;
    real pi = 3.14159265358979;

    initial begin
        for (i = 0; i < 256; i = i + 1) begin
            bram0[i] = $rtoi($sin(2.0 * pi * i / 256.0) * 8192.0);
            bram1[i] = $rtoi($sin(2.0 * pi * i / 256.0) * 16384.0);
            bram2[i] = $rtoi($sin(2.0 * pi * i / 256.0) * 24576.0);
            bram3[i] = $rtoi($sin(2.0 * pi * i / 256.0) * 32767.0);
        end
    end

    always @(posedge clk) begin
        case (wave_sel)
            2'd0: data_out <= bram0[addr];
            2'd1: data_out <= bram1[addr];
            2'd2: data_out <= bram2[addr];
            2'd3: data_out <= bram3[addr];
        endcase
    end

endmodule