module encryption (
    input  [7:0] plaintext,
    input  [7:0] key,
    output [7:0] cipher
);

assign cipher = plaintext ^ key;

endmodule
