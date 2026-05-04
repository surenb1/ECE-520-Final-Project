`timescale 1ns / 1ps

module sample_controller (
    input  wire        clk,
    input  wire        rst,
    input  wire        start,
    input  wire [1:0]  wave_sel,
    input  wire [15:0] bram_data,
    output reg  [7:0]  bram_addr,
    output reg  [1:0]  bram_sel,
    output reg  [15:0] sample_out,
    output reg         sample_valid,
    output reg         done
);

    localparam DIVIDER = 50000;
    localparam TOTAL   = 1280;

    reg [15:0] div_cnt;
    reg [10:0] sample_cnt;
    reg        active;

    always @(posedge clk) begin
        if (rst) begin
            div_cnt      <= 0;
            sample_cnt   <= 0;
            bram_addr    <= 0;
            bram_sel     <= 0;
            sample_out   <= 0;
            sample_valid <= 0;
            done         <= 0;
            active       <= 0;
        end else begin
            done <= 0;

            if (start && !active) begin
                active       <= 1;
                div_cnt      <= 0;
                sample_cnt   <= 0;
                bram_addr    <= 0;
                bram_sel     <= wave_sel;
                sample_valid <= 0;
            end

            if (active) begin
                if (div_cnt == DIVIDER - 1) begin
                    div_cnt      <= 0;
                    sample_out   <= bram_data;
                    sample_valid <= 1;

                    if (sample_cnt == TOTAL - 1) begin
                        active     <= 0;
                        done       <= 1;
                        bram_addr  <= 0;
                    end else begin
                        sample_cnt <= sample_cnt + 1;
                        bram_addr  <= bram_addr + 1;
                    end
                end else begin
                    sample_valid <= 0;
                    div_cnt      <= div_cnt + 1;
                end
            end
        end
    end

endmodule