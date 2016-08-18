// -------------------------------------------------------------
// 
// File Name: G:\AI\IIT BHU\codegen\shiftmul8\hdlsrc\shiftmul8_FixPt.v
// Created: 2016-06-01 12:00:44
// 
// Generated by MATLAB 8.1, MATLAB Coder 2.4 and HDL Coder 3.2
// 
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Design base rate: 1
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        1
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// y1                            ce_out        1
// y3                            ce_out        1
// y5                            ce_out        1
// y7                            ce_out        1
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: shiftmul8_FixPt
// Source Path: shiftmul8_FixPt
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module shiftmul8_FixPt
          (
           clk,
           reset,
           clk_enable,
           b1,
           b2,
           b3,
           b4,
           ce_out,
           y1,
           y3,
           y5,
           y7
          );


  input   clk;
  input   reset;
  input   clk_enable;
  input   [1:0] b1;  // ufix2
  input   [1:0] b2;  // ufix2
  input   [2:0] b3;  // ufix3
  input   [2:0] b4;  // ufix3
  output  ce_out;
  output  [7:0] y1;  // ufix8
  output  signed [7:0] y3;  // sfix8
  output  [6:0] y5;  // ufix7
  output  signed [7:0] y7;  // sfix8


  wire enb;
  wire [1:0] shiftmul8_FixPt_d1;  // ufix2
  wire [1:0] shiftmul8_FixPt_d2;  // ufix2
  wire [2:0] shiftmul8_FixPt_d3;  // ufix3
  wire [2:0] shiftmul8_FixPt_d4;  // ufix3
  wire [5:0] shiftmul8_FixPt_add_temp;  // ufix6
  wire [1:0] shiftmul8_FixPt_d2_1;  // ufix2
  wire [8:0] shiftmul8_FixPt_add_temp_1;  // ufix9
  wire [2:0] shiftmul8_FixPt_d3_1;  // ufix3
  wire [11:0] shiftmul8_FixPt_add_temp_2;  // ufix12
  wire [2:0] shiftmul8_FixPt_d4_1;  // ufix3
  wire [1:0] shiftmul8_FixPt_d1_1;  // ufix2
  wire [4:0] shiftmul8_FixPt_add_temp_3;  // ufix5
  wire [5:0] shiftmul8_FixPt_sub_temp;  // ufix6
  wire [2:0] shiftmul8_FixPt_d4_2;  // ufix3
  wire [11:0] shiftmul8_FixPt_sub_temp_1;  // ufix12
  wire [1:0] shiftmul8_FixPt_d2_2;  // ufix2
  wire [13:0] shiftmul8_FixPt_sub_temp_2;  // ufix14
  wire signed [2:0] shiftmul8_FixPt_add_cast;  // sfix3
  wire signed [6:0] shiftmul8_FixPt_add_temp_4;  // sfix7
  wire [2:0] shiftmul8_FixPt_d4_3;  // ufix3
  wire signed [9:0] shiftmul8_FixPt_add_temp_5;  // sfix10
  wire [1:0] shiftmul8_FixPt_d1_2;  // ufix2
  wire signed [12:0] shiftmul8_FixPt_add_temp_6;  // sfix13
  wire [2:0] shiftmul8_FixPt_d3_2;  // ufix3
  wire signed [14:0] shiftmul8_FixPt_add_temp_7;  // sfix15
  wire signed [3:0] shiftmul8_FixPt_add_cast_1;  // sfix4
  wire signed [7:0] shiftmul8_FixPt_add_temp_8;  // sfix8
  wire [2:0] shiftmul8_FixPt_d3_3;  // ufix3
  wire signed [10:0] shiftmul8_FixPt_add_temp_9;  // sfix11
  wire [1:0] shiftmul8_FixPt_d2_3;  // ufix2
  wire signed [13:0] shiftmul8_FixPt_sub_temp_3;  // sfix14
  wire [1:0] shiftmul8_FixPt_d1_3;  // ufix2


  assign enb = clk_enable;

  //spssa
  //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  //                                                                          %
  //        Generated by MATLAB 8.1, MATLAB Coder 2.4 and HDL Coder 3.2      %
  //                                                                          %
  //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  assign shiftmul8_FixPt_d1 = b1;
  assign shiftmul8_FixPt_d2 = b2;
  assign shiftmul8_FixPt_d3 = b3;
  assign shiftmul8_FixPt_d4 = b4;
  assign shiftmul8_FixPt_add_temp = b1 + b2;
  assign shiftmul8_FixPt_d2_1 = shiftmul8_FixPt_d2 <<< 1;
  assign shiftmul8_FixPt_add_temp_1 = shiftmul8_FixPt_add_temp + shiftmul8_FixPt_d2_1;
  assign shiftmul8_FixPt_d3_1 = shiftmul8_FixPt_d3 <<< 1;
  assign shiftmul8_FixPt_add_temp_2 = shiftmul8_FixPt_add_temp_1 + shiftmul8_FixPt_d3_1;
  assign shiftmul8_FixPt_d4_1 = shiftmul8_FixPt_d4 <<< 1;
  assign y1 = shiftmul8_FixPt_add_temp_2 + shiftmul8_FixPt_d4_1;
  assign shiftmul8_FixPt_d1_1 = shiftmul8_FixPt_d1 <<< 1;
  assign shiftmul8_FixPt_add_temp_3 = b2 + shiftmul8_FixPt_d1_1;
  assign shiftmul8_FixPt_sub_temp = shiftmul8_FixPt_add_temp_3 - b3;
  assign shiftmul8_FixPt_d4_2 = shiftmul8_FixPt_d4 <<< 1;
  assign shiftmul8_FixPt_sub_temp_1 = shiftmul8_FixPt_sub_temp - shiftmul8_FixPt_d4_2;
  assign shiftmul8_FixPt_d2_2 = shiftmul8_FixPt_d2 <<< 1;
  assign shiftmul8_FixPt_sub_temp_2 = shiftmul8_FixPt_sub_temp_1 - shiftmul8_FixPt_d2_2;
  assign y3 = $signed(shiftmul8_FixPt_sub_temp_2[7:0]);
  assign shiftmul8_FixPt_add_cast =  - (b2);
  assign shiftmul8_FixPt_add_temp_4 = shiftmul8_FixPt_add_cast + $signed({1'b0, b4});
  assign shiftmul8_FixPt_d4_3 = shiftmul8_FixPt_d4 <<< 1;
  assign shiftmul8_FixPt_add_temp_5 = shiftmul8_FixPt_add_temp_4 + $signed({1'b0, shiftmul8_FixPt_d4_3});
  assign shiftmul8_FixPt_d1_2 = shiftmul8_FixPt_d1 <<< 1;
  assign shiftmul8_FixPt_add_temp_6 = shiftmul8_FixPt_add_temp_5 + $signed({1'b0, shiftmul8_FixPt_d1_2});
  assign shiftmul8_FixPt_d3_2 = shiftmul8_FixPt_d3 <<< 1;
  assign shiftmul8_FixPt_add_temp_7 = shiftmul8_FixPt_add_temp_6 + $signed({1'b0, shiftmul8_FixPt_d3_2});
  assign y5 = shiftmul8_FixPt_add_temp_7[6:0];
  assign shiftmul8_FixPt_add_cast_1 =  - (b4);
  assign shiftmul8_FixPt_add_temp_8 = shiftmul8_FixPt_add_cast_1 + $signed({1'b0, b3});
  assign shiftmul8_FixPt_d3_3 = shiftmul8_FixPt_d3 <<< 1;
  assign shiftmul8_FixPt_add_temp_9 = shiftmul8_FixPt_add_temp_8 + $signed({1'b0, shiftmul8_FixPt_d3_3});
  assign shiftmul8_FixPt_d2_3 = shiftmul8_FixPt_d2 <<< 1;
  assign shiftmul8_FixPt_sub_temp_3 = shiftmul8_FixPt_add_temp_9 - $signed({1'b0, shiftmul8_FixPt_d2_3});
  assign shiftmul8_FixPt_d1_3 = shiftmul8_FixPt_d1 <<< 1;
  assign y7 = shiftmul8_FixPt_sub_temp_3 + $signed({1'b0, shiftmul8_FixPt_d1_3});



  assign ce_out = clk_enable;

endmodule  // shiftmul8_FixPt

