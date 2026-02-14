module key_manager (
    input clk,
    input load_key,
    input [7:0] new_key,
    output reg [7:0] key_out
);

always @(posedge clk) begin
    if (load_key)
        key_out <= new_key;
end

endmodule
