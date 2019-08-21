----------------------------------------------------------------------
-- Created by SmartDesign Mon Aug  5 15:33:55 2019
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
-- top entity declaration
----------------------------------------------------------------------
entity top is
    -- Port list
    port(
        -- Inputs
        DEVRST_N     : in  std_logic;
        TCK          : in  std_logic;
        TDI          : in  std_logic;
        TMS          : in  std_logic;
        TRSTB        : in  std_logic;
        USER_BUTTON1 : in  std_logic;
        USER_BUTTON2 : in  std_logic;
        -- Outputs
        LED1_GREEN   : out std_logic;
        LED1_RED     : out std_logic;
        LED2_GREEN   : out std_logic;
        LED2_RED     : out std_logic;
        TDO          : out std_logic
        );
end top;
----------------------------------------------------------------------
-- top architecture body
----------------------------------------------------------------------
architecture RTL of top is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- AND2
component AND2
    -- Port list
    port(
        -- Inputs
        A : in  std_logic;
        B : in  std_logic;
        -- Outputs
        Y : out std_logic
        );
end component;
-- CoreAHBLite_C0
component CoreAHBLite_C0
    -- Port list
    port(
        -- Inputs
        HADDR_M0     : in  std_logic_vector(31 downto 0);
        HBURST_M0    : in  std_logic_vector(2 downto 0);
        HCLK         : in  std_logic;
        HMASTLOCK_M0 : in  std_logic;
        HPROT_M0     : in  std_logic_vector(3 downto 0);
        HRDATA_S8    : in  std_logic_vector(31 downto 0);
        HREADYOUT_S8 : in  std_logic;
        HRESETN      : in  std_logic;
        HRESP_S8     : in  std_logic_vector(1 downto 0);
        HSIZE_M0     : in  std_logic_vector(2 downto 0);
        HTRANS_M0    : in  std_logic_vector(1 downto 0);
        HWDATA_M0    : in  std_logic_vector(31 downto 0);
        HWRITE_M0    : in  std_logic;
        REMAP_M0     : in  std_logic;
        -- Outputs
        HADDR_S8     : out std_logic_vector(31 downto 0);
        HBURST_S8    : out std_logic_vector(2 downto 0);
        HMASTLOCK_S8 : out std_logic;
        HPROT_S8     : out std_logic_vector(3 downto 0);
        HRDATA_M0    : out std_logic_vector(31 downto 0);
        HREADY_M0    : out std_logic;
        HREADY_S8    : out std_logic;
        HRESP_M0     : out std_logic_vector(1 downto 0);
        HSEL_S8      : out std_logic;
        HSIZE_S8     : out std_logic_vector(2 downto 0);
        HTRANS_S8    : out std_logic_vector(1 downto 0);
        HWDATA_S8    : out std_logic_vector(31 downto 0);
        HWRITE_S8    : out std_logic
        );
end component;
-- CoreAHBLite_C1
component CoreAHBLite_C1
    -- Port list
    port(
        -- Inputs
        HADDR_M0     : in  std_logic_vector(31 downto 0);
        HBURST_M0    : in  std_logic_vector(2 downto 0);
        HCLK         : in  std_logic;
        HMASTLOCK_M0 : in  std_logic;
        HPROT_M0     : in  std_logic_vector(3 downto 0);
        HRDATA_S7    : in  std_logic_vector(31 downto 0);
        HREADYOUT_S7 : in  std_logic;
        HRESETN      : in  std_logic;
        HRESP_S7     : in  std_logic_vector(1 downto 0);
        HSIZE_M0     : in  std_logic_vector(2 downto 0);
        HTRANS_M0    : in  std_logic_vector(1 downto 0);
        HWDATA_M0    : in  std_logic_vector(31 downto 0);
        HWRITE_M0    : in  std_logic;
        REMAP_M0     : in  std_logic;
        -- Outputs
        HADDR_S7     : out std_logic_vector(31 downto 0);
        HBURST_S7    : out std_logic_vector(2 downto 0);
        HMASTLOCK_S7 : out std_logic;
        HPROT_S7     : out std_logic_vector(3 downto 0);
        HRDATA_M0    : out std_logic_vector(31 downto 0);
        HREADY_M0    : out std_logic;
        HREADY_S7    : out std_logic;
        HRESP_M0     : out std_logic_vector(1 downto 0);
        HSEL_S7      : out std_logic;
        HSIZE_S7     : out std_logic_vector(2 downto 0);
        HTRANS_S7    : out std_logic_vector(1 downto 0);
        HWDATA_S7    : out std_logic_vector(31 downto 0);
        HWRITE_S7    : out std_logic
        );
