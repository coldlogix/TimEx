// ---------------------------------------------------------------------------
// Automatically extracted verilog file, created with TimEx v2.00.12
// Timing description and structural design for IARPA-BAA-14-03 via
// U.S. Air Force Research Laboratory contract FA8750-15-C-0203 and
// IARPA-BAA-16-03 via U.S. Army Research Office grant W911NF-17-1-0120.
// For questions about TimEx, contact CJ Fourie, coenrad@sun.ac.za
// (c) 2016-2018 Stellenbosch University
// ---------------------------------------------------------------------------
`timescale 1ps/100fs
module mitll_xor (a, b, clk, out);

input
  a, b, clk;

output
  out;

reg
  out;

parameter
  bias = 1.0;

real
  delay_state1_clk_out = 5.7,
  delay_state2_clk_out = 5.7,
  ct_state0_a_clk = 0.2,
  ct_state0_b_clk = 0.2,
  ct_state1_a_b = 2.7,
  ct_state1_a_clk = 2.6,
  ct_state1_b_b = 3.3,
  ct_state1_clk_b = 4.4,
  ct_state2_a_a = 3.3,
  ct_state2_b_a = 2.7,
  ct_state2_b_clk = 2.6,
  ct_state2_clk_a = 4.4;

reg
   errorsignal_a,
   errorsignal_b,
   errorsignal_clk;

integer
   outfile,
   cell_state; // internal state of the cell

initial
   begin
      errorsignal_a = 0;
      errorsignal_b = 0;
      errorsignal_clk = 0;
      cell_state = 0; // Startup state
      out = 0; // All outputs start at 0
    if (bias < 0.6)
      begin
        out <= 1'bX;
      end
    if ((bias >= 0.6) && (bias < 0.7))
      begin
        delay_state1_clk_out = 11.0 + (-2.2/0.1)*(bias-0.6);
        delay_state2_clk_out = 11.0 + (-2.2/0.1)*(bias-0.6);
        ct_state0_a_clk = 1.6 + (-0.5/0.1)*(bias-0.6);
        ct_state0_b_clk = 1.6 + (-0.5/0.1)*(bias-0.6);
        ct_state1_a_b = 0.6 + (1.0/0.1)*(bias-0.6);
        ct_state1_a_clk = 3.5 + (-1.8/0.1)*(bias-0.6);
        ct_state1_b_b = 3.3 + (0.0/0.1)*(bias-0.6);
        ct_state1_clk_b = 7.3 + (-1.4/0.1)*(bias-0.6);
        ct_state2_a_a = 3.3 + (0.0/0.1)*(bias-0.6);
        ct_state2_b_a = 0.6 + (1.0/0.1)*(bias-0.6);
        ct_state2_b_clk = 3.5 + (-1.8/0.1)*(bias-0.6);
        ct_state2_clk_a = 7.3 + (-1.4/0.1)*(bias-0.6);
      end
    if ((bias >= 0.7) && (bias < 0.8))
      begin
        delay_state1_clk_out = 8.7 + (-1.5/0.1)*(bias-0.7);
        delay_state2_clk_out = 8.7 + (-1.5/0.1)*(bias-0.7);
        ct_state0_a_clk = 1.1 + (-0.4/0.1)*(bias-0.7);
        ct_state0_b_clk = 1.1 + (-0.4/0.1)*(bias-0.7);
        ct_state1_a_b = 1.6 + (0.5/0.1)*(bias-0.7);
        ct_state1_a_clk = 1.7 + (0.4/0.1)*(bias-0.7);
        ct_state1_b_b = 3.3 + (0.0/0.1)*(bias-0.7);
        ct_state1_clk_b = 5.9 + (-0.7/0.1)*(bias-0.7);
        ct_state2_a_a = 3.3 + (0.0/0.1)*(bias-0.7);
        ct_state2_b_a = 1.6 + (0.5/0.1)*(bias-0.7);
        ct_state2_b_clk = 1.7 + (0.4/0.1)*(bias-0.7);
        ct_state2_clk_a = 5.9 + (-0.6/0.1)*(bias-0.7);
      end
    if ((bias >= 0.8) && (bias < 0.9))
      begin
        delay_state1_clk_out = 7.2 + (-0.7/0.1)*(bias-0.8);
        delay_state2_clk_out = 7.2 + (-0.7/0.1)*(bias-0.8);
        ct_state0_a_clk = 0.7 + (-0.3/0.1)*(bias-0.8);
        ct_state0_b_clk = 0.7 + (-0.3/0.1)*(bias-0.8);
        ct_state1_a_b = 2.1 + (0.2/0.1)*(bias-0.8);
        ct_state1_a_clk = 2.1 + (0.2/0.1)*(bias-0.8);
        ct_state1_b_b = 3.3 + (0.0/0.1)*(bias-0.8);
        ct_state1_clk_b = 5.2 + (-0.5/0.1)*(bias-0.8);
        ct_state2_a_a = 3.3 + (0.0/0.1)*(bias-0.8);
        ct_state2_b_a = 2.1 + (0.2/0.1)*(bias-0.8);
        ct_state2_b_clk = 2.1 + (0.2/0.1)*(bias-0.8);
        ct_state2_clk_a = 5.3 + (-0.5/0.1)*(bias-0.8);
      end
    if ((bias >= 0.9) && (bias < 1))
      begin
        delay_state1_clk_out = 6.5 + (-0.7/0.1)*(bias-0.9);
        delay_state2_clk_out = 6.5 + (-0.7/0.1)*(bias-0.9);
        ct_state0_a_clk = 0.4 + (-0.2/0.1)*(bias-0.9);
        ct_state0_b_clk = 0.4 + (-0.2/0.1)*(bias-0.9);
        ct_state1_a_b = 2.3 + (0.3/0.1)*(bias-0.9);
        ct_state1_a_clk = 2.3 + (0.2/0.1)*(bias-0.9);
        ct_state1_b_b = 3.3 + (0.0/0.1)*(bias-0.9);
        ct_state1_clk_b = 4.8 + (-0.4/0.1)*(bias-0.9);
        ct_state2_a_a = 3.3 + (0.0/0.1)*(bias-0.9);
        ct_state2_b_a = 2.3 + (0.3/0.1)*(bias-0.9);
        ct_state2_b_clk = 2.3 + (0.2/0.1)*(bias-0.9);
        ct_state2_clk_a = 4.8 + (-0.4/0.1)*(bias-0.9);
      end
    if ((bias >= 1) && (bias < 1.1))
      begin
        delay_state1_clk_out = 5.7 + (-0.5/0.1)*(bias-1.0);
        delay_state2_clk_out = 5.7 + (-0.5/0.1)*(bias-1.0);
        ct_state0_a_clk = 0.2 + (-0.2/0.1)*(bias-1.0);
        ct_state0_b_clk = 0.2 + (-0.2/0.1)*(bias-1.0);
        ct_state1_a_b = 2.7 + (0.2/0.1)*(bias-1.0);
        ct_state1_a_clk = 2.6 + (0.2/0.1)*(bias-1.0);
        ct_state1_b_b = 3.3 + (0.0/0.1)*(bias-1.0);
        ct_state1_clk_b = 4.4 + (-0.2/0.1)*(bias-1.0);
        ct_state2_a_a = 3.3 + (0.0/0.1)*(bias-1.0);
        ct_state2_b_a = 2.7 + (0.2/0.1)*(bias-1.0);
        ct_state2_b_clk = 2.6 + (0.2/0.1)*(bias-1.0);
        ct_state2_clk_a = 4.4 + (-0.2/0.1)*(bias-1.0);
      end
    if ((bias >= 1.1) && (bias < 1.2))
      begin
        delay_state1_clk_out = 5.2 + (-0.7/0.1)*(bias-1.1);
        delay_state2_clk_out = 5.2 + (-0.7/0.1)*(bias-1.1);
        ct_state1_a_b = 2.9 + (0.2/0.1)*(bias-1.1);
        ct_state1_a_clk = 2.8 + (0.2/0.1)*(bias-1.1);
        ct_state1_b_b = 3.3 + (0.0/0.1)*(bias-1.1);
        ct_state1_clk_b = 4.1 + (-0.1/0.1)*(bias-1.1);
        ct_state2_a_a = 3.3 + (0.0/0.1)*(bias-1.1);
        ct_state2_b_a = 2.9 + (0.2/0.1)*(bias-1.1);
        ct_state2_b_clk = 2.7 + (0.2/0.1)*(bias-1.1);
        ct_state2_clk_a = 4.1 + (-0.1/0.1)*(bias-1.1);
      end
    if ((bias >= 1.2) && (bias <= 1.4))
      begin
        out <= 1'bX;
      end
    if (bias > 1.4)
      begin
        out <= 1'bX;
      end
   end

always @(posedge a or negedge a) // execute at positive and negative edges of input
   begin
      if ($time>4) // arbitrary steady-state time)
         begin
            if (errorsignal_a == 1'b1)  // A critical timing is active for this input
               begin
                  outfile = $fopen("errors.txt", "a");
                  $fdisplay(outfile, "Violation of critical timing in module %m; %0d ps.\n", $stime);
                  $fclose(outfile);
                  out <= 1'bX;  // Set all outputs to unknown
               end
            if (errorsignal_a == 0)
               begin
                  case (cell_state)
                     0: begin
                           cell_state = 1;  // Blocking statement -- immediately
                           errorsignal_clk = 1;  // Critical timing on this input; assign immediately
                           errorsignal_clk <= #(ct_state0_a_clk) 0;  // Clear error signal after critical timing expires
                        end
                     1: begin
                           errorsignal_b = 1;  // Critical timing on this input; assign immediately
                           errorsignal_b <= #(ct_state1_a_b) 0;  // Clear error signal after critical timing expires
                           errorsignal_clk = 1;  // Critical timing on this input; assign immediately
                           errorsignal_clk <= #(ct_state1_a_clk) 0;  // Clear error signal after critical timing expires
                        end
                     2: begin
                           cell_state = 0;  // Blocking statement -- immediately
                           errorsignal_a = 1;  // Critical timing on this input; assign immediately
                           errorsignal_a <= #(ct_state2_a_a) 0;  // Clear error signal after critical timing expires
                        end
                  endcase
               end
         end
   end

always @(posedge b or negedge b) // execute at positive and negative edges of input
   begin
      if ($time>4) // arbitrary steady-state time)
         begin
            if (errorsignal_b == 1'b1)  // A critical timing is active for this input
               begin
                  outfile = $fopen("errors.txt", "a");
                  $fdisplay(outfile, "Violation of critical timing in module %m; %0d ps.\n", $stime);
                  $fclose(outfile);
                  out <= 1'bX;  // Set all outputs to unknown
               end
            if (errorsignal_b == 0)
               begin
                  case (cell_state)
                     0: begin
                           cell_state = 2;  // Blocking statement -- immediately
                           errorsignal_clk = 1;  // Critical timing on this input; assign immediately
                           errorsignal_clk <= #(ct_state0_b_clk) 0;  // Clear error signal after critical timing expires
                        end
                     1: begin
                           cell_state = 0;  // Blocking statement -- immediately
                           errorsignal_b = 1;  // Critical timing on this input; assign immediately
                           errorsignal_b <= #(ct_state1_b_b) 0;  // Clear error signal after critical timing expires
                        end
                     2: begin
                           errorsignal_a = 1;  // Critical timing on this input; assign immediately
                           errorsignal_a <= #(ct_state2_b_a) 0;  // Clear error signal after critical timing expires
                           errorsignal_clk = 1;  // Critical timing on this input; assign immediately
                           errorsignal_clk <= #(ct_state2_b_clk) 0;  // Clear error signal after critical timing expires
                        end
                  endcase
               end
         end
   end

always @(posedge clk or negedge clk) // execute at positive and negative edges of input
   begin
      if ($time>4) // arbitrary steady-state time)
         begin
            if (errorsignal_clk == 1'b1)  // A critical timing is active for this input
               begin
                  outfile = $fopen("errors.txt", "a");
                  $fdisplay(outfile, "Violation of critical timing in module %m; %0d ps.\n", $stime);
                  $fclose(outfile);
                  out <= 1'bX;  // Set all outputs to unknown
               end
            if (errorsignal_clk == 0)
               begin
                  case (cell_state)
                     0: begin
                        end
                     1: begin
                           out <= #(delay_state1_clk_out) !out;
                           cell_state = 0;  // Blocking statement -- immediately
                           errorsignal_b = 1;  // Critical timing on this input; assign immediately
                           errorsignal_b <= #(ct_state1_clk_b) 0;  // Clear error signal after critical timing expires
                        end
                     2: begin
                           out <= #(delay_state2_clk_out) !out;
                           cell_state = 0;  // Blocking statement -- immediately
                           errorsignal_a = 1;  // Critical timing on this input; assign immediately
                           errorsignal_a <= #(ct_state2_clk_a) 0;  // Clear error signal after critical timing expires
                        end
                  endcase
               end
         end
   end

endmodule
