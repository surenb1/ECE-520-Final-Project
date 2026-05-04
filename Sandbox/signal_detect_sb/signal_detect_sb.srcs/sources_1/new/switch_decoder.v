`timescale 1ns / 1ps

module switch_decoder (
    input  wire [3:0] sw,
    output reg  [1:0] wave_sel,
    output reg        valid,
    output reg        error
);

    always @(*) begin
        case (sw)
            4'b0001: begin wave_sel = 2'd0; valid = 1; error = 0; end
            4'b0010: begin wave_sel = 2'd1; valid = 1; error = 0; end
            4'b0100: begin wave_sel = 2'd2; valid = 1; error = 0; end
            4'b1000: begin wave_sel = 2'd3; valid = 1; error = 0; end
            4'b0000: begin wave_sel = 2'd0; valid = 0; error = 0; end
            default: begin wave_sel = 2'd0; valid = 0; error = 1; end
        endcase
    end

endmodule