`timescale 1ns / 1ps
`resetall
`default_nettype none

module leds_keys_top (
    input  wire[1:0] sys_keys,
    output wire[1:0] sys_leds
);
// Core logic here
assign sys_leds[0] = sys_keys[0];
assign sys_leds[1] = sys_keys[0] ^ sys_keys[1];
// End of logic
endmodule

`resetall