end component;
-- COREAHBLSRAM_C0
component COREAHBLSRAM_C0
    -- Port list
    port(
        -- Inputs
        HADDR     : in  std_logic_vector(31 downto 0);
        HBURST    : in  std_logic_vector(2 downto 0);
        HCLK      : in  std_logic;
        HREADYIN  : in  std_logic;
        HRESETN   : in  std_logic;
        HSEL      : in  std_logic;
        HSIZE     : in  std_logic_vector(2 downto 0);
        HTRANS    : in  std_logic_vector(1 downto 0);
        HWDATA    : in  std_logic_vector(31 downto 0);
        HWRITE    : in  std_logic;
        -- Outputs
        HRDATA    : out std_logic_vector(31 downto 0);
        HREADYOUT : out std_logic;
        HRESP     : out std_logic_vector(1 downto 0)
        );
end component;
-- COREAHBTOAPB3_C1
component COREAHBTOAPB3_C1
    -- Port list
    port(
        -- Inputs
        HADDR     : in  std_logic_vector(31 downto 0);
        HCLK      : in  std_logic;
        HREADY    : in  std_logic;
        HRESETN   : in  std_logic;
        HSEL      : in  std_logic;
        HTRANS    : in  std_logic_vector(1 downto 0);
        HWDATA    : in  std_logic_vector(31 downto 0);
        HWRITE    : in  std_logic;
        PRDATA    : in  std_logic_vector(31 downto 0);
        PREADY    : in  std_logic;
        PSLVERR   : in  std_logic;
        -- Outputs
        HRDATA    : out std_logic_vector(31 downto 0);
        HREADYOUT : out std_logic;
        HRESP     : out std_logic_vector(1 downto 0);
        PADDR     : out std_logic_vector(31 downto 0);
        PENABLE   : out std_logic;
        PSEL      : out std_logic;
        PWDATA    : out std_logic_vector(31 downto 0);
        PWRITE    : out std_logic
        );
end component;
-- CoreAPB3_C0
component CoreAPB3_C0
    -- Port list
    port(
        -- Inputs
        PADDR     : in  std_logic_vector(31 downto 0);
        PENABLE   : in  std_logic;
        PRDATAS1  : in  std_logic_vector(31 downto 0);
        PRDATAS2  : in  std_logic_vector(31 downto 0);
        PREADYS1  : in  std_logic;
        PREADYS2  : in  std_logic;
        PSEL      : in  std_logic;
        PSLVERRS1 : in  std_logic;
        PSLVERRS2 : in  std_logic;
        PWDATA    : in  std_logic_vector(31 downto 0);
        PWRITE    : in  std_logic;
        -- Outputs
        PADDRS    : out std_logic_vector(31 downto 0);
        PENABLES  : out std_logic;
        PRDATA    : out std_logic_vector(31 downto 0);
        PREADY    : out std_logic;
        PSELS1    : out std_logic;
        PSELS2    : out std_logic;
        PSLVERR   : out std_logic;
        PWDATAS   : out std_logic_vector(31 downto 0);
        PWRITES   : out std_logic
        );
end component;
-- CoreGPIO_C0
component CoreGPIO_C0
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
end component;
-- CoreGPIO_OUT
component CoreGPIO_OUT
    -- Port list
    port(
        -- Inputs
        GPIO_IN  : in  std_logic_vector(3 downto 0);
        PADDR    : in  std_logic_vector(7 downto 0);
        PCLK     : in  std_logic;
        PENABLE  : in  std_logic;
        PRESETN  : in  std_logic;
        PSEL     : in  std_logic;
        PWDATA   : in  std_logic_vector(31 downto 0);
        PWRITE   : in  std_logic;
        -- Outputs
        GPIO_OUT : out std_logic_vector(3 downto 0);
        INT      : out std_logic_vector(3 downto 0);
        PRDATA   : out std_logic_vector(31 downto 0);
        PREADY   : out std_logic;
        PSLVERR  : out std_logic
        );
end component;
-- COREJTAGDEBUG_C0
component COREJTAGDEBUG_C0
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
end component;
-- FCCC_C0
component FCCC_C0
    -- Port list
    port(
        -- Inputs
        RCOSC_25_50MHZ : in  std_logic;
        -- Outputs
        GL0            : out std_logic;
        LOCK           : out std_logic
        );
