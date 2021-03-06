// ---------------------------------------------------------------------------
// Verilog testbench file, created with TimEx v2.00.12
// Timing description and structural design for IARPA-BAA-14-03 via
// U.S. Air Force Research Laboratory contract FA8750-15-C-0203 and
// IARPA-BAA-16-03 via U.S. Army Research Office grant W911NF-17-1-0120.
// For questions about TimEx, contact CJ Fourie, coenrad@sun.ac.za
// (c) 2016-2018 Stellenbosch University
// ---------------------------------------------------------------------------
`timescale 1ps/100fs
module tb_mitll_dff;
   reg set = 0;
   reg reset = 0;
parameter
  bias = 1.0;

   initial
      begin
         $dumpfile("tb_mitll_dff.vcd");
         $dumpvars;
         // Now in state 0
         #20 set = !set;
         // Now in state 1
         #10 set = !set;
         // Now in state 1
         #10 reset = !reset;
         // Now in state 0
         #10 reset = !reset;
         // Now in state 0
      end

   initial
      begin
         $display("\t\ttime,\tset,\treset,\tout");
         $monitor("%d,\t%b,\t%b,\t%b",$time,set,reset,out);
      end

   mitll_dff #(bias) DUT (set, reset, out);

   initial
      #60 $finish;
endmodule
