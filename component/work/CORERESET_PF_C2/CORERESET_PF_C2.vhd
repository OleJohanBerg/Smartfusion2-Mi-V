----------------------------------------------------------------------
-- Created by SmartDesign Mon Aug  5 10:55:13 2019
-- Version: v12.1 12.600.0.14
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion2;
use smartfusion2.all;
library CORERESET_PF_LIB;
use CORERESET_PF_LIB.all;
----------------------------------------------------------------------
-- CORERESET_PF_C2 entity declaration
----------------------------------------------------------------------
entity CORERESET_PF_C2 is
    -- Port list
    port(
        -- Inputs
        CLK            : in  std_logic;
        EXT_RST_N      : in  std_logic;
        FF_US_RESTORE  : in  std_logic;
        INIT_DONE      : in  std_logic;
        PLL_LOCK       : in  std_logic;
        SS_BUSY        : in  std_logic;
        -- Outputs
        FABRIC_RESET_N : out std_logic
        );
end CORERESET_PF_C2;
----------------------------------------------------------------------
-- CORERESET_PF_C2 architecture body
----------------------------------------------------------------------
architecture RTL of CORERESET_PF_C2 is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- CORERESET_PF_C2_CORERESET_PF_C2_0_CORERESET_PF   -   Actel:DirectCore:CORERESET_PF:2.1.100
component CORERESET_PF_C2_CORERESET_PF_C2_0_CORERESET_PF
    -- Port list
    port(
        -- Inputs
        CLK            : in  std_logic;
        EXT_RST_N      : in  std_logic;
        FF_US_RESTORE  : in  std_logic;
        INIT_DONE      : in  std_logic;
        PLL_LOCK       : in  std_logic;
        SS_BUSY        : in  std_logic;
        -- Outputs
        FABRIC_RESET_N : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal FABRIC_RESET_N_net_0 : std_logic;
signal FABRIC_RESET_N_net_1 : std_logic;

begin
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 FABRIC_RESET_N_net_1 <= FABRIC_RESET_N_net_0;
 FABRIC_RESET_N       <= FABRIC_RESET_N_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- CORERESET_PF_C2_0   -   Actel:DirectCore:CORERESET_PF:2.1.100
CORERESET_PF_C2_0 : CORERESET_PF_C2_CORERESET_PF_C2_0_CORERESET_PF
    port map( 
        -- Inputs
        CLK            => CLK,
        EXT_RST_N      => EXT_RST_N,
        PLL_LOCK       => PLL_LOCK,
        SS_BUSY        => SS_BUSY,
        INIT_DONE      => INIT_DONE,
        FF_US_RESTORE  => FF_US_RESTORE,
        -- Outputs
        FABRIC_RESET_N => FABRIC_RESET_N_net_0 
        );

end RTL;