end component;
-- MIV_RV32IMA_L1_AHB_C0
component MIV_RV32IMA_L1_AHB_C0
    -- Port list
    port(
        -- Inputs
        AHB_MST_MEM_HRDATA  : in  std_logic_vector(31 downto 0);
        AHB_MST_MEM_HREADY  : in  std_logic;
        AHB_MST_MEM_HRESP   : in  std_logic;
        AHB_MST_MMIO_HRDATA : in  std_logic_vector(31 downto 0);
        AHB_MST_MMIO_HREADY : in  std_logic;
        AHB_MST_MMIO_HRESP  : in  std_logic;
        CLK                 : in  std_logic;
        IRQ                 : in  std_logic_vector(30 downto 0);
        RESETN              : in  std_logic;
        TCK                 : in  std_logic;
        TDI                 : in  std_logic;
        TMS                 : in  std_logic;
        TRST                : in  std_logic;
        -- Outputs
        AHB_MST_MEM_HADDR   : out std_logic_vector(31 downto 0);
        AHB_MST_MEM_HBURST  : out std_logic_vector(2 downto 0);
        AHB_MST_MEM_HLOCK   : out std_logic;
        AHB_MST_MEM_HPROT   : out std_logic_vector(3 downto 0);
        AHB_MST_MEM_HSEL    : out std_logic;
        AHB_MST_MEM_HSIZE   : out std_logic_vector(2 downto 0);
        AHB_MST_MEM_HTRANS  : out std_logic_vector(1 downto 0);
        AHB_MST_MEM_HWDATA  : out std_logic_vector(31 downto 0);
        AHB_MST_MEM_HWRITE  : out std_logic;
        AHB_MST_MMIO_HADDR  : out std_logic_vector(30 downto 0);
        AHB_MST_MMIO_HBURST : out std_logic_vector(2 downto 0);
        AHB_MST_MMIO_HLOCK  : out std_logic;
        AHB_MST_MMIO_HPROT  : out std_logic_vector(3 downto 0);
        AHB_MST_MMIO_HSEL   : out std_logic;
        AHB_MST_MMIO_HSIZE  : out std_logic_vector(2 downto 0);
        AHB_MST_MMIO_HTRANS : out std_logic_vector(1 downto 0);
        AHB_MST_MMIO_HWDATA : out std_logic_vector(31 downto 0);
        AHB_MST_MMIO_HWRITE : out std_logic;
        DRV_TDO             : out std_logic;
        EXT_RESETN          : out std_logic;
        TDO                 : out std_logic
        );
end component;
-- OSC_C0
component OSC_C0
    -- Port list
    port(
        -- Outputs
        RCOSC_25_50MHZ_CCC : out std_logic
        );
