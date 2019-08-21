----------------------------------------------------------------------
-- Created by SmartDesign Tue Jul 16 14:57:01 2019
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
-- MIV_RV32IMA_L1_AHB_C0 entity declaration
----------------------------------------------------------------------
entity MIV_RV32IMA_L1_AHB_C0 is
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
end MIV_RV32IMA_L1_AHB_C0;
----------------------------------------------------------------------
-- MIV_RV32IMA_L1_AHB_C0 architecture body
----------------------------------------------------------------------
architecture RTL of MIV_RV32IMA_L1_AHB_C0 is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB   -   Microsemi:MiV:MIV_RV32IMA_L1_AHB:2.3.100
component MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB
    generic( 
        ECC_EN              : integer := 0 ;
        EXT_HALT            : integer := 0 ;
        RESET_VECTOR_ADDR_0 : integer := 16#0# ;
        RESET_VECTOR_ADDR_1 : integer := 16#6000# 
        );
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
        HALT_CPU            : in  std_logic;
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
        CPU_HALTED          : out std_logic;
        DCACHE_DED          : out std_logic;
        DCACHE_SEC          : out std_logic;
        DRV_TDO             : out std_logic;
        EXT_RESETN          : out std_logic;
        ICACHE_DED          : out std_logic;
        ICACHE_SEC          : out std_logic;
        TDO                 : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal AHB_MST_MEM_HADDR_net_0   : std_logic_vector(31 downto 0);
