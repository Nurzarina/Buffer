module buffer (
    input wire inp,
    input wire clk,
    output reg out
);

    always @(posedge clk) begin
        out <= inp;         // Transfer input to output on positive clock edge.
    end

endmodule
