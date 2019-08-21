----------------------------------------------------------------------
-- Created by SmartDesign Tue Jul 16 14:58:45 2019
-- Version: v12.1 12.600.0.14
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion2;
use smartfusion2.all;
library COREJTAGDEBUG_LIB;
use COREJTAGDEBUG_LIB.all;
----------------------------------------------------------------------
-- COREJTAGDEBUG_C0 entity declaration
----------------------------------------------------------------------
entity COREJTAGDEBUG_C0 is
    -- Port list
    port(
        -- Inputs
        TCK         : in  std_logic;
        TDI         : in  std_logic;
        TGT_TDO_0   : in  std_logic;
        TMS         : in  std_logic;
        TRSTB       : in  std_logic;
        -- Outputs
        TDO         : out std_logic;
        TGT_TCK_0   : out std_logic;
        TGT_TDI_0   : out std_logic;
        TGT_TMS_0   : out std_logic;
        TGT_TRSTB_0 : out std_logic
        );
end COREJTAGDEBUG_C0;
----------------------------------------------------------------------
-- COREJTAGDEBUG_C0 architecture body
----------------------------------------------------------------------
architecture RTL of COREJTAGDEBUG_C0 is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- COREJTAGDEBUG   -   Actel:DirectCore:COREJTAGDEBUG:3.0.100
component COREJTAGDEBUG
    generic( 
        FAMILY                   : integer := 19 ;
        IR_CODE_TGT_0            : integer := 16#55# ;
        IR_CODE_TGT_1            : integer := 16#56# ;
        IR_CODE_TGT_2            : integer := 16#57# ;
        IR_CODE_TGT_3            : integer := 16#58# ;
        IR_CODE_TGT_4            : integer := 16#59# ;
        IR_CODE_TGT_5            : integer := 16#5a# ;
        IR_CODE_TGT_6            : integer := 16#5b# ;
        IR_CODE_TGT_7            : integer := 16#5c# ;
        IR_CODE_TGT_8            : integer := 16#5d# ;
        IR_CODE_TGT_9            : integer := 16#5e# ;
        IR_CODE_TGT_10           : integer := 16#5f# ;
        IR_CODE_TGT_11           : integer := 16#60# ;
        IR_CODE_TGT_12           : integer := 16#61# ;
        IR_CODE_TGT_13           : integer := 16#62# ;
        IR_CODE_TGT_14           : integer := 16#63# ;
        IR_CODE_TGT_15           : integer := 16#64# ;
        NUM_DEBUG_TGTS           : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_0  : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_1  : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_2  : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_3  : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_4  : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_5  : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_6  : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_7  : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_8  : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_9  : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_10 : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_11 : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_12 : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_13 : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_14 : integer := 1 ;
        TGT_ACTIVE_HIGH_RESET_15 : integer := 1 ;
        UJTAG_BYPASS             : integer := 0 
        );
    -- Port list
    port(
        -- Inputs
        TCK                  : in  std_logic;
        TDI                  : in  std_logic;
        TGT_TDO_0            : in  std_logic;
        TGT_TDO_1            : in  std_logic;
        TGT_TDO_10           : in  std_logic;
        TGT_TDO_11           : in  std_logic;
        TGT_TDO_12           : in  std_logic;
        TGT_TDO_13           : in  std_logic;
        TGT_TDO_14           : in  std_logic;
        TGT_TDO_15           : in  std_logic;
        TGT_TDO_2            : in  std_logic;
        TGT_TDO_3            : in  std_logic;
        TGT_TDO_4            : in  std_logic;
        TGT_TDO_5            : in  std_logic;
        TGT_TDO_6            : in  std_logic;
        TGT_TDO_7            : in  std_logic;
        TGT_TDO_8            : in  std_logic;
        TGT_TDO_9            : in  std_logic;
        TMS                  : in  std_logic;
        TRSTB                : in  std_logic;
        UJTAG_BYPASS_TCK_0   : in  std_logic;
        UJTAG_BYPASS_TCK_1   : in  std_logic;
        UJTAG_BYPASS_TCK_2   : in  std_logic;
        UJTAG_BYPASS_TCK_3   : in  std_logic;
        UJTAG_BYPASS_TDI_0   : in  std_logic;
        UJTAG_BYPASS_TDI_1   : in  std_logic;
        UJTAG_BYPASS_TDI_2   : in  std_logic;
        UJTAG_BYPASS_TDI_3   : in  std_logic;
        UJTAG_BYPASS_TMS_0   : in  std_logic;
        UJTAG_BYPASS_TMS_1   : in  std_logic;
        UJTAG_BYPASS_TMS_2   : in  std_logic;
        UJTAG_BYPASS_TMS_3   : in  std_logic;
        UJTAG_BYPASS_TRSTB_0 : in  std_logic;
        UJTAG_BYPASS_TRSTB_1 : in  std_logic;
        UJTAG_BYPASS_TRSTB_2 : in  std_logic;
        UJTAG_BYPASS_TRSTB_3 : in  std_logic;
        -- Outputs
        TDO                  : out std_logic;
        TGT_TCK_0            : out std_logic;
        TGT_TCK_1            : out std_logic;
        TGT_TCK_10           : out std_logic;
        TGT_TCK_11           : out std_logic;
        TGT_TCK_12           : out std_logic;
        TGT_TCK_13           : out std_logic;
        TGT_TCK_14           : out std_logic;
        TGT_TCK_15           : out std_logic;
        TGT_TCK_2            : out std_logic;
        TGT_TCK_3            : out std_logic;
        TGT_TCK_4            : out std_logic;
        TGT_TCK_5            : out std_logic;
        TGT_TCK_6            : out std_logic;
        TGT_TCK_7            : out std_logic;
        TGT_TCK_8            : out std_logic;
        TGT_TCK_9            : out std_logic;
        TGT_TDI_0            : out std_logic;
        TGT_TDI_1            : out std_logic;
        TGT_TDI_10           : out std_logic;
        TGT_TDI_11           : out std_logic;
        TGT_TDI_12           : out std_logic;
        TGT_TDI_13           : out std_logic;
        TGT_TDI_14           : out std_logic;
        TGT_TDI_15           : out std_logic;
        TGT_TDI_2            : out std_logic;
        TGT_TDI_3            : out std_logic;
        TGT_TDI_4            : out std_logic;
        TGT_TDI_5            : out std_logic;
        TGT_TDI_6            : out std_logic;
        TGT_TDI_7            : out std_logic;
        TGT_TDI_8            : out std_logic;
        TGT_TDI_9            : out std_logic;
        TGT_TMS_0            : out std_logic;
        TGT_TMS_1            : out std_logic;
        TGT_TMS_10           : out std_logic;
        TGT_TMS_11           : out std_logic;
        TGT_TMS_12           : out std_logic;
        TGT_TMS_13           : out std_logic;
        TGT_TMS_14           : out std_logic;
        TGT_TMS_15           : out std_logic;
        TGT_TMS_2            : out std_logic;
        TGT_TMS_3            : out std_logic;
        TGT_TMS_4            : out std_logic;
        TGT_TMS_5            : out std_logic;
        TGT_TMS_6            : out std_logic;
        TGT_TMS_7            : out std_logic;
        TGT_TMS_8            : out std_logic;
        TGT_TMS_9            : out std_logic;
        TGT_TRSTB_0          : out std_logic;
        TGT_TRSTB_1          : out std_logic;
        TGT_TRSTB_10         : out std_logic;
        TGT_TRSTB_11         : out std_logic;
        TGT_TRSTB_12         : out std_logic;
        TGT_TRSTB_13         : out std_logic;
        TGT_TRSTB_14         : out std_logic;
        TGT_TRSTB_15         : out std_logic;
        TGT_TRSTB_2          : out std_logic;
        TGT_TRSTB_3          : out std_logic;
        TGT_TRSTB_4          : out std_logic;
        TGT_TRSTB_5          : out std_logic;
        TGT_TRSTB_6          : out std_logic;
        TGT_TRSTB_7          : out std_logic;
        TGT_TRSTB_8          : out std_logic;
        TGT_TRSTB_9          : out std_logic;
        UJTAG_BYPASS_TDO_0   : out std_logic;
        UJTAG_BYPASS_TDO_1   : out std_logic;
        UJTAG_BYPASS_TDO_2   : out std_logic;
        UJTAG_BYPASS_TDO_3   : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal TDO_net_0         : std_logic;
signal TGT_TCK_0_net_0   : std_logic;
signal TGT_TDI_0_net_0   : std_logic;
signal TGT_TMS_0_net_0   : std_logic;
signal TGT_TRSTB_0_net_0 : std_logic;
signal TDO_net_1         : std_logic;
signal TGT_TRSTB_0_net_1 : std_logic;
signal TGT_TCK_0_net_1   : std_logic;
signal TGT_TMS_0_net_1   : std_logic;
signal TGT_TDI_0_net_1   : std_logic;
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal GND_net           : std_logic;

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 GND_net <= '0';
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 TDO_net_1         <= TDO_net_0;
 TDO               <= TDO_net_1;
 TGT_TRSTB_0_net_1 <= TGT_TRSTB_0_net_0;
 TGT_TRSTB_0       <= TGT_TRSTB_0_net_1;
 TGT_TCK_0_net_1   <= TGT_TCK_0_net_0;
 TGT_TCK_0         <= TGT_TCK_0_net_1;
 TGT_TMS_0_net_1   <= TGT_TMS_0_net_0;
 TGT_TMS_0         <= TGT_TMS_0_net_1;
 TGT_TDI_0_net_1   <= TGT_TDI_0_net_0;
 TGT_TDI_0         <= TGT_TDI_0_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- COREJTAGDEBUG_C0_0   -   Actel:DirectCore:COREJTAGDEBUG:3.0.100
COREJTAGDEBUG_C0_0 : COREJTAGDEBUG
    generic map( 
        FAMILY                   => ( 19 ),
        IR_CODE_TGT_0            => ( 16#55# ),
        IR_CODE_TGT_1            => ( 16#56# ),
        IR_CODE_TGT_2            => ( 16#57# ),
        IR_CODE_TGT_3            => ( 16#58# ),
        IR_CODE_TGT_4            => ( 16#59# ),
        IR_CODE_TGT_5            => ( 16#5a# ),
        IR_CODE_TGT_6            => ( 16#5b# ),
        IR_CODE_TGT_7            => ( 16#5c# ),
        IR_CODE_TGT_8            => ( 16#5d# ),
        IR_CODE_TGT_9            => ( 16#5e# ),
        IR_CODE_TGT_10           => ( 16#5f# ),
        IR_CODE_TGT_11           => ( 16#60# ),
        IR_CODE_TGT_12           => ( 16#61# ),
        IR_CODE_TGT_13           => ( 16#62# ),
        IR_CODE_TGT_14           => ( 16#63# ),
        IR_CODE_TGT_15           => ( 16#64# ),
        NUM_DEBUG_TGTS           => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_0  => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_1  => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_2  => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_3  => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_4  => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_5  => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_6  => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_7  => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_8  => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_9  => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_10 => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_11 => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_12 => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_13 => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_14 => ( 1 ),
        TGT_ACTIVE_HIGH_RESET_15 => ( 1 ),
        UJTAG_BYPASS             => ( 0 )
        )
    port map( 
        -- Inputs
        TRSTB                => TRSTB,
        TCK                  => TCK,
        TMS                  => TMS,
        TDI                  => TDI,
        TGT_TDO_0            => TGT_TDO_0,
        TGT_TDO_1            => GND_net, -- tied to '0' from definition
        TGT_TDO_2            => GND_net, -- tied to '0' from definition
        TGT_TDO_3            => GND_net, -- tied to '0' from definition
        TGT_TDO_4            => GND_net, -- tied to '0' from definition
        TGT_TDO_5            => GND_net, -- tied to '0' from definition
        TGT_TDO_6            => GND_net, -- tied to '0' from definition
        TGT_TDO_7            => GND_net, -- tied to '0' from definition
        TGT_TDO_8            => GND_net, -- tied to '0' from definition
        TGT_TDO_9            => GND_net, -- tied to '0' from definition
        TGT_TDO_10           => GND_net, -- tied to '0' from definition
        TGT_TDO_11           => GND_net, -- tied to '0' from definition
        TGT_TDO_12           => GND_net, -- tied to '0' from definition
        TGT_TDO_13           => GND_net, -- tied to '0' from definition
        TGT_TDO_14           => GND_net, -- tied to '0' from definition
        TGT_TDO_15           => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TCK_0   => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TMS_0   => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TDI_0   => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TRSTB_0 => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TCK_1   => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TMS_1   => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TDI_1   => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TRSTB_1 => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TCK_2   => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TMS_2   => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TDI_2   => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TRSTB_2 => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TCK_3   => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TMS_3   => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TDI_3   => GND_net, -- tied to '0' from definition
        UJTAG_BYPASS_TRSTB_3 => GND_net, -- tied to '0' from definition
        -- Outputs
        TDO                  => TDO_net_0,
        TGT_TRSTB_0          => TGT_TRSTB_0_net_0,
        TGT_TCK_0            => TGT_TCK_0_net_0,
        TGT_TMS_0            => TGT_TMS_0_net_0,
        TGT_TDI_0            => TGT_TDI_0_net_0,
        TGT_TRSTB_1          => OPEN,
        TGT_TCK_1            => OPEN,
        TGT_TMS_1            => OPEN,
        TGT_TDI_1            => OPEN,
        TGT_TRSTB_2          => OPEN,
        TGT_TCK_2            => OPEN,
        TGT_TMS_2            => OPEN,
        TGT_TDI_2            => OPEN,
        TGT_TRSTB_3          => OPEN,
        TGT_TCK_3            => OPEN,
        TGT_TMS_3            => OPEN,
        TGT_TDI_3            => OPEN,
        TGT_TRSTB_4          => OPEN,
        TGT_TCK_4            => OPEN,
        TGT_TMS_4            => OPEN,
        TGT_TDI_4            => OPEN,
        TGT_TRSTB_5          => OPEN,
        TGT_TCK_5            => OPEN,
        TGT_TMS_5            => OPEN,
        TGT_TDI_5            => OPEN,
        TGT_TRSTB_6          => OPEN,
        TGT_TCK_6            => OPEN,
        TGT_TMS_6            => OPEN,
        TGT_TDI_6            => OPEN,
        TGT_TRSTB_7          => OPEN,
        TGT_TCK_7            => OPEN,
        TGT_TMS_7            => OPEN,
        TGT_TDI_7            => OPEN,
        TGT_TRSTB_8          => OPEN,
        TGT_TCK_8            => OPEN,
        TGT_TMS_8            => OPEN,
        TGT_TDI_8            => OPEN,
        TGT_TRSTB_9          => OPEN,
        TGT_TCK_9            => OPEN,
        TGT_TMS_9            => OPEN,
        TGT_TDI_9            => OPEN,
        TGT_TRSTB_10         => OPEN,
        TGT_TCK_10           => OPEN,
        TGT_TMS_10           => OPEN,
        TGT_TDI_10           => OPEN,
        TGT_TRSTB_11         => OPEN,
        TGT_TCK_11           => OPEN,
        TGT_TMS_11           => OPEN,
        TGT_TDI_11           => OPEN,
        TGT_TRSTB_12         => OPEN,
        TGT_TCK_12           => OPEN,
        TGT_TMS_12           => OPEN,
        TGT_TDI_12           => OPEN,
        TGT_TRSTB_13         => OPEN,
        TGT_TCK_13           => OPEN,
        TGT_TMS_13           => OPEN,
        TGT_TDI_13           => OPEN,
        TGT_TRSTB_14         => OPEN,
        TGT_TCK_14           => OPEN,
        TGT_TMS_14           => OPEN,
        TGT_TDI_14           => OPEN,
        TGT_TRSTB_15         => OPEN,
        TGT_TCK_15           => OPEN,
        TGT_TMS_15           => OPEN,
        TGT_TDI_15           => OPEN,
        UJTAG_BYPASS_TDO_1   => OPEN,
        UJTAG_BYPASS_TDO_2   => OPEN,
        UJTAG_BYPASS_TDO_3   => OPEN,
        UJTAG_BYPASS_TDO_0   => OPEN 
        );

end RTL;