signal AHB_MST_MEM_HBURST_net_0  : std_logic_vector(2 downto 0);
signal AHB_MST_MEM_HLOCK_net_0   : std_logic;
signal AHB_MST_MEM_HPROT_net_0   : std_logic_vector(3 downto 0);
signal AHB_MST_MEM_HSIZE_net_0   : std_logic_vector(2 downto 0);
signal AHB_MST_MEM_HTRANS_net_0  : std_logic_vector(1 downto 0);
signal AHB_MST_MEM_HWDATA_net_0  : std_logic_vector(31 downto 0);
signal AHB_MST_MEM_HWRITE_net_0  : std_logic;
signal AHB_MST_MEM_HSEL_net_0    : std_logic;
signal AHB_MST_MMIO_HADDR_net_0  : std_logic_vector(30 downto 0);
signal AHB_MST_MMIO_HBURST_net_0 : std_logic_vector(2 downto 0);
signal AHB_MST_MMIO_HLOCK_net_0  : std_logic;
signal AHB_MST_MMIO_HPROT_net_0  : std_logic_vector(3 downto 0);
signal AHB_MST_MMIO_HSIZE_net_0  : std_logic_vector(2 downto 0);
signal AHB_MST_MMIO_HTRANS_net_0 : std_logic_vector(1 downto 0);
signal AHB_MST_MMIO_HWDATA_net_0 : std_logic_vector(31 downto 0);
signal AHB_MST_MMIO_HWRITE_net_0 : std_logic;
signal AHB_MST_MMIO_HSEL_net_0   : std_logic;
signal DRV_TDO_net_0             : std_logic;
signal EXT_RESETN_net_0          : std_logic;
signal TDO_net_0                 : std_logic;
signal AHB_MST_MEM_HSEL_net_1    : std_logic;
signal AHB_MST_MMIO_HSEL_net_1   : std_logic;
signal TDO_net_1                 : std_logic;
signal EXT_RESETN_net_1          : std_logic;
signal DRV_TDO_net_1             : std_logic;
signal AHB_MST_MEM_HADDR_net_1   : std_logic_vector(31 downto 0);
signal AHB_MST_MEM_HTRANS_net_1  : std_logic_vector(1 downto 0);
signal AHB_MST_MEM_HWRITE_net_1  : std_logic;
signal AHB_MST_MEM_HSIZE_net_1   : std_logic_vector(2 downto 0);
signal AHB_MST_MEM_HBURST_net_1  : std_logic_vector(2 downto 0);
signal AHB_MST_MEM_HPROT_net_1   : std_logic_vector(3 downto 0);
signal AHB_MST_MEM_HWDATA_net_1  : std_logic_vector(31 downto 0);
signal AHB_MST_MEM_HLOCK_net_1   : std_logic;
signal AHB_MST_MMIO_HADDR_net_1  : std_logic_vector(30 downto 0);
signal AHB_MST_MMIO_HTRANS_net_1 : std_logic_vector(1 downto 0);
signal AHB_MST_MMIO_HWRITE_net_1 : std_logic;
signal AHB_MST_MMIO_HSIZE_net_1  : std_logic_vector(2 downto 0);
signal AHB_MST_MMIO_HBURST_net_1 : std_logic_vector(2 downto 0);
signal AHB_MST_MMIO_HPROT_net_1  : std_logic_vector(3 downto 0);
signal AHB_MST_MMIO_HWDATA_net_1 : std_logic_vector(31 downto 0);
signal AHB_MST_MMIO_HLOCK_net_1  : std_logic;
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal GND_net                   : std_logic;

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 GND_net <= '0';
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 AHB_MST_MEM_HSEL_net_1           <= AHB_MST_MEM_HSEL_net_0;
 AHB_MST_MEM_HSEL                 <= AHB_MST_MEM_HSEL_net_1;
 AHB_MST_MMIO_HSEL_net_1          <= AHB_MST_MMIO_HSEL_net_0;
 AHB_MST_MMIO_HSEL                <= AHB_MST_MMIO_HSEL_net_1;
 TDO_net_1                        <= TDO_net_0;
 TDO                              <= TDO_net_1;
 EXT_RESETN_net_1                 <= EXT_RESETN_net_0;
 EXT_RESETN                       <= EXT_RESETN_net_1;
 DRV_TDO_net_1                    <= DRV_TDO_net_0;
 DRV_TDO                          <= DRV_TDO_net_1;
 AHB_MST_MEM_HADDR_net_1          <= AHB_MST_MEM_HADDR_net_0;
 AHB_MST_MEM_HADDR(31 downto 0)   <= AHB_MST_MEM_HADDR_net_1;
 AHB_MST_MEM_HTRANS_net_1         <= AHB_MST_MEM_HTRANS_net_0;
 AHB_MST_MEM_HTRANS(1 downto 0)   <= AHB_MST_MEM_HTRANS_net_1;
 AHB_MST_MEM_HWRITE_net_1         <= AHB_MST_MEM_HWRITE_net_0;
 AHB_MST_MEM_HWRITE               <= AHB_MST_MEM_HWRITE_net_1;
 AHB_MST_MEM_HSIZE_net_1          <= AHB_MST_MEM_HSIZE_net_0;
 AHB_MST_MEM_HSIZE(2 downto 0)    <= AHB_MST_MEM_HSIZE_net_1;
 AHB_MST_MEM_HBURST_net_1         <= AHB_MST_MEM_HBURST_net_0;
 AHB_MST_MEM_HBURST(2 downto 0)   <= AHB_MST_MEM_HBURST_net_1;
 AHB_MST_MEM_HPROT_net_1          <= AHB_MST_MEM_HPROT_net_0;
 AHB_MST_MEM_HPROT(3 downto 0)    <= AHB_MST_MEM_HPROT_net_1;
 AHB_MST_MEM_HWDATA_net_1         <= AHB_MST_MEM_HWDATA_net_0;
 AHB_MST_MEM_HWDATA(31 downto 0)  <= AHB_MST_MEM_HWDATA_net_1;
 AHB_MST_MEM_HLOCK_net_1          <= AHB_MST_MEM_HLOCK_net_0;
 AHB_MST_MEM_HLOCK                <= AHB_MST_MEM_HLOCK_net_1;
 AHB_MST_MMIO_HADDR_net_1         <= AHB_MST_MMIO_HADDR_net_0;
 AHB_MST_MMIO_HADDR(30 downto 0)  <= AHB_MST_MMIO_HADDR_net_1;
 AHB_MST_MMIO_HTRANS_net_1        <= AHB_MST_MMIO_HTRANS_net_0;
 AHB_MST_MMIO_HTRANS(1 downto 0)  <= AHB_MST_MMIO_HTRANS_net_1;
 AHB_MST_MMIO_HWRITE_net_1        <= AHB_MST_MMIO_HWRITE_net_0;
 AHB_MST_MMIO_HWRITE              <= AHB_MST_MMIO_HWRITE_net_1;
 AHB_MST_MMIO_HSIZE_net_1         <= AHB_MST_MMIO_HSIZE_net_0;
 AHB_MST_MMIO_HSIZE(2 downto 0)   <= AHB_MST_MMIO_HSIZE_net_1;
 AHB_MST_MMIO_HBURST_net_1        <= AHB_MST_MMIO_HBURST_net_0;
 AHB_MST_MMIO_HBURST(2 downto 0)  <= AHB_MST_MMIO_HBURST_net_1;
 AHB_MST_MMIO_HPROT_net_1         <= AHB_MST_MMIO_HPROT_net_0;
 AHB_MST_MMIO_HPROT(3 downto 0)   <= AHB_MST_MMIO_HPROT_net_1;
 AHB_MST_MMIO_HWDATA_net_1        <= AHB_MST_MMIO_HWDATA_net_0;
 AHB_MST_MMIO_HWDATA(31 downto 0) <= AHB_MST_MMIO_HWDATA_net_1;
 AHB_MST_MMIO_HLOCK_net_1         <= AHB_MST_MMIO_HLOCK_net_0;
 AHB_MST_MMIO_HLOCK               <= AHB_MST_MMIO_HLOCK_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- MIV_RV32IMA_L1_AHB_C0_0   -   Microsemi:MiV:MIV_RV32IMA_L1_AHB:2.3.100
