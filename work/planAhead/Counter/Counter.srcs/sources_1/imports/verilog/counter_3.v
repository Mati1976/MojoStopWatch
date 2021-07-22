/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     SIZE = 14
     DIV = 22
     TOP = 9999
     UP = 1
*/
module counter_3 (
    input clk,
    input rst,
    output reg [13:0] value
  );
  
  localparam SIZE = 4'he;
  localparam DIV = 5'h16;
  localparam TOP = 14'h270f;
  localparam UP = 1'h1;
  
  
  reg [35:0] M_ctr_d, M_ctr_q = 1'h0;
  
  localparam MAX_VALUE = 36'h9c3ffffff;
  
  always @* begin
    M_ctr_d = M_ctr_q;
    
    value = M_ctr_q[22+13-:14];
    if (1'h1) begin
      M_ctr_d = M_ctr_q + 1'h1;
      if (1'h1 && M_ctr_q == 36'h9c3ffffff) begin
        M_ctr_d = 1'h0;
      end
    end else begin
      M_ctr_d = M_ctr_q - 1'h1;
      if (1'h1 && M_ctr_q == 1'h0) begin
        M_ctr_d = 36'h9c3ffffff;
      end
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_ctr_q <= 1'h0;
    end else begin
      M_ctr_q <= M_ctr_d;
    end
  end
  
endmodule
