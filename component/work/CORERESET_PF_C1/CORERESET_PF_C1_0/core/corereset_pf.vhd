--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: corereset_pf.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::PolarFire> <Die::MPF300T_ES> <Package::FCG1152>
-- Author: <Name>
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity CORERESET_PF_C1_CORERESET_PF_C1_0_corereset_pf is
port (
	CLK             : IN    std_logic;
    EXT_RST_N       : IN    std_logic;
    PLL_LOCK        : IN    std_logic;
    SS_BUSY         : IN    std_logic;
    INIT_DONE       : IN    std_logic;
    FF_US_RESTORE   : IN    std_logic;
    FABRIC_RESET_N  : OUT   std_logic
);
end CORERESET_PF_C1_CORERESET_PF_C1_0_corereset_pf;

architecture architecture_corereset_pf of CORERESET_PF_C1_CORERESET_PF_C1_0_corereset_pf is
	signal A : std_logic;
    signal B : std_logic;
    signal C : std_logic;
    signal INTERNAL_RST : std_logic;
    signal dff_0 : std_logic;
    signal dff_1 : std_logic;
	
begin
    A<= NOT(NOT(EXT_RST_N)OR NOT(PLL_LOCK));
    B<= NOT(NOT(A) AND NOT(SS_BUSY));
    C<= NOT(NOT(B) OR NOT(INIT_DONE));
    INTERNAL_RST<= NOT(NOT(C) AND NOT(FF_US_RESTORE));

    dff0_proc: process(CLK, INTERNAL_RST)
    begin
       if (INTERNAL_RST = '0') then 
          dff_0 <= '0';
       elsif (CLK'event and CLK = '1') then 
          dff_0 <= '1';      
       end if;
    end process dff0_proc;

    dff1_proc: process(CLK,INTERNAL_RST)
    begin
       if (INTERNAL_RST = '0') then 
          dff_1 <= '0';
       elsif (CLK'event and CLK = '1') then 
          dff_1 <= dff_0;
       end if;
    end process dff1_proc;

    FABRIC_RESET_N <= NOT(NOT(dff_1) and not(FF_US_RESTORE));

   
end architecture_corereset_pf;
