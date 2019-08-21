----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Mon Aug  5 15:12:19 2019
-- Parameters for CoreAHBLite
----------------------------------------------------------------------


LIBRARY ieee;
   USE ieee.std_logic_1164.all;
   USE ieee.std_logic_unsigned.all;
   USE ieee.numeric_std.all;

package coreparameters is
    constant FAMILY : integer := 19;
    constant HADDR_SHG_CFG : integer := 1;
    constant M0_AHBSLOT0ENABLE : integer := 0;
    constant M0_AHBSLOT1ENABLE : integer := 0;
    constant M0_AHBSLOT2ENABLE : integer := 0;
    constant M0_AHBSLOT3ENABLE : integer := 0;
    constant M0_AHBSLOT4ENABLE : integer := 0;
    constant M0_AHBSLOT5ENABLE : integer := 0;
    constant M0_AHBSLOT6ENABLE : integer := 0;
    constant M0_AHBSLOT7ENABLE : integer := 1;
    constant M0_AHBSLOT8ENABLE : integer := 0;
    constant M0_AHBSLOT9ENABLE : integer := 0;
    constant M0_AHBSLOT10ENABLE : integer := 0;
    constant M0_AHBSLOT11ENABLE : integer := 0;
    constant M0_AHBSLOT12ENABLE : integer := 0;
    constant M0_AHBSLOT13ENABLE : integer := 0;
    constant M0_AHBSLOT14ENABLE : integer := 0;
    constant M0_AHBSLOT15ENABLE : integer := 0;
    constant M0_AHBSLOT16ENABLE : integer := 0;
    constant M1_AHBSLOT0ENABLE : integer := 0;
    constant M1_AHBSLOT1ENABLE : integer := 0;
    constant M1_AHBSLOT2ENABLE : integer := 0;
    constant M1_AHBSLOT3ENABLE : integer := 0;
    constant M1_AHBSLOT4ENABLE : integer := 0;
    constant M1_AHBSLOT5ENABLE : integer := 0;
    constant M1_AHBSLOT6ENABLE : integer := 0;
    constant M1_AHBSLOT7ENABLE : integer := 0;
    constant M1_AHBSLOT8ENABLE : integer := 0;
    constant M1_AHBSLOT9ENABLE : integer := 0;
    constant M1_AHBSLOT10ENABLE : integer := 0;
    constant M1_AHBSLOT11ENABLE : integer := 0;
    constant M1_AHBSLOT12ENABLE : integer := 0;
    constant M1_AHBSLOT13ENABLE : integer := 0;
    constant M1_AHBSLOT14ENABLE : integer := 0;
    constant M1_AHBSLOT15ENABLE : integer := 0;
    constant M1_AHBSLOT16ENABLE : integer := 0;
    constant M2_AHBSLOT0ENABLE : integer := 0;
    constant M2_AHBSLOT1ENABLE : integer := 0;
    constant M2_AHBSLOT2ENABLE : integer := 0;
    constant M2_AHBSLOT3ENABLE : integer := 0;
    constant M2_AHBSLOT4ENABLE : integer := 0;
    constant M2_AHBSLOT5ENABLE : integer := 0;
    constant M2_AHBSLOT6ENABLE : integer := 0;
    constant M2_AHBSLOT7ENABLE : integer := 0;
    constant M2_AHBSLOT8ENABLE : integer := 0;
    constant M2_AHBSLOT9ENABLE : integer := 0;
    constant M2_AHBSLOT10ENABLE : integer := 0;
    constant M2_AHBSLOT11ENABLE : integer := 0;
    constant M2_AHBSLOT12ENABLE : integer := 0;
    constant M2_AHBSLOT13ENABLE : integer := 0;
    constant M2_AHBSLOT14ENABLE : integer := 0;
    constant M2_AHBSLOT15ENABLE : integer := 0;
    constant M2_AHBSLOT16ENABLE : integer := 0;
    constant M3_AHBSLOT0ENABLE : integer := 0;
    constant M3_AHBSLOT1ENABLE : integer := 0;
    constant M3_AHBSLOT2ENABLE : integer := 0;
    constant M3_AHBSLOT3ENABLE : integer := 0;
    constant M3_AHBSLOT4ENABLE : integer := 0;
    constant M3_AHBSLOT5ENABLE : integer := 0;
    constant M3_AHBSLOT6ENABLE : integer := 0;
    constant M3_AHBSLOT7ENABLE : integer := 0;
    constant M3_AHBSLOT8ENABLE : integer := 0;
    constant M3_AHBSLOT9ENABLE : integer := 0;
    constant M3_AHBSLOT10ENABLE : integer := 0;
    constant M3_AHBSLOT11ENABLE : integer := 0;
    constant M3_AHBSLOT12ENABLE : integer := 0;
    constant M3_AHBSLOT13ENABLE : integer := 0;
    constant M3_AHBSLOT14ENABLE : integer := 0;
    constant M3_AHBSLOT15ENABLE : integer := 0;
    constant M3_AHBSLOT16ENABLE : integer := 0;
    constant MASTER0_INTERFACE : integer := 1;
    constant MASTER1_INTERFACE : integer := 1;
    constant MASTER2_INTERFACE : integer := 1;
    constant MASTER3_INTERFACE : integer := 1;
    constant MEMSPACE : integer := 1;
    constant SC_0 : integer := 0;
    constant SC_1 : integer := 0;
    constant SC_2 : integer := 0;
    constant SC_3 : integer := 0;
    constant SC_4 : integer := 0;
    constant SC_5 : integer := 0;
    constant SC_6 : integer := 0;
    constant SC_7 : integer := 0;
    constant SC_8 : integer := 0;
    constant SC_9 : integer := 0;
    constant SC_10 : integer := 0;
    constant SC_11 : integer := 0;
    constant SC_12 : integer := 0;
    constant SC_13 : integer := 0;
    constant SC_14 : integer := 0;
    constant SC_15 : integer := 0;
    constant SLAVE0_INTERFACE : integer := 1;
    constant SLAVE1_INTERFACE : integer := 1;
    constant SLAVE2_INTERFACE : integer := 1;
    constant SLAVE3_INTERFACE : integer := 1;
    constant SLAVE4_INTERFACE : integer := 1;
    constant SLAVE5_INTERFACE : integer := 1;
    constant SLAVE6_INTERFACE : integer := 1;
    constant SLAVE7_INTERFACE : integer := 1;
    constant SLAVE8_INTERFACE : integer := 1;
    constant SLAVE9_INTERFACE : integer := 1;
    constant SLAVE10_INTERFACE : integer := 1;
    constant SLAVE11_INTERFACE : integer := 1;
    constant SLAVE12_INTERFACE : integer := 1;
    constant SLAVE13_INTERFACE : integer := 1;
    constant SLAVE14_INTERFACE : integer := 1;
    constant SLAVE15_INTERFACE : integer := 1;
    constant SLAVE16_INTERFACE : integer := 1;
    constant testbench : string( 1 to 4 ) := "User";
end coreparameters;
