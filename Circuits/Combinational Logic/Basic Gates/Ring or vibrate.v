// 先写出真值表，然后描述电路，最后可以达到避免if-else语句出现的情况
module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
    assign ringer = ring & ~vibrate_mode;
    assign motor = ring & vibrate_mode;
endmodule
