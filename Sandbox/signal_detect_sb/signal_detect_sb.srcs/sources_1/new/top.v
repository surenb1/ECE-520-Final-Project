`timescale 1ns / 1ps

module top (
    input  wire        clk,
    input  wire        rst_n,
    input  wire [3:0]  sw,
    output wire [15:0] sample_out,
    output wire [2:0]  status_out
);

    wire        sample_valid;
    wire        done;
    wire        error;
    wire        valid;
    wire [1:0]  wave_sel;

    assign status_out = {error, done, sample_valid};

    wire [7:0]  bram_addr;
    wire [1:0]  bram_sel;
    wire [15:0] bram_data;

    reg [3:0]  start_cnt;
    reg        valid_prev;
    wire       valid_rose = valid & ~valid_prev;
    wire       start = (start_cnt != 0);

    always @(posedge clk) begin
        if (!rst_n) begin
            valid_prev <= 0;
            start_cnt  <= 0;
        end else begin
            valid_prev <= valid;
            if (valid_rose)
                start_cnt <= 4'hF;
            else if (start_cnt != 0)
                start_cnt <= start_cnt - 1;
        end
    end

    switch_decoder u_sw_dec (
        .sw       (sw),
        .wave_sel (wave_sel),
        .valid    (valid),
        .error    (error)
    );

    sine_bram u_bram (
        .clk      (clk),
        .wave_sel (bram_sel),
        .addr     (bram_addr),
        .data_out (bram_data)
    );

    sample_controller u_ctrl (
        .clk          (clk),
        .rst          (!rst_n),
        .start        (start),
        .wave_sel     (wave_sel),
        .bram_data    (bram_data),
        .bram_addr    (bram_addr),
        .bram_sel     (bram_sel),
        .sample_out   (sample_out),
        .sample_valid (sample_valid),
        .done         (done)
    );

endmodule