end component;
-- SYSRESET
component SYSRESET
    -- Port list
    port(
        -- Inputs
        DEVRST_N         : in  std_logic;
        -- Outputs
        POWER_ON_RESET_N : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal AND2_0_Y_0                                         : std_logic;
signal CoreAHBLite_C0_0_AHBmslave8_HADDR                  : std_logic_vector(31 downto 0);
signal CoreAHBLite_C0_0_AHBmslave8_HBURST                 : std_logic_vector(2 downto 0);
signal CoreAHBLite_C0_0_AHBmslave8_HMASTLOCK              : std_logic;
signal CoreAHBLite_C0_0_AHBmslave8_HPROT                  : std_logic_vector(3 downto 0);
signal CoreAHBLite_C0_0_AHBmslave8_HRDATA                 : std_logic_vector(31 downto 0);
signal CoreAHBLite_C0_0_AHBmslave8_HREADY                 : std_logic;
signal CoreAHBLite_C0_0_AHBmslave8_HREADYOUT              : std_logic;
signal CoreAHBLite_C0_0_AHBmslave8_HRESP                  : std_logic_vector(1 downto 0);
signal CoreAHBLite_C0_0_AHBmslave8_HSELx                  : std_logic;
signal CoreAHBLite_C0_0_AHBmslave8_HSIZE                  : std_logic_vector(2 downto 0);
signal CoreAHBLite_C0_0_AHBmslave8_HTRANS                 : std_logic_vector(1 downto 0);
signal CoreAHBLite_C0_0_AHBmslave8_HWDATA                 : std_logic_vector(31 downto 0);
signal CoreAHBLite_C0_0_AHBmslave8_HWRITE                 : std_logic;
signal CoreAHBLite_C1_0_AHBmslave7_HADDR                  : std_logic_vector(31 downto 0);
signal CoreAHBLite_C1_0_AHBmslave7_HBURST                 : std_logic_vector(2 downto 0);
signal CoreAHBLite_C1_0_AHBmslave7_HMASTLOCK              : std_logic;
signal CoreAHBLite_C1_0_AHBmslave7_HPROT                  : std_logic_vector(3 downto 0);
signal CoreAHBLite_C1_0_AHBmslave7_HRDATA                 : std_logic_vector(31 downto 0);
signal CoreAHBLite_C1_0_AHBmslave7_HREADY                 : std_logic;
signal CoreAHBLite_C1_0_AHBmslave7_HREADYOUT              : std_logic;
signal CoreAHBLite_C1_0_AHBmslave7_HRESP                  : std_logic_vector(1 downto 0);
signal CoreAHBLite_C1_0_AHBmslave7_HSELx                  : std_logic;
signal CoreAHBLite_C1_0_AHBmslave7_HSIZE                  : std_logic_vector(2 downto 0);
signal CoreAHBLite_C1_0_AHBmslave7_HTRANS                 : std_logic_vector(1 downto 0);
signal CoreAHBLite_C1_0_AHBmslave7_HWDATA                 : std_logic_vector(31 downto 0);
signal CoreAHBLite_C1_0_AHBmslave7_HWRITE                 : std_logic;
signal COREAHBTOAPB3_C1_0_APBmaster_PADDR                 : std_logic_vector(31 downto 0);
signal COREAHBTOAPB3_C1_0_APBmaster_PENABLE               : std_logic;
signal COREAHBTOAPB3_C1_0_APBmaster_PRDATA                : std_logic_vector(31 downto 0);
signal COREAHBTOAPB3_C1_0_APBmaster_PREADY                : std_logic;
signal COREAHBTOAPB3_C1_0_APBmaster_PSELx                 : std_logic;
signal COREAHBTOAPB3_C1_0_APBmaster_PSLVERR               : std_logic;
signal COREAHBTOAPB3_C1_0_APBmaster_PWDATA                : std_logic_vector(31 downto 0);
signal COREAHBTOAPB3_C1_0_APBmaster_PWRITE                : std_logic;
signal CoreAPB3_C0_0_APBmslave1_PENABLE                   : std_logic;
signal CoreAPB3_C0_0_APBmslave1_PRDATA                    : std_logic_vector(31 downto 0);
signal CoreAPB3_C0_0_APBmslave1_PREADY                    : std_logic;
signal CoreAPB3_C0_0_APBmslave1_PSELx                     : std_logic;
signal CoreAPB3_C0_0_APBmslave1_PSLVERR                   : std_logic;
signal CoreAPB3_C0_0_APBmslave1_PWDATA                    : std_logic_vector(31 downto 0);
signal CoreAPB3_C0_0_APBmslave1_PWRITE                    : std_logic;
signal CoreAPB3_C0_0_APBmslave2_PRDATA                    : std_logic_vector(31 downto 0);
signal CoreAPB3_C0_0_APBmslave2_PREADY                    : std_logic;
signal CoreAPB3_C0_0_APBmslave2_PSELx                     : std_logic;
signal CoreAPB3_C0_0_APBmslave2_PSLVERR                   : std_logic;
signal COREJTAGDEBUG_C0_0_TGT_TCK_0                       : std_logic;
signal COREJTAGDEBUG_C0_0_TGT_TDI_0                       : std_logic;
signal COREJTAGDEBUG_C0_0_TGT_TMS_0                       : std_logic;
signal COREJTAGDEBUG_C0_0_TGT_TRSTB_0                     : std_logic;
signal FCCC_C0_0_GL0                                      : std_logic;
signal FCCC_C0_0_LOCK                                     : std_logic;
signal LED1_GREEN_net_0                                   : std_logic_vector(0 to 0);
signal LED1_RED_net_0                                     : std_logic_vector(1 to 1);
signal LED2_GREEN_net_0                                   : std_logic_vector(2 to 2);
signal LED2_RED_net_0                                     : std_logic_vector(3 to 3);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HADDR          : std_logic_vector(31 downto 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HBURST         : std_logic_vector(2 downto 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HLOCK          : std_logic;
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HPROT          : std_logic_vector(3 downto 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HRDATA         : std_logic_vector(31 downto 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HREADY         : std_logic;
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HSIZE          : std_logic_vector(2 downto 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HTRANS         : std_logic_vector(1 downto 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HWDATA         : std_logic_vector(31 downto 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HWRITE         : std_logic;
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HBURST        : std_logic_vector(2 downto 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HLOCK         : std_logic;
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HPROT         : std_logic_vector(3 downto 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HRDATA        : std_logic_vector(31 downto 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HREADY        : std_logic;
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HSIZE         : std_logic_vector(2 downto 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HTRANS        : std_logic_vector(1 downto 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HWDATA        : std_logic_vector(31 downto 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HWRITE        : std_logic;
signal MIV_RV32IMA_L1_AHB_C0_0_TDO                        : std_logic;
signal OSC_C0_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : std_logic;
signal SYSRESET_0_POWER_ON_RESET_N                        : std_logic;
signal TDO_net_0                                          : std_logic;
signal TDO_net_1                                          : std_logic;
signal LED1_GREEN_net_1                                   : std_logic;
signal LED2_RED_net_1                                     : std_logic;
signal LED2_GREEN_net_1                                   : std_logic;
signal LED1_RED_net_1                                     : std_logic;
signal GPIO_OUT_slice_0                                   : std_logic_vector(1 downto 0);
signal GPIO_IN_net_0                                      : std_logic_vector(1 downto 0);
signal GPIO_OUT_net_0                                     : std_logic_vector(1 downto 0);
signal GPIO_OUT_net_1                                     : std_logic_vector(3 downto 0);
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal GND_net                                            : std_logic;
signal GPIO_IN_const_net_0                                : std_logic_vector(3 downto 0);
signal IRQ_const_net_0                                    : std_logic_vector(30 downto 0);
----------------------------------------------------------------------
-- Bus Interface Nets Declarations - Unequal Pin Widths
----------------------------------------------------------------------
signal CoreAPB3_C0_0_APBmslave1_PADDR                     : std_logic_vector(31 downto 0);
signal CoreAPB3_C0_0_APBmslave1_PADDR_0_7to0              : std_logic_vector(7 downto 0);
signal CoreAPB3_C0_0_APBmslave1_PADDR_0                   : std_logic_vector(7 downto 0);
signal CoreAPB3_C0_0_APBmslave1_PADDR_1_7to0              : std_logic_vector(7 downto 0);
signal CoreAPB3_C0_0_APBmslave1_PADDR_1                   : std_logic_vector(7 downto 0);

signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HRESP_0_0to0   : std_logic_vector(0 to 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HRESP_0        : std_logic;
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HRESP          : std_logic_vector(1 downto 0);

signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HADDR         : std_logic_vector(30 downto 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HADDR_0_31to31: std_logic_vector(31 to 31);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HADDR_0_30to0 : std_logic_vector(30 downto 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HADDR_0       : std_logic_vector(31 downto 0);

signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HRESP_0_0to0  : std_logic_vector(0 to 0);
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HRESP_0       : std_logic;
signal MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HRESP         : std_logic_vector(1 downto 0);


begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 GND_net             <= '0';
 GPIO_IN_const_net_0 <= B"0000";
 IRQ_const_net_0     <= B"0000000000000000000000000000000";
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 TDO_net_1        <= TDO_net_0;
 TDO              <= TDO_net_1;
 LED1_GREEN_net_1 <= LED1_GREEN_net_0(0);
 LED1_GREEN       <= LED1_GREEN_net_1;
 LED2_RED_net_1   <= LED2_RED_net_0(3);
 LED2_RED         <= LED2_RED_net_1;
 LED2_GREEN_net_1 <= LED2_GREEN_net_0(2);
 LED2_GREEN       <= LED2_GREEN_net_1;
 LED1_RED_net_1   <= LED1_RED_net_0(1);
 LED1_RED         <= LED1_RED_net_1;
----------------------------------------------------------------------
-- Slices assignments
----------------------------------------------------------------------
 LED1_GREEN_net_0(0) <= GPIO_OUT_net_1(0);
 LED1_RED_net_0(1)   <= GPIO_OUT_net_1(1);
 LED2_GREEN_net_0(2) <= GPIO_OUT_net_1(2);
 LED2_RED_net_0(3)   <= GPIO_OUT_net_1(3);
 GPIO_OUT_slice_0    <= GPIO_OUT_net_0(1 downto 0);
----------------------------------------------------------------------
-- Concatenation assignments
----------------------------------------------------------------------
 GPIO_IN_net_0 <= ( USER_BUTTON2 & USER_BUTTON1 );
----------------------------------------------------------------------
-- Bus Interface Nets Assignments - Unequal Pin Widths
----------------------------------------------------------------------
 CoreAPB3_C0_0_APBmslave1_PADDR_0_7to0(7 downto 0) <= CoreAPB3_C0_0_APBmslave1_PADDR(7 downto 0);
 CoreAPB3_C0_0_APBmslave1_PADDR_0 <= ( CoreAPB3_C0_0_APBmslave1_PADDR_0_7to0(7 downto 0) );
 CoreAPB3_C0_0_APBmslave1_PADDR_1_7to0(7 downto 0) <= CoreAPB3_C0_0_APBmslave1_PADDR(7 downto 0);
 CoreAPB3_C0_0_APBmslave1_PADDR_1 <= ( CoreAPB3_C0_0_APBmslave1_PADDR_1_7to0(7 downto 0) );

 MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HRESP_0_0to0(0) <= MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HRESP(0);
 MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HRESP_0 <= ( MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HRESP_0_0to0(0) );

 MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HADDR_0_31to31(31) <= '0';
 MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HADDR_0_30to0(30 downto 0) <= MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HADDR(30 downto 0);
 MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HADDR_0 <= ( MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HADDR_0_31to31(31) & MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HADDR_0_30to0(30 downto 0) );

 MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HRESP_0_0to0(0) <= MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HRESP(0);
 MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HRESP_0 <= ( MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HRESP_0_0to0(0) );

----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- AND2_0
AND2_0 : AND2
    port map( 
        -- Inputs
        A => FCCC_C0_0_LOCK,
        B => SYSRESET_0_POWER_ON_RESET_N,
        -- Outputs
        Y => AND2_0_Y_0 
        );
-- CoreAHBLite_C0_0
CoreAHBLite_C0_0 : CoreAHBLite_C0
    port map( 
        -- Inputs
        HCLK         => FCCC_C0_0_GL0,
        HRESETN      => AND2_0_Y_0,
        REMAP_M0     => GND_net,
        HADDR_M0     => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HADDR,
        HTRANS_M0    => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HTRANS,
        HWRITE_M0    => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HWRITE,
        HSIZE_M0     => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HSIZE,
        HBURST_M0    => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HBURST,
        HPROT_M0     => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HPROT,
        HWDATA_M0    => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HWDATA,
        HMASTLOCK_M0 => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HLOCK,
        HRDATA_S8    => CoreAHBLite_C0_0_AHBmslave8_HRDATA,
        HREADYOUT_S8 => CoreAHBLite_C0_0_AHBmslave8_HREADYOUT,
        HRESP_S8     => CoreAHBLite_C0_0_AHBmslave8_HRESP,
        -- Outputs
        HRDATA_M0    => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HRDATA,
        HREADY_M0    => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HREADY,
        HRESP_M0     => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HRESP,
        HADDR_S8     => CoreAHBLite_C0_0_AHBmslave8_HADDR,
        HTRANS_S8    => CoreAHBLite_C0_0_AHBmslave8_HTRANS,
        HWRITE_S8    => CoreAHBLite_C0_0_AHBmslave8_HWRITE,
        HSIZE_S8     => CoreAHBLite_C0_0_AHBmslave8_HSIZE,
        HWDATA_S8    => CoreAHBLite_C0_0_AHBmslave8_HWDATA,
        HSEL_S8      => CoreAHBLite_C0_0_AHBmslave8_HSELx,
        HREADY_S8    => CoreAHBLite_C0_0_AHBmslave8_HREADY,
        HMASTLOCK_S8 => CoreAHBLite_C0_0_AHBmslave8_HMASTLOCK,
        HBURST_S8    => CoreAHBLite_C0_0_AHBmslave8_HBURST,
        HPROT_S8     => CoreAHBLite_C0_0_AHBmslave8_HPROT 
        );
-- CoreAHBLite_C1_0
CoreAHBLite_C1_0 : CoreAHBLite_C1
    port map( 
        -- Inputs
        HCLK         => FCCC_C0_0_GL0,
        HRESETN      => AND2_0_Y_0,
        REMAP_M0     => GND_net,
        HADDR_M0     => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HADDR_0,
        HTRANS_M0    => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HTRANS,
        HWRITE_M0    => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HWRITE,
        HSIZE_M0     => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HSIZE,
        HBURST_M0    => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HBURST,
        HPROT_M0     => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HPROT,
        HWDATA_M0    => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HWDATA,
        HMASTLOCK_M0 => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HLOCK,
        HRDATA_S7    => CoreAHBLite_C1_0_AHBmslave7_HRDATA,
        HREADYOUT_S7 => CoreAHBLite_C1_0_AHBmslave7_HREADYOUT,
        HRESP_S7     => CoreAHBLite_C1_0_AHBmslave7_HRESP,
        -- Outputs
        HRDATA_M0    => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HRDATA,
        HREADY_M0    => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HREADY,
        HRESP_M0     => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HRESP,
        HADDR_S7     => CoreAHBLite_C1_0_AHBmslave7_HADDR,
        HTRANS_S7    => CoreAHBLite_C1_0_AHBmslave7_HTRANS,
        HWRITE_S7    => CoreAHBLite_C1_0_AHBmslave7_HWRITE,
        HSIZE_S7     => CoreAHBLite_C1_0_AHBmslave7_HSIZE,
        HWDATA_S7    => CoreAHBLite_C1_0_AHBmslave7_HWDATA,
        HSEL_S7      => CoreAHBLite_C1_0_AHBmslave7_HSELx,
        HREADY_S7    => CoreAHBLite_C1_0_AHBmslave7_HREADY,
        HMASTLOCK_S7 => CoreAHBLite_C1_0_AHBmslave7_HMASTLOCK,
        HBURST_S7    => CoreAHBLite_C1_0_AHBmslave7_HBURST,
        HPROT_S7     => CoreAHBLite_C1_0_AHBmslave7_HPROT 
        );
-- COREAHBLSRAM_C0_0
COREAHBLSRAM_C0_0 : COREAHBLSRAM_C0
    port map( 
        -- Inputs
        HCLK      => FCCC_C0_0_GL0,
        HRESETN   => AND2_0_Y_0,
        HADDR     => CoreAHBLite_C0_0_AHBmslave8_HADDR,
        HTRANS    => CoreAHBLite_C0_0_AHBmslave8_HTRANS,
        HWRITE    => CoreAHBLite_C0_0_AHBmslave8_HWRITE,
        HSIZE     => CoreAHBLite_C0_0_AHBmslave8_HSIZE,
        HBURST    => CoreAHBLite_C0_0_AHBmslave8_HBURST,
        HWDATA    => CoreAHBLite_C0_0_AHBmslave8_HWDATA,
        HSEL      => CoreAHBLite_C0_0_AHBmslave8_HSELx,
        HREADYIN  => CoreAHBLite_C0_0_AHBmslave8_HREADY,
        -- Outputs
        HRDATA    => CoreAHBLite_C0_0_AHBmslave8_HRDATA,
        HREADYOUT => CoreAHBLite_C0_0_AHBmslave8_HREADYOUT,
        HRESP     => CoreAHBLite_C0_0_AHBmslave8_HRESP 
        );
-- COREAHBTOAPB3_C1_0
COREAHBTOAPB3_C1_0 : COREAHBTOAPB3_C1
    port map( 
        -- Inputs
        HCLK      => FCCC_C0_0_GL0,
        HRESETN   => AND2_0_Y_0,
        HWRITE    => CoreAHBLite_C1_0_AHBmslave7_HWRITE,
        HSEL      => CoreAHBLite_C1_0_AHBmslave7_HSELx,
        HREADY    => CoreAHBLite_C1_0_AHBmslave7_HREADY,
        PREADY    => COREAHBTOAPB3_C1_0_APBmaster_PREADY,
        PSLVERR   => COREAHBTOAPB3_C1_0_APBmaster_PSLVERR,
        HADDR     => CoreAHBLite_C1_0_AHBmslave7_HADDR,
        HTRANS    => CoreAHBLite_C1_0_AHBmslave7_HTRANS,
        HWDATA    => CoreAHBLite_C1_0_AHBmslave7_HWDATA,
        PRDATA    => COREAHBTOAPB3_C1_0_APBmaster_PRDATA,
        -- Outputs
        HREADYOUT => CoreAHBLite_C1_0_AHBmslave7_HREADYOUT,
        PSEL      => COREAHBTOAPB3_C1_0_APBmaster_PSELx,
        PENABLE   => COREAHBTOAPB3_C1_0_APBmaster_PENABLE,
        PWRITE    => COREAHBTOAPB3_C1_0_APBmaster_PWRITE,
        HRDATA    => CoreAHBLite_C1_0_AHBmslave7_HRDATA,
        HRESP     => CoreAHBLite_C1_0_AHBmslave7_HRESP,
        PADDR     => COREAHBTOAPB3_C1_0_APBmaster_PADDR,
        PWDATA    => COREAHBTOAPB3_C1_0_APBmaster_PWDATA 
        );
-- CoreAPB3_C0_0
CoreAPB3_C0_0 : CoreAPB3_C0
    port map( 
        -- Inputs
        PSEL      => COREAHBTOAPB3_C1_0_APBmaster_PSELx,
        PENABLE   => COREAHBTOAPB3_C1_0_APBmaster_PENABLE,
        PWRITE    => COREAHBTOAPB3_C1_0_APBmaster_PWRITE,
        PREADYS1  => CoreAPB3_C0_0_APBmslave1_PREADY,
        PSLVERRS1 => CoreAPB3_C0_0_APBmslave1_PSLVERR,
        PREADYS2  => CoreAPB3_C0_0_APBmslave2_PREADY,
        PSLVERRS2 => CoreAPB3_C0_0_APBmslave2_PSLVERR,
        PADDR     => COREAHBTOAPB3_C1_0_APBmaster_PADDR,
        PWDATA    => COREAHBTOAPB3_C1_0_APBmaster_PWDATA,
        PRDATAS1  => CoreAPB3_C0_0_APBmslave1_PRDATA,
        PRDATAS2  => CoreAPB3_C0_0_APBmslave2_PRDATA,
        -- Outputs
        PREADY    => COREAHBTOAPB3_C1_0_APBmaster_PREADY,
        PSLVERR   => COREAHBTOAPB3_C1_0_APBmaster_PSLVERR,
        PSELS1    => CoreAPB3_C0_0_APBmslave1_PSELx,
        PENABLES  => CoreAPB3_C0_0_APBmslave1_PENABLE,
        PWRITES   => CoreAPB3_C0_0_APBmslave1_PWRITE,
        PSELS2    => CoreAPB3_C0_0_APBmslave2_PSELx,
        PRDATA    => COREAHBTOAPB3_C1_0_APBmaster_PRDATA,
        PADDRS    => CoreAPB3_C0_0_APBmslave1_PADDR,
        PWDATAS   => CoreAPB3_C0_0_APBmslave1_PWDATA 
        );
-- CoreGPIO_IN
CoreGPIO_IN : CoreGPIO_C0
    port map( 
        -- Inputs
        PRESETN  => AND2_0_Y_0,
        PCLK     => FCCC_C0_0_GL0,
        PSEL     => CoreAPB3_C0_0_APBmslave1_PSELx,
        PENABLE  => CoreAPB3_C0_0_APBmslave1_PENABLE,
        PWRITE   => CoreAPB3_C0_0_APBmslave1_PWRITE,
        PADDR    => CoreAPB3_C0_0_APBmslave1_PADDR_0,
        PWDATA   => CoreAPB3_C0_0_APBmslave1_PWDATA,
        GPIO_IN  => GPIO_IN_net_0,
        -- Outputs
        PREADY   => CoreAPB3_C0_0_APBmslave1_PREADY,
        PSLVERR  => CoreAPB3_C0_0_APBmslave1_PSLVERR,
        PRDATA   => CoreAPB3_C0_0_APBmslave1_PRDATA,
        INT      => OPEN,
        GPIO_OUT => GPIO_OUT_net_0 
        );
-- CoreGPIO_OUT_inst_0
CoreGPIO_OUT_inst_0 : CoreGPIO_OUT
    port map( 
        -- Inputs
        PRESETN  => AND2_0_Y_0,
        PCLK     => FCCC_C0_0_GL0,
        PSEL     => CoreAPB3_C0_0_APBmslave2_PSELx,
        PENABLE  => CoreAPB3_C0_0_APBmslave1_PENABLE,
        PWRITE   => CoreAPB3_C0_0_APBmslave1_PWRITE,
        GPIO_IN  => GPIO_IN_const_net_0,
        PADDR    => CoreAPB3_C0_0_APBmslave1_PADDR_1,
        PWDATA   => CoreAPB3_C0_0_APBmslave1_PWDATA,
        -- Outputs
        PREADY   => CoreAPB3_C0_0_APBmslave2_PREADY,
        PSLVERR  => CoreAPB3_C0_0_APBmslave2_PSLVERR,
        INT      => OPEN,
        GPIO_OUT => GPIO_OUT_net_1,
        PRDATA   => CoreAPB3_C0_0_APBmslave2_PRDATA 
        );
-- COREJTAGDEBUG_C0_0
COREJTAGDEBUG_C0_0 : COREJTAGDEBUG_C0
    port map( 
        -- Inputs
        TRSTB       => TRSTB,
        TCK         => TCK,
        TMS         => TMS,
        TDI         => TDI,
        TGT_TDO_0   => MIV_RV32IMA_L1_AHB_C0_0_TDO,
        -- Outputs
        TDO         => TDO_net_0,
        TGT_TRSTB_0 => COREJTAGDEBUG_C0_0_TGT_TRSTB_0,
        TGT_TCK_0   => COREJTAGDEBUG_C0_0_TGT_TCK_0,
        TGT_TMS_0   => COREJTAGDEBUG_C0_0_TGT_TMS_0,
        TGT_TDI_0   => COREJTAGDEBUG_C0_0_TGT_TDI_0 
        );
-- FCCC_C0_0
FCCC_C0_0 : FCCC_C0
    port map( 
        -- Inputs
        RCOSC_25_50MHZ => OSC_C0_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC,
        -- Outputs
        GL0            => FCCC_C0_0_GL0,
        LOCK           => FCCC_C0_0_LOCK 
        );
-- MIV_RV32IMA_L1_AHB_C0_0
MIV_RV32IMA_L1_AHB_C0_0 : MIV_RV32IMA_L1_AHB_C0
    port map( 
        -- Inputs
        CLK                 => FCCC_C0_0_GL0,
        RESETN              => AND2_0_Y_0,
        TDI                 => COREJTAGDEBUG_C0_0_TGT_TDI_0,
        TCK                 => COREJTAGDEBUG_C0_0_TGT_TCK_0,
        TMS                 => COREJTAGDEBUG_C0_0_TGT_TMS_0,
        TRST                => COREJTAGDEBUG_C0_0_TGT_TRSTB_0,
        AHB_MST_MEM_HREADY  => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HREADY,
        AHB_MST_MEM_HRESP   => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HRESP_0,
        AHB_MST_MMIO_HREADY => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HREADY,
        AHB_MST_MMIO_HRESP  => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HRESP_0,
        IRQ                 => IRQ_const_net_0,
        AHB_MST_MEM_HRDATA  => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HRDATA,
        AHB_MST_MMIO_HRDATA => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HRDATA,
        -- Outputs
        AHB_MST_MEM_HSEL    => OPEN,
        AHB_MST_MMIO_HSEL   => OPEN,
        TDO                 => MIV_RV32IMA_L1_AHB_C0_0_TDO,
        EXT_RESETN          => OPEN,
        DRV_TDO             => OPEN,
        AHB_MST_MEM_HWRITE  => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HWRITE,
        AHB_MST_MEM_HLOCK   => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HLOCK,
        AHB_MST_MMIO_HWRITE => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HWRITE,
        AHB_MST_MMIO_HLOCK  => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HLOCK,
        AHB_MST_MEM_HADDR   => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HADDR,
        AHB_MST_MEM_HTRANS  => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HTRANS,
        AHB_MST_MEM_HSIZE   => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HSIZE,
        AHB_MST_MEM_HBURST  => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HBURST,
        AHB_MST_MEM_HPROT   => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HPROT,
        AHB_MST_MEM_HWDATA  => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MEM_HWDATA,
        AHB_MST_MMIO_HADDR  => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HADDR,
        AHB_MST_MMIO_HTRANS => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HTRANS,
        AHB_MST_MMIO_HSIZE  => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HSIZE,
        AHB_MST_MMIO_HBURST => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HBURST,
        AHB_MST_MMIO_HPROT  => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HPROT,
        AHB_MST_MMIO_HWDATA => MIV_RV32IMA_L1_AHB_C0_0_AHB_MST_MMIO_HWDATA 
        );
-- OSC_C0_0
OSC_C0_0 : OSC_C0
    port map( 
        -- Outputs
        RCOSC_25_50MHZ_CCC => OSC_C0_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC 
        );
-- SYSRESET_0
SYSRESET_0 : SYSRESET
    port map( 
        -- Inputs
        DEVRST_N         => DEVRST_N,
        -- Outputs
        POWER_ON_RESET_N => SYSRESET_0_POWER_ON_RESET_N 
        );

end RTL;
