module top_module (
    input clk,
    input load_key,
    input [7:0] plaintext,
    input [7:0] new_key,
    output [7:0] cipher,
    output [7:0] decrypted_text
);

wire [7:0] key;

key_manager km(clk, load_key, new_key, key);
encryption enc(plaintext, key, cipher);
decryption dec(cipher, key, decrypted_text);

endmodule
