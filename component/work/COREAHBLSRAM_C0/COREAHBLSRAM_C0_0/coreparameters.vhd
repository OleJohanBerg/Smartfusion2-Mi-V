----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Tue Aug  6 15:13:09 2019
-- Parameters for COREAHBLSRAM
----------------------------------------------------------------------


LIBRARY ieee;
   USE ieee.std_logic_1164.all;
   USE ieee.std_logic_unsigned.all;
   USE ieee.numeric_std.all;

package coreparameters is
    constant AHB_AWIDTH : integer := 32;
    constant AHB_DWIDTH : integer := 32;
    constant FAMILY : integer := 19;
    constant HDL_License : string( 1 to 1 ) := "U";
    constant LSRAM_NUM_LOCATIONS_DWIDTH32 : integer := 20480;
    constant SEL_SRAM_TYPE : integer := 0;
    constant Testbench : string( 1 to 4 ) := "User";
    constant USRAM_NUM_LOCATIONS_DWIDTH32 : integer := 128;
end coreparameters;