MIV_RV32IMA_L1_AHB_C0_0 : MIV_RV32IMA_L1_AHB_C0_MIV_RV32IMA_L1_AHB_C0_0_MIV_RV32IMA_L1_AHB
    generic map( 
        ECC_EN              => ( 0 ),
        EXT_HALT            => ( 0 ),
        RESET_VECTOR_ADDR_0 => ( 16#0# ),
        RESET_VECTOR_ADDR_1 => ( 16#6000# )
        )
    port map( 
        -- Inputs
        CLK                 => CLK,
        RESETN              => RESETN,
        AHB_MST_MEM_HREADY  => AHB_MST_MEM_HREADY,
        AHB_MST_MEM_HRESP   => AHB_MST_MEM_HRESP,
        AHB_MST_MEM_HRDATA  => AHB_MST_MEM_HRDATA,
        AHB_MST_MMIO_HREADY => AHB_MST_MMIO_HREADY,
        AHB_MST_MMIO_HRESP  => AHB_MST_MMIO_HRESP,
        AHB_MST_MMIO_HRDATA => AHB_MST_MMIO_HRDATA,
        IRQ                 => IRQ,
        TDI                 => TDI,
        TCK                 => TCK,
        TMS                 => TMS,
        TRST                => TRST,
        HALT_CPU            => GND_net, -- tied to '0' from definition
        -- Outputs
        AHB_MST_MEM_HLOCK   => AHB_MST_MEM_HLOCK_net_0,
        AHB_MST_MEM_HTRANS  => AHB_MST_MEM_HTRANS_net_0,
        AHB_MST_MEM_HSEL    => AHB_MST_MEM_HSEL_net_0,
        AHB_MST_MEM_HWRITE  => AHB_MST_MEM_HWRITE_net_0,
        AHB_MST_MEM_HADDR   => AHB_MST_MEM_HADDR_net_0,
        AHB_MST_MEM_HSIZE   => AHB_MST_MEM_HSIZE_net_0,
        AHB_MST_MEM_HBURST  => AHB_MST_MEM_HBURST_net_0,
        AHB_MST_MEM_HPROT   => AHB_MST_MEM_HPROT_net_0,
        AHB_MST_MEM_HWDATA  => AHB_MST_MEM_HWDATA_net_0,
        AHB_MST_MMIO_HLOCK  => AHB_MST_MMIO_HLOCK_net_0,
        AHB_MST_MMIO_HTRANS => AHB_MST_MMIO_HTRANS_net_0,
        AHB_MST_MMIO_HSEL   => AHB_MST_MMIO_HSEL_net_0,
        AHB_MST_MMIO_HWRITE => AHB_MST_MMIO_HWRITE_net_0,
        AHB_MST_MMIO_HADDR  => AHB_MST_MMIO_HADDR_net_0,
        AHB_MST_MMIO_HSIZE  => AHB_MST_MMIO_HSIZE_net_0,
        AHB_MST_MMIO_HBURST => AHB_MST_MMIO_HBURST_net_0,
        AHB_MST_MMIO_HPROT  => AHB_MST_MMIO_HPROT_net_0,
        AHB_MST_MMIO_HWDATA => AHB_MST_MMIO_HWDATA_net_0,
        TDO                 => TDO_net_0,
        EXT_RESETN          => EXT_RESETN_net_0,
        CPU_HALTED          => OPEN,
        DRV_TDO             => DRV_TDO_net_0,
        ICACHE_SEC          => OPEN,
        ICACHE_DED          => OPEN,
        DCACHE_SEC          => OPEN,
        DCACHE_DED          => OPEN 
        );

end RTL;
