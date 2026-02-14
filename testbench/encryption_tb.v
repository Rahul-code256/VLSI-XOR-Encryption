module encryption_tb;

reg clk;
reg load_key;
reg [7:0] plaintext;
reg [7:0] new_key;

wire [7:0] cipher;
wire [7:0] decrypted_text;

top_module uut(
    clk,
    load_key,
    plaintext,
    new_key,
    cipher,
    decrypted_text
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    load_key = 0;
    
    #10;
    new_key = 8'b10101010;
    load_key = 1;

    #10;
    load_key = 0;
    plaintext = 8'b11001100;

    #50;
    $stop;
end

endmodule
