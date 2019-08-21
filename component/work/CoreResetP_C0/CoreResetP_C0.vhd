----------------------------------------------------------------------
-- Created by SmartDesign Tue Jul 16 15:01:56 2019
-- Version: v12.1 12.600.0.14
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion2;
use smartfusion2.all;
----------------------------------------------------------------------
-- CoreResetP_C0 entity declaration
----------------------------------------------------------------------
entity CoreResetP_C0 is
    -- Port list
    port(
        -- Inputs
        CLK_BASE                    : in  std_logic;
        CONFIG1_DONE                : in  std_logic;
        CONFIG2_DONE                : in  std_logic;
        FAB_RESET_N                 : in  std_logic;
        FIC_2_APB_M_PRESET_N        : in  std_logic;
        FPLL_LOCK                   : in  std_logic;
        POWER_ON_RESET_N            : in  std_logic;
        RCOSC_25_50MHZ              : in  std_logic;
        RESET_N_M2F                 : in  std_logic;
        SDIF0_SPLL_LOCK             : in  std_logic;
        SDIF1_SPLL_LOCK             : in  std_logic;
        SDIF2_SPLL_LOCK             : in  std_logic;
        SDIF3_SPLL_LOCK             : in  std_logic;
        -- Outputs
        DDR_READY                   : out std_logic;
        EXT_RESET_OUT               : out std_logic;
        FDDR_CORE_RESET_N           : out std_logic;
        INIT_DONE                   : out std_logic;
        M3_RESET_N                  : out std_logic;
        MDDR_DDR_AXI_S_CORE_RESET_N : out std_logic;
        MSS_HPMS_READY              : out std_logic;
        RESET_N_F2M                 : out std_logic;
        SDIF0_CORE_RESET_N          : out std_logic;
        SDIF0_PHY_RESET_N           : out std_logic;
        SDIF1_CORE_RESET_N          : out std_logic;
        SDIF1_PHY_RESET_N           : out std_logic;
        SDIF2_CORE_RESET_N          : out std_logic;
        SDIF2_PHY_RESET_N           : out std_logic;
        SDIF3_CORE_RESET_N          : out std_logic;
        SDIF3_PHY_RESET_N           : out std_logic;
        SDIF_READY                  : out std_logic;
        SDIF_RELEASED               : out std_logic
        );
