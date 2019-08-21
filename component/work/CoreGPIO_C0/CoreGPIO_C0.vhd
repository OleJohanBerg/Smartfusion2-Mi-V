----------------------------------------------------------------------
-- Created by SmartDesign Fri Aug  2 11:02:01 2019
-- Version: v12.1 12.600.0.14
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion2;
use smartfusion2.all;
library COREGPIO_LIB;
use COREGPIO_LIB.all;
use COREGPIO_LIB.CoreGPIO_C0_CoreGPIO_C0_0_components.all;
----------------------------------------------------------------------
-- CoreGPIO_C0 entity declaration
----------------------------------------------------------------------
entity CoreGPIO_C0 is
    -- Port list
    port(
        -- Inputs
        GPIO_IN  : in  std_logic_vector(1 downto 0);
        PADDR    : in  std_logic_vector(7 downto 0);
        PCLK     : in  std_logic;
        PENABLE  : in  std_logic;
        PRESETN  : in  std_logic;
        PSEL     : in  std_logic;
        PWDATA   : in  std_logic_vector(31 downto 0);
        PWRITE   : in  std_logic;
        -- Outputs
        GPIO_OUT : out std_logic_vector(1 downto 0);
        INT      : out std_logic_vector(1 downto 0);
        PRDATA   : out std_logic_vector(31 downto 0);
        PREADY   : out std_logic;
        PSLVERR  : out std_logic
        );
