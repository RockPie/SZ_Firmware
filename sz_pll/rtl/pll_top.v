`timescale 1ns / 1ps
`resetall
`default_nettype none

module pll_top(
    input  wire         sys_clk,
    output wire[1:0]    sys_leds,
    output wire         sys_test_port
    );

    wire clk_10M;
    assign sys_test_port = clk_10M;

    clk_wiz_0 clk_wiz_0_inst (
        .clk_in1(sys_clk),
        .clk_out1(clk_10M)
    );
    
    reg[23:0] led_counter = 0;
    assign sys_leds[0] = led_counter[20];
    assign sys_leds[1] = 1'b0;
    
    always@(posedge clk_10M) begin
        led_counter <= led_counter + 1'b1;
    end
endmodule

`resetall