end CoreResetP_C0;
----------------------------------------------------------------------
-- CoreResetP_C0 architecture body
----------------------------------------------------------------------
architecture RTL of CoreResetP_C0 is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- CoreResetP   -   Actel:DirectCore:CoreResetP:7.1.100
component CoreResetP
    generic( 
        DDR_WAIT            : integer := 200 ;
        DEVICE_090          : integer := 0 ;
        DEVICE_VOLTAGE      : integer := 2 ;
        ENABLE_SOFT_RESETS  : integer := 0 ;
        EXT_RESET_CFG       : integer := 3 ;
        FDDR_IN_USE         : integer := 1 ;
        MDDR_IN_USE         : integer := 1 ;
        SDIF0_IN_USE        : integer := 1 ;
        SDIF0_PCIE          : integer := 0 ;
        SDIF0_PCIE_HOTRESET : integer := 1 ;
        SDIF0_PCIE_L2P2     : integer := 1 ;
        SDIF1_IN_USE        : integer := 1 ;
        SDIF1_PCIE          : integer := 0 ;
        SDIF1_PCIE_HOTRESET : integer := 1 ;
        SDIF1_PCIE_L2P2     : integer := 1 ;
        SDIF2_IN_USE        : integer := 1 ;
        SDIF2_PCIE          : integer := 0 ;
        SDIF2_PCIE_HOTRESET : integer := 1 ;
        SDIF2_PCIE_L2P2     : integer := 1 ;
        SDIF3_IN_USE        : integer := 1 ;
        SDIF3_PCIE          : integer := 0 ;
        SDIF3_PCIE_HOTRESET : integer := 1 ;
        SDIF3_PCIE_L2P2     : integer := 1 
        );
    -- Port list
    port(
        -- Inputs
        CLK_BASE                       : in  std_logic;
        CLK_LTSSM                      : in  std_logic;
        CONFIG1_DONE                   : in  std_logic;
        CONFIG2_DONE                   : in  std_logic;
        FAB_RESET_N                    : in  std_logic;
        FIC_2_APB_M_PRESET_N           : in  std_logic;
        FPLL_LOCK                      : in  std_logic;
        POWER_ON_RESET_N               : in  std_logic;
        RCOSC_25_50MHZ                 : in  std_logic;
        RESET_N_M2F                    : in  std_logic;
        SDIF0_PERST_N                  : in  std_logic;
        SDIF0_PRDATA                   : in  std_logic_vector(31 downto 0);
        SDIF0_PSEL                     : in  std_logic;
        SDIF0_PWRITE                   : in  std_logic;
        SDIF0_SPLL_LOCK                : in  std_logic;
        SDIF1_PERST_N                  : in  std_logic;
        SDIF1_PRDATA                   : in  std_logic_vector(31 downto 0);
        SDIF1_PSEL                     : in  std_logic;
        SDIF1_PWRITE                   : in  std_logic;
        SDIF1_SPLL_LOCK                : in  std_logic;
        SDIF2_PERST_N                  : in  std_logic;
        SDIF2_PRDATA                   : in  std_logic_vector(31 downto 0);
        SDIF2_PSEL                     : in  std_logic;
        SDIF2_PWRITE                   : in  std_logic;
        SDIF2_SPLL_LOCK                : in  std_logic;
        SDIF3_PERST_N                  : in  std_logic;
        SDIF3_PRDATA                   : in  std_logic_vector(31 downto 0);
        SDIF3_PSEL                     : in  std_logic;
        SDIF3_PWRITE                   : in  std_logic;
        SDIF3_SPLL_LOCK                : in  std_logic;
        SOFT_EXT_RESET_OUT             : in  std_logic;
        SOFT_FDDR_CORE_RESET           : in  std_logic;
        SOFT_M3_RESET                  : in  std_logic;
        SOFT_MDDR_DDR_AXI_S_CORE_RESET : in  std_logic;
        SOFT_RESET_F2M                 : in  std_logic;
        SOFT_SDIF0_0_CORE_RESET        : in  std_logic;
        SOFT_SDIF0_1_CORE_RESET        : in  std_logic;
        SOFT_SDIF0_CORE_RESET          : in  std_logic;
        SOFT_SDIF0_PHY_RESET           : in  std_logic;
        SOFT_SDIF1_CORE_RESET          : in  std_logic;
        SOFT_SDIF1_PHY_RESET           : in  std_logic;
        SOFT_SDIF2_CORE_RESET          : in  std_logic;
        SOFT_SDIF2_PHY_RESET           : in  std_logic;
        SOFT_SDIF3_CORE_RESET          : in  std_logic;
        SOFT_SDIF3_PHY_RESET           : in  std_logic;
        -- Outputs
        DDR_READY                      : out std_logic;
        EXT_RESET_OUT                  : out std_logic;
        FDDR_CORE_RESET_N              : out std_logic;
        INIT_DONE                      : out std_logic;
        M3_RESET_N                     : out std_logic;
        MDDR_DDR_AXI_S_CORE_RESET_N    : out std_logic;
        MSS_HPMS_READY                 : out std_logic;
        RESET_N_F2M                    : out std_logic;
        SDIF0_0_CORE_RESET_N           : out std_logic;
        SDIF0_1_CORE_RESET_N           : out std_logic;
        SDIF0_CORE_RESET_N             : out std_logic;
        SDIF0_PHY_RESET_N              : out std_logic;
        SDIF1_CORE_RESET_N             : out std_logic;
        SDIF1_PHY_RESET_N              : out std_logic;
        SDIF2_CORE_RESET_N             : out std_logic;
        SDIF2_PHY_RESET_N              : out std_logic;
        SDIF3_CORE_RESET_N             : out std_logic;
        SDIF3_PHY_RESET_N              : out std_logic;
        SDIF_READY                     : out std_logic;
        SDIF_RELEASED                  : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal DDR_READY_net_0                   : std_logic;
signal EXT_RESET_OUT_net_0               : std_logic;
signal FDDR_CORE_RESET_N_net_0           : std_logic;
signal INIT_DONE_net_0                   : std_logic;
signal M3_RESET_N_net_0                  : std_logic;
signal MDDR_DDR_AXI_S_CORE_RESET_N_net_0 : std_logic;
signal MSS_HPMS_READY_net_0              : std_logic;
signal RESET_N_F2M_net_0                 : std_logic;
signal SDIF0_CORE_RESET_N_net_0          : std_logic;
signal SDIF0_PHY_RESET_N_net_0           : std_logic;
signal SDIF1_CORE_RESET_N_net_0          : std_logic;
signal SDIF1_PHY_RESET_N_net_0           : std_logic;
signal SDIF2_CORE_RESET_N_net_0          : std_logic;
signal SDIF2_PHY_RESET_N_net_0           : std_logic;
signal SDIF3_CORE_RESET_N_net_0          : std_logic;
signal SDIF3_PHY_RESET_N_net_0           : std_logic;
signal SDIF_READY_net_0                  : std_logic;
signal SDIF_RELEASED_net_0               : std_logic;
signal MSS_HPMS_READY_net_1              : std_logic;
signal DDR_READY_net_1                   : std_logic;
signal SDIF_READY_net_1                  : std_logic;
signal RESET_N_F2M_net_1                 : std_logic;
signal M3_RESET_N_net_1                  : std_logic;
signal EXT_RESET_OUT_net_1               : std_logic;
signal MDDR_DDR_AXI_S_CORE_RESET_N_net_1 : std_logic;
signal FDDR_CORE_RESET_N_net_1           : std_logic;
signal SDIF0_CORE_RESET_N_net_1          : std_logic;
signal SDIF0_PHY_RESET_N_net_1           : std_logic;
signal SDIF1_CORE_RESET_N_net_1          : std_logic;
signal SDIF1_PHY_RESET_N_net_1           : std_logic;
signal SDIF2_CORE_RESET_N_net_1          : std_logic;
signal SDIF2_PHY_RESET_N_net_1           : std_logic;
signal SDIF3_CORE_RESET_N_net_1          : std_logic;
signal SDIF3_PHY_RESET_N_net_1           : std_logic;
signal SDIF_RELEASED_net_1               : std_logic;
signal INIT_DONE_net_1                   : std_logic;
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal GND_net                           : std_logic;
signal VCC_net                           : std_logic;
signal SDIF0_PRDATA_const_net_0          : std_logic_vector(31 downto 0);
signal SDIF1_PRDATA_const_net_0          : std_logic_vector(31 downto 0);
signal SDIF2_PRDATA_const_net_0          : std_logic_vector(31 downto 0);
signal SDIF3_PRDATA_const_net_0          : std_logic_vector(31 downto 0);

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 GND_net                  <= '0';
 VCC_net                  <= '1';
 SDIF0_PRDATA_const_net_0 <= B"00000000000000000000000000000000";
 SDIF1_PRDATA_const_net_0 <= B"00000000000000000000000000000000";
 SDIF2_PRDATA_const_net_0 <= B"00000000000000000000000000000000";
 SDIF3_PRDATA_const_net_0 <= B"00000000000000000000000000000000";
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 MSS_HPMS_READY_net_1              <= MSS_HPMS_READY_net_0;
 MSS_HPMS_READY                    <= MSS_HPMS_READY_net_1;
 DDR_READY_net_1                   <= DDR_READY_net_0;
 DDR_READY                         <= DDR_READY_net_1;
 SDIF_READY_net_1                  <= SDIF_READY_net_0;
 SDIF_READY                        <= SDIF_READY_net_1;
 RESET_N_F2M_net_1                 <= RESET_N_F2M_net_0;
 RESET_N_F2M                       <= RESET_N_F2M_net_1;
 M3_RESET_N_net_1                  <= M3_RESET_N_net_0;
 M3_RESET_N                        <= M3_RESET_N_net_1;
 EXT_RESET_OUT_net_1               <= EXT_RESET_OUT_net_0;
 EXT_RESET_OUT                     <= EXT_RESET_OUT_net_1;
 MDDR_DDR_AXI_S_CORE_RESET_N_net_1 <= MDDR_DDR_AXI_S_CORE_RESET_N_net_0;
 MDDR_DDR_AXI_S_CORE_RESET_N       <= MDDR_DDR_AXI_S_CORE_RESET_N_net_1;
 FDDR_CORE_RESET_N_net_1           <= FDDR_CORE_RESET_N_net_0;
 FDDR_CORE_RESET_N                 <= FDDR_CORE_RESET_N_net_1;
 SDIF0_CORE_RESET_N_net_1          <= SDIF0_CORE_RESET_N_net_0;
 SDIF0_CORE_RESET_N                <= SDIF0_CORE_RESET_N_net_1;
 SDIF0_PHY_RESET_N_net_1           <= SDIF0_PHY_RESET_N_net_0;
 SDIF0_PHY_RESET_N                 <= SDIF0_PHY_RESET_N_net_1;
 SDIF1_CORE_RESET_N_net_1          <= SDIF1_CORE_RESET_N_net_0;
 SDIF1_CORE_RESET_N                <= SDIF1_CORE_RESET_N_net_1;
 SDIF1_PHY_RESET_N_net_1           <= SDIF1_PHY_RESET_N_net_0;
 SDIF1_PHY_RESET_N                 <= SDIF1_PHY_RESET_N_net_1;
 SDIF2_CORE_RESET_N_net_1          <= SDIF2_CORE_RESET_N_net_0;
 SDIF2_CORE_RESET_N                <= SDIF2_CORE_RESET_N_net_1;
 SDIF2_PHY_RESET_N_net_1           <= SDIF2_PHY_RESET_N_net_0;
 SDIF2_PHY_RESET_N                 <= SDIF2_PHY_RESET_N_net_1;
 SDIF3_CORE_RESET_N_net_1          <= SDIF3_CORE_RESET_N_net_0;
 SDIF3_CORE_RESET_N                <= SDIF3_CORE_RESET_N_net_1;
 SDIF3_PHY_RESET_N_net_1           <= SDIF3_PHY_RESET_N_net_0;
 SDIF3_PHY_RESET_N                 <= SDIF3_PHY_RESET_N_net_1;
 SDIF_RELEASED_net_1               <= SDIF_RELEASED_net_0;
 SDIF_RELEASED                     <= SDIF_RELEASED_net_1;
 INIT_DONE_net_1                   <= INIT_DONE_net_0;
 INIT_DONE                         <= INIT_DONE_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- CoreResetP_C0_0   -   Actel:DirectCore:CoreResetP:7.1.100
CoreResetP_C0_0 : CoreResetP
    generic map( 
        DDR_WAIT            => ( 200 ),
        DEVICE_090          => ( 0 ),
        DEVICE_VOLTAGE      => ( 2 ),
        ENABLE_SOFT_RESETS  => ( 0 ),
        EXT_RESET_CFG       => ( 3 ),
        FDDR_IN_USE         => ( 1 ),
        MDDR_IN_USE         => ( 1 ),
        SDIF0_IN_USE        => ( 1 ),
        SDIF0_PCIE          => ( 0 ),
        SDIF0_PCIE_HOTRESET => ( 1 ),
        SDIF0_PCIE_L2P2     => ( 1 ),
        SDIF1_IN_USE        => ( 1 ),
        SDIF1_PCIE          => ( 0 ),
        SDIF1_PCIE_HOTRESET => ( 1 ),
        SDIF1_PCIE_L2P2     => ( 1 ),
        SDIF2_IN_USE        => ( 1 ),
        SDIF2_PCIE          => ( 0 ),
        SDIF2_PCIE_HOTRESET => ( 1 ),
        SDIF2_PCIE_L2P2     => ( 1 ),
        SDIF3_IN_USE        => ( 1 ),
        SDIF3_PCIE          => ( 0 ),
        SDIF3_PCIE_HOTRESET => ( 1 ),
        SDIF3_PCIE_L2P2     => ( 1 )
        )
    port map( 
        -- Inputs
        RESET_N_M2F                    => RESET_N_M2F,
        FIC_2_APB_M_PRESET_N           => FIC_2_APB_M_PRESET_N,
        POWER_ON_RESET_N               => POWER_ON_RESET_N,
        FAB_RESET_N                    => FAB_RESET_N,
        RCOSC_25_50MHZ                 => RCOSC_25_50MHZ,
        CLK_BASE                       => CLK_BASE,
        CLK_LTSSM                      => GND_net, -- tied to '0' from definition
        FPLL_LOCK                      => FPLL_LOCK,
        SDIF0_SPLL_LOCK                => SDIF0_SPLL_LOCK,
        SDIF1_SPLL_LOCK                => SDIF1_SPLL_LOCK,
        SDIF2_SPLL_LOCK                => SDIF2_SPLL_LOCK,
        SDIF3_SPLL_LOCK                => SDIF3_SPLL_LOCK,
        CONFIG1_DONE                   => CONFIG1_DONE,
        CONFIG2_DONE                   => CONFIG2_DONE,
        SDIF0_PERST_N                  => VCC_net, -- tied to '1' from definition
        SDIF1_PERST_N                  => VCC_net, -- tied to '1' from definition
        SDIF2_PERST_N                  => VCC_net, -- tied to '1' from definition
        SDIF3_PERST_N                  => VCC_net, -- tied to '1' from definition
        SDIF0_PSEL                     => GND_net, -- tied to '0' from definition
        SDIF0_PWRITE                   => VCC_net, -- tied to '1' from definition
        SDIF0_PRDATA                   => SDIF0_PRDATA_const_net_0, -- tied to X"0" from definition
        SDIF1_PSEL                     => GND_net, -- tied to '0' from definition
        SDIF1_PWRITE                   => VCC_net, -- tied to '1' from definition
        SDIF1_PRDATA                   => SDIF1_PRDATA_const_net_0, -- tied to X"0" from definition
        SDIF2_PSEL                     => GND_net, -- tied to '0' from definition
        SDIF2_PWRITE                   => VCC_net, -- tied to '1' from definition
        SDIF2_PRDATA                   => SDIF2_PRDATA_const_net_0, -- tied to X"0" from definition
        SDIF3_PSEL                     => GND_net, -- tied to '0' from definition
        SDIF3_PWRITE                   => VCC_net, -- tied to '1' from definition
        SDIF3_PRDATA                   => SDIF3_PRDATA_const_net_0, -- tied to X"0" from definition
        SOFT_EXT_RESET_OUT             => GND_net, -- tied to '0' from definition
        SOFT_RESET_F2M                 => GND_net, -- tied to '0' from definition
        SOFT_M3_RESET                  => GND_net, -- tied to '0' from definition
        SOFT_MDDR_DDR_AXI_S_CORE_RESET => GND_net, -- tied to '0' from definition
        SOFT_FDDR_CORE_RESET           => GND_net, -- tied to '0' from definition
        SOFT_SDIF0_PHY_RESET           => GND_net, -- tied to '0' from definition
        SOFT_SDIF0_CORE_RESET          => GND_net, -- tied to '0' from definition
        SOFT_SDIF0_0_CORE_RESET        => GND_net, -- tied to '0' from definition
        SOFT_SDIF0_1_CORE_RESET        => GND_net, -- tied to '0' from definition
        SOFT_SDIF1_PHY_RESET           => GND_net, -- tied to '0' from definition
        SOFT_SDIF1_CORE_RESET          => GND_net, -- tied to '0' from definition
        SOFT_SDIF2_PHY_RESET           => GND_net, -- tied to '0' from definition
        SOFT_SDIF2_CORE_RESET          => GND_net, -- tied to '0' from definition
        SOFT_SDIF3_PHY_RESET           => GND_net, -- tied to '0' from definition
        SOFT_SDIF3_CORE_RESET          => GND_net, -- tied to '0' from definition
        -- Outputs
        MSS_HPMS_READY                 => MSS_HPMS_READY_net_0,
        DDR_READY                      => DDR_READY_net_0,
        SDIF_READY                     => SDIF_READY_net_0,
        RESET_N_F2M                    => RESET_N_F2M_net_0,
        M3_RESET_N                     => M3_RESET_N_net_0,
        EXT_RESET_OUT                  => EXT_RESET_OUT_net_0,
        MDDR_DDR_AXI_S_CORE_RESET_N    => MDDR_DDR_AXI_S_CORE_RESET_N_net_0,
        FDDR_CORE_RESET_N              => FDDR_CORE_RESET_N_net_0,
        SDIF0_CORE_RESET_N             => SDIF0_CORE_RESET_N_net_0,
        SDIF0_0_CORE_RESET_N           => OPEN,
        SDIF0_1_CORE_RESET_N           => OPEN,
        SDIF0_PHY_RESET_N              => SDIF0_PHY_RESET_N_net_0,
        SDIF1_CORE_RESET_N             => SDIF1_CORE_RESET_N_net_0,
        SDIF1_PHY_RESET_N              => SDIF1_PHY_RESET_N_net_0,
        SDIF2_CORE_RESET_N             => SDIF2_CORE_RESET_N_net_0,
        SDIF2_PHY_RESET_N              => SDIF2_PHY_RESET_N_net_0,
        SDIF3_CORE_RESET_N             => SDIF3_CORE_RESET_N_net_0,
        SDIF3_PHY_RESET_N              => SDIF3_PHY_RESET_N_net_0,
        SDIF_RELEASED                  => SDIF_RELEASED_net_0,
        INIT_DONE                      => INIT_DONE_net_0 
        );

end RTL;
