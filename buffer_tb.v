`timescale 1ps/1ps

module buffer_tb;

reg clk;
reg inp;
wire out;

buffer uut (
    .clk(clk),
    .inp(inp),
    .out(out)
);

initial begin
    clk = 0;
    inp = 0;
end

//Clock generation
always #5 clk = ~clk;       // Toggle clock every 5 time units

initial begin
    #10 inp = 1;
    #20 inp = 0;

    #40 inp = 1;
    #60 inp = 0;

    // End simulation
    #100;
    $finish;
end

initial begin
    $monitor("Time: %0d, input: %b, output: %b ", $time, inp, out);
    $dumpfile("buffer_tb.vcd");
    $dumpvars(0,buffer_tb);
end

endmodule
