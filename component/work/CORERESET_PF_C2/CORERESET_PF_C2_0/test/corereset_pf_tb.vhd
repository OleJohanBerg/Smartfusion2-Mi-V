----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Thu Jul 20 15:46:22 2017
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: corereset_pf_tb.vhd
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


library ieee;
use ieee.std_logic_1164.all;

entity corereset_pf_tb is
end corereset_pf_tb;

architecture behavioral of corereset_pf_tb is

    constant SYSCLK_PERIOD : time := 100 ns; -- 10MHZ

    signal SYSCLK           : std_logic := '0';
    signal EXT_RST_N        : std_logic := '1';
    signal PLL_LOCK         : std_logic := '1';
    signal SS_BUSY          : std_logic := '1';
    signal INIT_DONE        : std_logic := '1';
    signal FF_US_RESTORE    : std_logic := '1';
    signal FABRIC_RESET_N   : std_logic := '1';

    component CORERESET_PF_C2_CORERESET_PF_C2_0_corereset_pf
        -- ports
        port( 
            CLK : in std_logic;
            EXT_RST_N : in std_logic;
            PLL_LOCK : in std_logic;
            SS_BUSY : in std_logic;
            INIT_DONE : in std_logic;
            FF_US_RESTORE : in std_logic;

            -- Outputs
            FABRIC_RESET_N : out std_logic

            -- Inouts

        );
    end component;

begin

    process
        variable vhdl_initial : BOOLEAN := TRUE;

    begin
        if ( vhdl_initial ) then
            
               -- EXT RESET
            EXT_RST_N     <= '1';
            PLL_LOCK      <= '1';
            SS_BUSY       <= '1';
            INIT_DONE     <= '1';
            FF_US_RESTORE <= '1';
            wait for 100ns;
            EXT_RST_N     <= '0';
            wait for 100ns;
            FF_US_RESTORE <= '0';
            wait for 100ns;
            SS_BUSY <= '0';
            wait for 100ns;
            FF_US_RESTORE <='0';
            if FABRIC_RESET_N /= '0' then 
               report "External Reset Error";
            else
               report "External Reset Success";
            end if;
            wait for 100ns;            
            FF_US_RESTORE <='1';
            wait for 100ns;            

               -- PLL Lock Reset
            EXT_RST_N     <= '1';
            PLL_LOCK      <= '1';
            SS_BUSY       <= '1';
            INIT_DONE     <= '1';
            FF_US_RESTORE <= '1';
            wait for 100ns;
            PLL_LOCK     <= '0';
            wait for 100ns;
            FF_US_RESTORE <= '0';
            wait for 100ns;
            SS_BUSY <= '0';
            wait for 100ns;
            FF_US_RESTORE <='0';
            if FABRIC_RESET_N /= '0' then 
               report "PLL Lock Reset Error";
            else
               report "PLL Lock Reset Success";
            end if;
            wait for 100ns;            
            FF_US_RESTORE <='1';
            wait for 100ns;
               -- init done reset
            EXT_RST_N     <= '1';
            PLL_LOCK      <= '1';
            SS_BUSY       <= '1';
            INIT_DONE     <= '1';
            FF_US_RESTORE <= '1';
            wait for 100ns;
            INIT_DONE   <= '0';
            wait for 100ns;
            FF_US_RESTORE <= '0';
            wait for 100ns;
            SS_BUSY <= '0';
            wait for 100ns;
            FF_US_RESTORE <='0';
            if FABRIC_RESET_N /= '0' then 
               report "Init Done Reset Error";
            else
               report "Init Done Reset Success";
            end if;
            wait for 100ns;
            FF_US_RESTORE <='1';
            wait for 100ns;
            wait;
            
            
        end if;
    end process;

    -- Clock Driver
    SYSCLK <= not SYSCLK after (SYSCLK_PERIOD / 2.0 );

    -- Instantiate Unit Under Test:  corereset_pf
    corereset_pf_0 : CORERESET_PF_C2_CORERESET_PF_C2_0_corereset_pf
        -- port map
        port map( 
            CLK => SYSCLK,
            EXT_RST_N => EXT_RST_N,
            PLL_LOCK => PLL_LOCK,
            SS_BUSY => SS_BUSY,
            INIT_DONE => INIT_DONE,
            FF_US_RESTORE => FF_US_RESTORE,

            -- Outputs
            FABRIC_RESET_N =>  FABRIC_RESET_N

        );

end behavioral;

