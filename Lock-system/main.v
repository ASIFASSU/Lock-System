module sr_flipflop (
  input s,  // Set input
  input r,  // Reset input
  input clk,  // Clock input
  output reg q  // Output
);

  always @(posedge clk) begin
    if (s && ~r)  // Active-High SR flip-flop
      q <= 1'b1;
    else if (~s && r)  // Active-High SR flip-flop
      q <= 1'b0;
  end

endmodule
