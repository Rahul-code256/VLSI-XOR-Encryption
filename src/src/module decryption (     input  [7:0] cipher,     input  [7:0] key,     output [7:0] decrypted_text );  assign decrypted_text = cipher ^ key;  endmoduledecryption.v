module decryption (
    input  [7:0] cipher,
    input  [7:0] key,
    output [7:0] decrypted_text
);

assign decrypted_text = cipher ^ key;

endmodule