end CoreGPIO_C0;
----------------------------------------------------------------------
-- CoreGPIO_C0 architecture body
----------------------------------------------------------------------
architecture RTL of CoreGPIO_C0 is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- CoreGPIO_C0_CoreGPIO_C0_0_CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.2.102
component CoreGPIO_C0_CoreGPIO_C0_0_CoreGPIO
    generic( 
        APB_WIDTH       : integer := 32 ;
        FIXED_CONFIG_0  : integer := 1 ;
        FIXED_CONFIG_1  : integer := 1 ;
        FIXED_CONFIG_2  : integer := 1 ;
        FIXED_CONFIG_3  : integer := 1 ;
        FIXED_CONFIG_4  : integer := 1 ;
        FIXED_CONFIG_5  : integer := 1 ;
        FIXED_CONFIG_6  : integer := 0 ;
        FIXED_CONFIG_7  : integer := 0 ;
        FIXED_CONFIG_8  : integer := 0 ;
        FIXED_CONFIG_9  : integer := 0 ;
        FIXED_CONFIG_10 : integer := 0 ;
        FIXED_CONFIG_11 : integer := 0 ;
        FIXED_CONFIG_12 : integer := 0 ;
        FIXED_CONFIG_13 : integer := 0 ;
        FIXED_CONFIG_14 : integer := 0 ;
        FIXED_CONFIG_15 : integer := 0 ;
        FIXED_CONFIG_16 : integer := 0 ;
        FIXED_CONFIG_17 : integer := 0 ;
        FIXED_CONFIG_18 : integer := 0 ;
        FIXED_CONFIG_19 : integer := 0 ;
        FIXED_CONFIG_20 : integer := 0 ;
        FIXED_CONFIG_21 : integer := 0 ;
        FIXED_CONFIG_22 : integer := 0 ;
        FIXED_CONFIG_23 : integer := 0 ;
        FIXED_CONFIG_24 : integer := 0 ;
        FIXED_CONFIG_25 : integer := 0 ;
        FIXED_CONFIG_26 : integer := 0 ;
        FIXED_CONFIG_27 : integer := 0 ;
        FIXED_CONFIG_28 : integer := 0 ;
        FIXED_CONFIG_29 : integer := 0 ;
        FIXED_CONFIG_30 : integer := 0 ;
        FIXED_CONFIG_31 : integer := 0 ;
        INT_BUS         : integer := 0 ;
        IO_INT_TYPE_0   : integer := 7 ;
        IO_INT_TYPE_1   : integer := 7 ;
        IO_INT_TYPE_2   : integer := 7 ;
        IO_INT_TYPE_3   : integer := 7 ;
        IO_INT_TYPE_4   : integer := 7 ;
        IO_INT_TYPE_5   : integer := 7 ;
        IO_INT_TYPE_6   : integer := 7 ;
        IO_INT_TYPE_7   : integer := 7 ;
        IO_INT_TYPE_8   : integer := 7 ;
        IO_INT_TYPE_9   : integer := 7 ;
        IO_INT_TYPE_10  : integer := 7 ;
        IO_INT_TYPE_11  : integer := 7 ;
        IO_INT_TYPE_12  : integer := 7 ;
        IO_INT_TYPE_13  : integer := 7 ;
        IO_INT_TYPE_14  : integer := 7 ;
        IO_INT_TYPE_15  : integer := 7 ;
        IO_INT_TYPE_16  : integer := 7 ;
        IO_INT_TYPE_17  : integer := 7 ;
        IO_INT_TYPE_18  : integer := 7 ;
        IO_INT_TYPE_19  : integer := 7 ;
        IO_INT_TYPE_20  : integer := 7 ;
        IO_INT_TYPE_21  : integer := 7 ;
        IO_INT_TYPE_22  : integer := 7 ;
        IO_INT_TYPE_23  : integer := 7 ;
        IO_INT_TYPE_24  : integer := 7 ;
        IO_INT_TYPE_25  : integer := 7 ;
        IO_INT_TYPE_26  : integer := 7 ;
        IO_INT_TYPE_27  : integer := 7 ;
        IO_INT_TYPE_28  : integer := 7 ;
        IO_INT_TYPE_29  : integer := 7 ;
        IO_INT_TYPE_30  : integer := 7 ;
        IO_INT_TYPE_31  : integer := 7 ;
        IO_NUM          : integer := 2 ;
        IO_TYPE_0       : integer := 0 ;
        IO_TYPE_1       : integer := 0 ;
        IO_TYPE_2       : integer := 1 ;
        IO_TYPE_3       : integer := 1 ;
        IO_TYPE_4       : integer := 1 ;
        IO_TYPE_5       : integer := 1 ;
        IO_TYPE_6       : integer := 0 ;
        IO_TYPE_7       : integer := 0 ;
        IO_TYPE_8       : integer := 0 ;
        IO_TYPE_9       : integer := 0 ;
        IO_TYPE_10      : integer := 0 ;
        IO_TYPE_11      : integer := 0 ;
        IO_TYPE_12      : integer := 0 ;
        IO_TYPE_13      : integer := 0 ;
        IO_TYPE_14      : integer := 0 ;
        IO_TYPE_15      : integer := 0 ;
        IO_TYPE_16      : integer := 0 ;
        IO_TYPE_17      : integer := 0 ;
        IO_TYPE_18      : integer := 0 ;
        IO_TYPE_19      : integer := 0 ;
        IO_TYPE_20      : integer := 0 ;
        IO_TYPE_21      : integer := 0 ;
        IO_TYPE_22      : integer := 0 ;
        IO_TYPE_23      : integer := 0 ;
        IO_TYPE_24      : integer := 0 ;
        IO_TYPE_25      : integer := 0 ;
        IO_TYPE_26      : integer := 0 ;
        IO_TYPE_27      : integer := 0 ;
        IO_TYPE_28      : integer := 0 ;
        IO_TYPE_29      : integer := 0 ;
        IO_TYPE_30      : integer := 0 ;
        IO_TYPE_31      : integer := 0 ;
        IO_VAL_0        : integer := 0 ;
        IO_VAL_1        : integer := 0 ;
        IO_VAL_2        : integer := 0 ;
        IO_VAL_3        : integer := 0 ;
        IO_VAL_4        : integer := 0 ;
        IO_VAL_5        : integer := 0 ;
        IO_VAL_6        : integer := 0 ;
        IO_VAL_7        : integer := 0 ;
        IO_VAL_8        : integer := 0 ;
        IO_VAL_9        : integer := 0 ;
        IO_VAL_10       : integer := 0 ;
        IO_VAL_11       : integer := 0 ;
        IO_VAL_12       : integer := 0 ;
        IO_VAL_13       : integer := 0 ;
        IO_VAL_14       : integer := 0 ;
        IO_VAL_15       : integer := 0 ;
        IO_VAL_16       : integer := 0 ;
        IO_VAL_17       : integer := 0 ;
        IO_VAL_18       : integer := 0 ;
        IO_VAL_19       : integer := 0 ;
        IO_VAL_20       : integer := 0 ;
        IO_VAL_21       : integer := 0 ;
        IO_VAL_22       : integer := 0 ;
        IO_VAL_23       : integer := 0 ;
        IO_VAL_24       : integer := 0 ;
        IO_VAL_25       : integer := 0 ;
        IO_VAL_26       : integer := 0 ;
        IO_VAL_27       : integer := 0 ;
        IO_VAL_28       : integer := 0 ;
        IO_VAL_29       : integer := 0 ;
        IO_VAL_30       : integer := 0 ;
        IO_VAL_31       : integer := 0 ;
        OE_TYPE         : integer := 1 
        );
    -- Port list
    port(
        -- Inputs
        GPIO_IN  : in  std_logic_vector(1 downto 0);
        PADDR    : in  std_logic_vector(7 downto 0);
        PCLK     : in  std_logic;
        PENABLE  : in  std_logic;
        PRESETN  : in  std_logic;
        PSEL     : in  std_logic;
        PWDATA   : in  std_logic_vector(31 downto 0);
        PWRITE   : in  std_logic;
        -- Outputs
        GPIO_OE  : out std_logic_vector(1 downto 0);
        GPIO_OUT : out std_logic_vector(1 downto 0);
        INT      : out std_logic_vector(1 downto 0);
        INT_OR   : out std_logic;
        PRDATA   : out std_logic_vector(31 downto 0);
        PREADY   : out std_logic;
        PSLVERR  : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal APB_bif_PRDATA        : std_logic_vector(31 downto 0);
signal APB_bif_PREADY        : std_logic;
signal APB_bif_PSLVERR       : std_logic;
signal GPIO_OUT_2            : std_logic_vector(1 downto 0);
signal INT_2                 : std_logic_vector(1 downto 0);
signal APB_bif_PRDATA_net_0  : std_logic_vector(31 downto 0);
signal APB_bif_PREADY_net_0  : std_logic;
signal APB_bif_PSLVERR_net_0 : std_logic;
signal INT_2_net_0           : std_logic_vector(1 downto 0);
signal GPIO_OUT_2_net_0      : std_logic_vector(1 downto 0);

begin
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 APB_bif_PRDATA_net_0  <= APB_bif_PRDATA;
 PRDATA(31 downto 0)   <= APB_bif_PRDATA_net_0;
 APB_bif_PREADY_net_0  <= APB_bif_PREADY;
 PREADY                <= APB_bif_PREADY_net_0;
 APB_bif_PSLVERR_net_0 <= APB_bif_PSLVERR;
 PSLVERR               <= APB_bif_PSLVERR_net_0;
 INT_2_net_0           <= INT_2;
 INT(1 downto 0)       <= INT_2_net_0;
 GPIO_OUT_2_net_0      <= GPIO_OUT_2;
 GPIO_OUT(1 downto 0)  <= GPIO_OUT_2_net_0;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- CoreGPIO_C0_0   -   Actel:DirectCore:CoreGPIO:3.2.102
CoreGPIO_C0_0 : CoreGPIO_C0_CoreGPIO_C0_0_CoreGPIO
    generic map( 
        APB_WIDTH       => ( 32 ),
        FIXED_CONFIG_0  => ( 1 ),
        FIXED_CONFIG_1  => ( 1 ),
        FIXED_CONFIG_2  => ( 1 ),
        FIXED_CONFIG_3  => ( 1 ),
        FIXED_CONFIG_4  => ( 1 ),
        FIXED_CONFIG_5  => ( 1 ),
        FIXED_CONFIG_6  => ( 0 ),
        FIXED_CONFIG_7  => ( 0 ),
        FIXED_CONFIG_8  => ( 0 ),
        FIXED_CONFIG_9  => ( 0 ),
        FIXED_CONFIG_10 => ( 0 ),
        FIXED_CONFIG_11 => ( 0 ),
        FIXED_CONFIG_12 => ( 0 ),
        FIXED_CONFIG_13 => ( 0 ),
        FIXED_CONFIG_14 => ( 0 ),
        FIXED_CONFIG_15 => ( 0 ),
        FIXED_CONFIG_16 => ( 0 ),
        FIXED_CONFIG_17 => ( 0 ),
        FIXED_CONFIG_18 => ( 0 ),
        FIXED_CONFIG_19 => ( 0 ),
        FIXED_CONFIG_20 => ( 0 ),
        FIXED_CONFIG_21 => ( 0 ),
        FIXED_CONFIG_22 => ( 0 ),
        FIXED_CONFIG_23 => ( 0 ),
        FIXED_CONFIG_24 => ( 0 ),
        FIXED_CONFIG_25 => ( 0 ),
        FIXED_CONFIG_26 => ( 0 ),
        FIXED_CONFIG_27 => ( 0 ),
        FIXED_CONFIG_28 => ( 0 ),
        FIXED_CONFIG_29 => ( 0 ),
        FIXED_CONFIG_30 => ( 0 ),
        FIXED_CONFIG_31 => ( 0 ),
        INT_BUS         => ( 0 ),
        IO_INT_TYPE_0   => ( 7 ),
        IO_INT_TYPE_1   => ( 7 ),
        IO_INT_TYPE_2   => ( 7 ),
        IO_INT_TYPE_3   => ( 7 ),
        IO_INT_TYPE_4   => ( 7 ),
        IO_INT_TYPE_5   => ( 7 ),
        IO_INT_TYPE_6   => ( 7 ),
        IO_INT_TYPE_7   => ( 7 ),
        IO_INT_TYPE_8   => ( 7 ),
        IO_INT_TYPE_9   => ( 7 ),
        IO_INT_TYPE_10  => ( 7 ),
        IO_INT_TYPE_11  => ( 7 ),
        IO_INT_TYPE_12  => ( 7 ),
        IO_INT_TYPE_13  => ( 7 ),
        IO_INT_TYPE_14  => ( 7 ),
        IO_INT_TYPE_15  => ( 7 ),
        IO_INT_TYPE_16  => ( 7 ),
        IO_INT_TYPE_17  => ( 7 ),
        IO_INT_TYPE_18  => ( 7 ),
        IO_INT_TYPE_19  => ( 7 ),
        IO_INT_TYPE_20  => ( 7 ),
        IO_INT_TYPE_21  => ( 7 ),
        IO_INT_TYPE_22  => ( 7 ),
        IO_INT_TYPE_23  => ( 7 ),
        IO_INT_TYPE_24  => ( 7 ),
        IO_INT_TYPE_25  => ( 7 ),
        IO_INT_TYPE_26  => ( 7 ),
        IO_INT_TYPE_27  => ( 7 ),
        IO_INT_TYPE_28  => ( 7 ),
        IO_INT_TYPE_29  => ( 7 ),
        IO_INT_TYPE_30  => ( 7 ),
        IO_INT_TYPE_31  => ( 7 ),
        IO_NUM          => ( 2 ),
        IO_TYPE_0       => ( 0 ),
        IO_TYPE_1       => ( 0 ),
        IO_TYPE_2       => ( 1 ),
        IO_TYPE_3       => ( 1 ),
        IO_TYPE_4       => ( 1 ),
        IO_TYPE_5       => ( 1 ),
        IO_TYPE_6       => ( 0 ),
        IO_TYPE_7       => ( 0 ),
        IO_TYPE_8       => ( 0 ),
        IO_TYPE_9       => ( 0 ),
        IO_TYPE_10      => ( 0 ),
        IO_TYPE_11      => ( 0 ),
        IO_TYPE_12      => ( 0 ),
        IO_TYPE_13      => ( 0 ),
        IO_TYPE_14      => ( 0 ),
        IO_TYPE_15      => ( 0 ),
        IO_TYPE_16      => ( 0 ),
        IO_TYPE_17      => ( 0 ),
        IO_TYPE_18      => ( 0 ),
        IO_TYPE_19      => ( 0 ),
        IO_TYPE_20      => ( 0 ),
        IO_TYPE_21      => ( 0 ),
        IO_TYPE_22      => ( 0 ),
        IO_TYPE_23      => ( 0 ),
        IO_TYPE_24      => ( 0 ),
        IO_TYPE_25      => ( 0 ),
        IO_TYPE_26      => ( 0 ),
        IO_TYPE_27      => ( 0 ),
        IO_TYPE_28      => ( 0 ),
        IO_TYPE_29      => ( 0 ),
        IO_TYPE_30      => ( 0 ),
        IO_TYPE_31      => ( 0 ),
        IO_VAL_0        => ( 0 ),
        IO_VAL_1        => ( 0 ),
        IO_VAL_2        => ( 0 ),
        IO_VAL_3        => ( 0 ),
        IO_VAL_4        => ( 0 ),
        IO_VAL_5        => ( 0 ),
        IO_VAL_6        => ( 0 ),
        IO_VAL_7        => ( 0 ),
        IO_VAL_8        => ( 0 ),
        IO_VAL_9        => ( 0 ),
        IO_VAL_10       => ( 0 ),
        IO_VAL_11       => ( 0 ),
        IO_VAL_12       => ( 0 ),
        IO_VAL_13       => ( 0 ),
        IO_VAL_14       => ( 0 ),
        IO_VAL_15       => ( 0 ),
        IO_VAL_16       => ( 0 ),
        IO_VAL_17       => ( 0 ),
        IO_VAL_18       => ( 0 ),
        IO_VAL_19       => ( 0 ),
        IO_VAL_20       => ( 0 ),
        IO_VAL_21       => ( 0 ),
        IO_VAL_22       => ( 0 ),
        IO_VAL_23       => ( 0 ),
        IO_VAL_24       => ( 0 ),
        IO_VAL_25       => ( 0 ),
        IO_VAL_26       => ( 0 ),
        IO_VAL_27       => ( 0 ),
        IO_VAL_28       => ( 0 ),
        IO_VAL_29       => ( 0 ),
        IO_VAL_30       => ( 0 ),
        IO_VAL_31       => ( 0 ),
        OE_TYPE         => ( 1 )
        )
    port map( 
        -- Inputs
        PRESETN  => PRESETN,
        PCLK     => PCLK,
        PSEL     => PSEL,
        PENABLE  => PENABLE,
        PWRITE   => PWRITE,
        PADDR    => PADDR,
        PWDATA   => PWDATA,
        GPIO_IN  => GPIO_IN,
        -- Outputs
        PSLVERR  => APB_bif_PSLVERR,
        PREADY   => APB_bif_PREADY,
        INT_OR   => OPEN,
        PRDATA   => APB_bif_PRDATA,
        INT      => INT_2,
        GPIO_OUT => GPIO_OUT_2,
        GPIO_OE  => OPEN 
        );

end RTL;
