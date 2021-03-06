-- -------------------------------------------------------------
-- 
-- File Name: G:\AI\IIT BHU\codegen\shiftmul1\hdlsrc\shiftmul1_FixPt.vhd
-- Created: 2016-05-31 10:50:01
-- 
-- Generated by MATLAB 8.1, MATLAB Coder 2.4 and HDL Coder 3.2
-- 
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Design base rate: 1
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        1
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- Y1                            ce_out        1
-- Y3                            ce_out        1
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: shiftmul1_FixPt
-- Source Path: shiftmul1_FixPt
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY shiftmul1_FixPt IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        data1                             :   IN    std_logic_vector(4 DOWNTO 0);  -- ufix5
        data2                             :   IN    std_logic_vector(5 DOWNTO 0);  -- ufix6
        ce_out                            :   OUT   std_logic;
        Y1                                :   OUT   std_logic_vector(7 DOWNTO 0);  -- ufix8
        Y3                                :   OUT   std_logic_vector(6 DOWNTO 0)  -- sfix7
        );
END shiftmul1_FixPt;


ARCHITECTURE rtl OF shiftmul1_FixPt IS

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL data1_unsigned                   : unsigned(4 DOWNTO 0);  -- ufix5
  SIGNAL data2_unsigned                   : unsigned(5 DOWNTO 0);  -- ufix6
  SIGNAL Y1_tmp                           : unsigned(7 DOWNTO 0);  -- ufix8
  SIGNAL Y3_tmp                           : signed(6 DOWNTO 0);  -- sfix7
  SIGNAL shiftmul1_FixPt_d1               : unsigned(4 DOWNTO 0);  -- ufix5
  SIGNAL shiftmul1_FixPt_d2               : unsigned(5 DOWNTO 0);  -- ufix6
  SIGNAL shiftmul1_FixPt_cast             : signed(7 DOWNTO 0);  -- int8
  SIGNAL shiftmul1_FixPt_cast_1           : signed(7 DOWNTO 0);  -- int8
  SIGNAL shiftmul1_FixPt_sub_cast         : unsigned(5 DOWNTO 0);  -- ufix6
  SIGNAL shiftmul1_FixPt_sub_cast_1       : signed(7 DOWNTO 0);  -- sfix8
  SIGNAL shiftmul1_FixPt_add_temp         : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL shiftmul1_FixPt_sub_cast_2       : signed(5 DOWNTO 0);  -- sfix6
  SIGNAL shiftmul1_FixPt_sub_temp         : signed(8 DOWNTO 0);  -- sfix9

BEGIN
  data1_unsigned <= unsigned(data1);

  data2_unsigned <= unsigned(data2);

  enb <= clk_enable;

  --spssa
  --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  --                                                                          %
  --        Generated by MATLAB 8.1, MATLAB Coder 2.4 and HDL Coder 3.2      %
  --                                                                          %
  --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  shiftmul1_FixPt_cast <= signed(resize(data1_unsigned, 8));
  shiftmul1_FixPt_d1 <= unsigned(shiftmul1_FixPt_cast(4 DOWNTO 0));
  shiftmul1_FixPt_cast_1 <= signed(resize(data2_unsigned, 8));
  shiftmul1_FixPt_d2 <= unsigned(shiftmul1_FixPt_cast_1(5 DOWNTO 0));
  Y1_tmp <= resize(resize(resize(resize(data1_unsigned, 7) + resize(shiftmul1_FixPt_d1 sll 4, 7), 8) + resize(shiftmul1_FixPt_d1 sll 1, 8), 9) + resize(resize(shiftmul1_FixPt_d2 sll 5, 7) + resize(shiftmul1_FixPt_d2 sll 1, 7), 9), 8);
  shiftmul1_FixPt_sub_cast <= resize(shiftmul1_FixPt_d1 sll 1, 6);
  shiftmul1_FixPt_sub_cast_1 <= signed(resize(shiftmul1_FixPt_sub_cast, 8));
  shiftmul1_FixPt_add_temp <= resize(resize(data1_unsigned, 8) + resize(shiftmul1_FixPt_d2 sll 4, 8), 9) + resize(shiftmul1_FixPt_d2 sll 1, 9);
  shiftmul1_FixPt_sub_cast_2 <= signed(shiftmul1_FixPt_add_temp(5 DOWNTO 0));
  shiftmul1_FixPt_sub_temp <= resize(shiftmul1_FixPt_sub_cast_1, 9) - resize(shiftmul1_FixPt_sub_cast_2, 9);
  Y3_tmp <= shiftmul1_FixPt_sub_temp(6 DOWNTO 0);

  Y1 <= std_logic_vector(Y1_tmp);

  Y3 <= std_logic_vector(Y3_tmp);

  ce_out <= clk_enable;

END rtl;

