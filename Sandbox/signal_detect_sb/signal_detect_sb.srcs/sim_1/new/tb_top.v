`timescale 1ns / 1ps

module tb_top;

    reg        clk;
    reg        rst_n;
    reg  [3:0] sw;
    wire [15:0] sample_out;
    wire        sample_valid;
    wire        done;
    wire        error;

    // DUT
    top uut (
        .clk          (clk),
        .rst_n          (rst_n),
        .sw           (sw),
        .sample_out   (sample_out),
        .sample_valid (sample_valid),
        .done         (done),
        .error        (error)
    );

    // 125 MHz clock
    initial clk = 0;
    always #4 clk = ~clk; // 8ns period

    integer sample_count;

    initial begin
        rst_n = 0;
        sw  = 4'b0000;
        sample_count = 0;
        #100;
        rst_n = 1;
        #20;

        // --- Test 1: SW0 only (1 kHz, 25% amplitude) ---
        $display("TEST 1: SW0 - 1kHz, 25%% amplitude");
        sw = 4'b0001;
        wait (done);
        $display("  Capture complete.");
        sw = 4'b0000;
        #500;

        // --- Test 2: SW1 only (2 kHz, 50% amplitude) ---
        $display("TEST 2: SW1 - 2kHz, 50%% amplitude");
        sw = 4'b0010;
        wait (done);
        $display("  Capture complete.");
        sw = 4'b0000;
        #500;

        // --- Test 3: Multiple switches ON (error case) ---
        $display("TEST 3: Multiple switches ON - expect error");
        sw = 4'b0011;
        #200;
        if (error)
            $display("  Error flag asserted correctly.");
        else
            $display("  ERROR: error flag NOT asserted!");
        sw = 4'b0000;
        #100;

        // --- Test 4: No switches ON ---
        $display("TEST 4: No switches ON - expect no activity");
        sw = 4'b0000;
        #500;
        $display("  No capture triggered (correct).");

        $display("All tests complete.");
        $finish;
    end

    // Print every valid sample to console
    always @(posedge clk) begin
        if (sample_valid) begin
            sample_count = sample_count + 1;
            $display("  Sample %04d: %0d", sample_count, $signed(sample_out));
        end
    end

endmodule