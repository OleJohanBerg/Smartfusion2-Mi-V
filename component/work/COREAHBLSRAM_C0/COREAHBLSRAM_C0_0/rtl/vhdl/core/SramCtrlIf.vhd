----------------------------------------------------------------------------------------------
--
-- VHDL file generated by X-HDL - Revision 3.2.52  Mar. 28, 2005 
-- Mon Feb 22 12:32:11 2016
--
--      Input file         : //idm/IPEngg/Technical/maheswark/CoreAHBLSRAM/RTL/trunk/rtl/vlog/core/SramCtrlIf.v
--      Design name        : COREAHBLSRAM_C0_COREAHBLSRAM_C0_0_SramCtrlIf
--      Author             : 
--      Company            : 
--
--      Description        : 
--
--
----------------------------------------------------------------------------------------------
--
library ieee;
use     ieee.std_logic_1164.all;
use     ieee.std_logic_arith.all;
use     ieee.std_logic_unsigned.all;
use     ieee.std_logic_misc.all;


ENTITY COREAHBLSRAM_C0_COREAHBLSRAM_C0_0_SramCtrlIf IS
   GENERIC (
      SEL_SRAM_TYPE                  :  integer := 1;    
      LSRAM_NUM_LOCATIONS_DWIDTH32   :  integer := 512;    
      --LSRAM_NUM_LOCATIONS_4          :  integer := LSRAM_NUM_LOCATIONS_DWIDTH32;    
      USRAM_NUM_LOCATIONS_DWIDTH32   :  integer := 128;    
      --USRAM_NUM_LOCATIONS_4          :  integer := USRAM_NUM_LOCATIONS_DWIDTH32;    
      AHB_DWIDTH                     :  integer := 32;    
      SYNC_RESET                     :  integer := 0);    
   PORT (
      HCLK                    : IN std_logic;   
      HRESETN                 : IN std_logic;   
      ahbsram_req             : IN std_logic;   
      ahbsram_write           : IN std_logic;   
      ahbsram_wdata           : IN std_logic_vector(AHB_DWIDTH - 1 DOWNTO 0);   
      ahbsram_wdata_usram     : IN std_logic_vector(AHB_DWIDTH - 1 DOWNTO 0);   
      ahbsram_size            : IN std_logic_vector(2 DOWNTO 0);   
      ahbsram_addr            : IN std_logic_vector(19 DOWNTO 0);   
      sramahb_ack             : OUT std_logic;   
      sramahb_rdata           : OUT std_logic_vector(AHB_DWIDTH - 1 DOWNTO 0);   
      BUSY                    : OUT std_logic);   
END COREAHBLSRAM_C0_COREAHBLSRAM_C0_0_SramCtrlIf;

ARCHITECTURE translated OF COREAHBLSRAM_C0_COREAHBLSRAM_C0_0_SramCtrlIf IS

    CONSTANT USRAM_NUM_LOCATIONS_4  :  integer := USRAM_NUM_LOCATIONS_DWIDTH32/4;
    
    COMPONENT COREAHBLSRAM_C0_COREAHBLSRAM_C0_0_usram_128to9216x8 
     GENERIC (
      -- ---------------------------------------------------------------------
      -- Parameters
      -- ---------------------------------------------------------------------
      -- DEPTH can range from
      -- 128 to 2304bytes  , in steps of 128bytes for WORD
      DEPTH   :  integer := 128;
      SYNC_RESET                     :  integer := 0);
   PORT (
      -- ---------------------------------------------------------------------
-- Port declarations
-- ---------------------------------------------------------------------
-- AhbFabric interface
-- Inputs

      --writeData               : IN std_logic_vector(15 DOWNTO 0);   
      writeData               : IN std_logic_vector(7 DOWNTO 0);   
      -- Output

      --readData                : OUT std_logic_vector(15 DOWNTO 0);   
      readData                : OUT std_logic_vector(7 DOWNTO 0);   
      -- AhbSramIf interface
-- Inputs

      wen                     : IN std_logic;   
      ren                     : IN std_logic;
      writeAddr               : IN std_logic_vector(15 DOWNTO 0);   
      readAddr                : IN std_logic_vector(15 DOWNTO 0);   
      clk                     : IN std_logic;   
      resetn                  : IN std_logic;   
      u_BUSY_all              : OUT std_logic);   
END COMPONENT;

COMPONENT COREAHBLSRAM_C0_COREAHBLSRAM_C0_0_lsram_2048to139264x8
   GENERIC (
      -- ---------------------------------------------------------------------
      -- Parameters
      -- ---------------------------------------------------------------------
      -- DEPTH can range from 512 to 8192, in steps of 512
       DEPTH                          :  integer := 512;
	   SYNC_RESET                     :  integer := 0); 
   PORT (
      -- ---------------------------------------------------------------------
-- Port declarations
-- ---------------------------------------------------------------------
-- AhbFabric interface
-- Inputs

      writeData               : IN std_logic_vector(31 DOWNTO 0);   
      -- Output

      readData                : OUT std_logic_vector(31 DOWNTO 0);   
      -- AhbSramIf interface
-- Inputs

      wen_a                   : IN std_logic_vector(1 DOWNTO 0);   
      wen_b                   : IN std_logic_vector(1 DOWNTO 0);   
      ren                     : IN std_logic;   
      writeAddr               : IN std_logic_vector(15 DOWNTO 0);   
      readAddr                : IN std_logic_vector(15 DOWNTO 0);   
      clk                     : IN std_logic;   
      resetn                  : IN std_logic;   
      l_BUSY_all              : OUT std_logic);   
END COMPONENT;


   CONSTANT  S_IDLE                :  std_logic_vector(1 DOWNTO 0) := "00";    
   CONSTANT  S_WR                  :  std_logic_vector(1 DOWNTO 0) := "01";    
   CONSTANT  S_RD                  :  std_logic_vector(1 DOWNTO 0) := "10";    
   SIGNAL sram_wen_mem             :  std_logic_vector(3 DOWNTO 0);   
   SIGNAL sramcurr_state           :  std_logic_vector(1 DOWNTO 0);   
   SIGNAL sramnext_state           :  std_logic_vector(1 DOWNTO 0);   
   SIGNAL sram_wen                 :  std_logic;   
   SIGNAL sram_ren                 :  std_logic;   
   SIGNAL sramahb_ack_int          :  std_logic;   
   SIGNAL sram_ren_d               :  std_logic;   
   SIGNAL sram_done                :  std_logic;   
   SIGNAL ahbsram_wdata_upd_r      :  std_logic_vector(31 DOWNTO 0);   
   SIGNAL u_ahbsram_wdata_upd_r    :  std_logic_vector(31 DOWNTO 0);   
   SIGNAL ram_rdata                :  std_logic_vector(AHB_DWIDTH - 1 DOWNTO 0);   
   SIGNAL u_BUSY_all_0             :  std_logic;   
   SIGNAL u_BUSY_all_1             :  std_logic;   
   SIGNAL u_BUSY_all_2             :  std_logic;   
   SIGNAL u_BUSY_all_3             :  std_logic;   
   SIGNAL l_BUSY_all_0             :  std_logic;   
   SIGNAL l_BUSY_all_1             :  std_logic;   
   SIGNAL l_BUSY_all_2             :  std_logic;   
   SIGNAL l_BUSY_all_3             :  std_logic;   
   SIGNAL aresetn                  :  std_logic;   
   SIGNAL sresetn                  :  std_logic;   
   SIGNAL temp_xhdl4               :  std_logic;   
   SIGNAL temp_xhdl5               :  std_logic;   
   SIGNAL xhdl_7                   :  std_logic_vector(1 DOWNTO 0);   
   SIGNAL xhdl_8                   :  std_logic_vector(1 DOWNTO 0);   
   SIGNAL xhdl_10                  :  std_logic;   
   SIGNAL xhdl_12                  :  std_logic;   
   SIGNAL temp_xhdl13              :  std_logic;   
   SIGNAL sramahb_ack_xhdl1        :  std_logic;   
   SIGNAL sramahb_rdata_xhdl2      :  std_logic_vector(AHB_DWIDTH - 1 DOWNTO 0);   
   SIGNAL BUSY_xhdl3               :  std_logic;  
   SIGNAL temp_usram_lwrbits       :  std_logic;
   SIGNAL temp_usram_upprbits      :  std_logic;

BEGIN
   sramahb_ack <= sramahb_ack_xhdl1;
   sramahb_rdata <= sramahb_rdata_xhdl2;
   BUSY <= BUSY_xhdl3;
   temp_xhdl4 <= '1' WHEN (SYNC_RESET = 1) ELSE HRESETN;
   aresetn <= temp_xhdl4 ;
   temp_xhdl5 <= HRESETN WHEN (SYNC_RESET = 1) ELSE '1';
   sresetn <= temp_xhdl5 ;
   temp_usram_lwrbits <= sram_wen_mem(0) OR sram_wen_mem(1);
   temp_usram_upprbits <= sram_wen_mem(3) OR sram_wen_mem(2);

   --PROCESS
   --BEGIN
   --   WAIT UNTIL (HCLK'EVENT AND HCLK = '1') OR (aresetn'EVENT AND aresetn = '0');
   --   IF ((aresetn = '0') OR (sresetn = '0')) THEN
   --      sramcurr_state <= S_IDLE;    
   --   ELSE
   --      sramcurr_state <= sramnext_state;    
   --   END IF;
   --END PROCESS;

    -- SRAM Control State Machine
   -- Current State generation   
   PROCESS (HCLK, aresetn)
   BEGIN
      IF (aresetn = '0') THEN
         sramcurr_state <= S_IDLE;    
      ELSIF (HCLK'EVENT AND HCLK = '1') THEN
         IF (sresetn = '0') THEN
            sramcurr_state <= S_IDLE;
	     ELSE
            sramcurr_state <= sramnext_state;    
         END IF; 
      END IF;
   END PROCESS;


   PROCESS (sramcurr_state, sram_done, ahbsram_write, ahbsram_req, sramnext_state )
   BEGIN
      sramahb_ack_int <= '0';    
      sram_wen <= '0';    
      sram_ren <= '0';    
      sramnext_state <= sramcurr_state;    
      CASE sramcurr_state IS
         WHEN S_IDLE =>
                  IF (ahbsram_req = '1') THEN
                     IF (ahbsram_write = '1') THEN
                        sramnext_state <= S_WR;    
                        sram_wen <= '1';    
                     ELSE
                        sram_ren <= '1';    
                        sramnext_state <= S_RD;    
                     END IF;
                  END IF;
         WHEN S_WR =>
                  IF (sram_done = '1') THEN
                     sramnext_state <= S_IDLE;    
                     sramahb_ack_int <= '1';    
                  END IF;
         WHEN S_RD =>
                  IF (sram_done = '1') THEN
                     sramnext_state <= S_IDLE;    
                     sramahb_ack_int <= '1';    
                  END IF;
         WHEN OTHERS  =>
                  sramnext_state <= S_IDLE;    
         
      END CASE;
   END PROCESS;

   PROCESS (sram_wen, ahbsram_size, ahbsram_addr)
   BEGIN
      sram_wen_mem <= "0000";    
      IF (ahbsram_size = "010") THEN
         sram_wen_mem <= sram_wen & sram_wen & sram_wen & sram_wen;    
      ELSE
         IF (ahbsram_size = "001") THEN
            CASE ahbsram_addr(1) IS
               WHEN '0' =>
                        sram_wen_mem(0) <= sram_wen;    
                        sram_wen_mem(1) <= sram_wen;    
                        sram_wen_mem(2) <= '0';    
                        sram_wen_mem(3) <= '0';    
               WHEN '1' =>
                        sram_wen_mem(0) <= '0';    
                        sram_wen_mem(1) <= '0';    
                        sram_wen_mem(2) <= sram_wen;    
                        sram_wen_mem(3) <= sram_wen;    
               WHEN OTHERS =>
                        NULL;
               
            END CASE;
         ELSE
            IF (ahbsram_size = "000") THEN
               CASE ahbsram_addr(1 DOWNTO 0) IS
                  WHEN "00" =>
                           sram_wen_mem(0) <= sram_wen;    
                           sram_wen_mem(1) <= '0';    
                           sram_wen_mem(2) <= '0';    
                           sram_wen_mem(3) <= '0';    
                  WHEN "01" =>
                           sram_wen_mem(0) <= '0';    
                           sram_wen_mem(1) <= sram_wen;    
                           sram_wen_mem(2) <= '0';    
                           sram_wen_mem(3) <= '0';    
                  WHEN "10" =>
                           sram_wen_mem(0) <= '0';    
                           sram_wen_mem(1) <= '0';    
                           sram_wen_mem(2) <= sram_wen;    
                           sram_wen_mem(3) <= '0';    
                  WHEN "11" =>
                           sram_wen_mem(0) <= '0';    
                           sram_wen_mem(1) <= '0';    
                           sram_wen_mem(2) <= '0';    
                           sram_wen_mem(3) <= sram_wen;    
                  WHEN OTHERS =>
                           NULL;
                  
               END CASE;
            ELSE
               sram_wen_mem <= sram_wen & sram_wen & sram_wen & sram_wen;    
            END IF;
         END IF;
      END IF;
   END PROCESS;
   
   S0 : IF (SEL_SRAM_TYPE = 0) GENERATE
      -- <<X-HDL>> Can't find translated component 'COREAHBLSRAM_C0_COREAHBLSRAM_C0_0_lsram_2048to139264x8'. Port & generic names and types may not match. No template will be included
      byte_0 : COREAHBLSRAM_C0_COREAHBLSRAM_C0_0_lsram_2048to139264x8 
         GENERIC MAP (
            SYNC_RESET => SYNC_RESET,
            DEPTH => LSRAM_NUM_LOCATIONS_DWIDTH32)
         PORT MAP (
            writeData => ahbsram_wdata,
            readData => ram_rdata(31 DOWNTO 0),
            --wen_a => temp_lsram_lwrbits,
            wen_a => sram_wen_mem(1 DOWNTO 0),
            wen_b => sram_wen_mem(3 DOWNTO 2),
            ren => sram_ren,
            writeAddr => ahbsram_addr(17 DOWNTO 2),
            readAddr => ahbsram_addr(17 DOWNTO 2),
            clk => HCLK,
            resetn => HRESETN,
            l_BUSY_all => l_BUSY_all_0);   
   END GENERATE S0;
   
  S1 : IF (SEL_SRAM_TYPE = 1) GENERATE
      -- <<X-HDL>> Can't find translated component 'COREAHBLSRAM_C0_COREAHBLSRAM_C0_0_usram_128to9216x8'. Port & generic names and types may not match. No template will be included
      
       byte_0 : COREAHBLSRAM_C0_COREAHBLSRAM_C0_0_usram_128to9216x8 
          GENERIC MAP (
             SYNC_RESET => SYNC_RESET,
             DEPTH => USRAM_NUM_LOCATIONS_4)
          PORT MAP (
             writeData => ahbsram_wdata(7 DOWNTO 0),
             readData => ram_rdata(7 DOWNTO 0),
             wen => sram_wen_mem(0),
             ren => sram_ren,
             writeAddr => ahbsram_addr(17 DOWNTO 2),
             readAddr => ahbsram_addr(17 DOWNTO 2),
             clk => HCLK,
             resetn => HRESETN,
             u_BUSY_all => u_BUSY_all_0);   
       -- <<X-HDL>> Can't find translated component 'COREAHBLSRAM_C0_COREAHBLSRAM_C0_0_usram_128to9216x8'. Port & generic names and types may not match. No template will be included
       byte_1 : COREAHBLSRAM_C0_COREAHBLSRAM_C0_0_usram_128to9216x8 
          GENERIC MAP (
             SYNC_RESET => SYNC_RESET,
             DEPTH => USRAM_NUM_LOCATIONS_4)
          PORT MAP (
             writeData => ahbsram_wdata(15 DOWNTO 8),
             readData => ram_rdata(15 DOWNTO 8),
             wen => sram_wen_mem(1),
             ren => sram_ren,
             writeAddr => ahbsram_addr(17 DOWNTO 2),
             readAddr => ahbsram_addr(17 DOWNTO 2),
             clk => HCLK,
             resetn => HRESETN,
             u_BUSY_all => u_BUSY_all_1); 

       byte_2 : COREAHBLSRAM_C0_COREAHBLSRAM_C0_0_usram_128to9216x8 
          GENERIC MAP (
             SYNC_RESET => SYNC_RESET,
             DEPTH => USRAM_NUM_LOCATIONS_4)
          PORT MAP (
             writeData => ahbsram_wdata(23 DOWNTO 16),
             readData => ram_rdata(23 DOWNTO 16),
             wen => sram_wen_mem(2),
             ren => sram_ren,
             writeAddr => ahbsram_addr(17 DOWNTO 2),
             readAddr => ahbsram_addr(17 DOWNTO 2),
             clk => HCLK,
             resetn => HRESETN,
             u_BUSY_all => u_BUSY_all_2);   
       -- <<X-HDL>> Can't find translated component 'COREAHBLSRAM_C0_COREAHBLSRAM_C0_0_usram_128to9216x8'. Port & generic names and types may not match. No template will be included
       byte_3 : COREAHBLSRAM_C0_COREAHBLSRAM_C0_0_usram_128to9216x8 
          GENERIC MAP (
             SYNC_RESET => SYNC_RESET,
             DEPTH => USRAM_NUM_LOCATIONS_4)
          PORT MAP (
             writeData => ahbsram_wdata(31 DOWNTO 24),
             readData => ram_rdata(31 DOWNTO 24),
             wen => sram_wen_mem(3),
             ren => sram_ren,
             writeAddr => ahbsram_addr(17 DOWNTO 2),
             readAddr => ahbsram_addr(17 DOWNTO 2),
             clk => HCLK,
             resetn => HRESETN,
             u_BUSY_all => u_BUSY_all_3);  

      

   END GENERATE S1;
   
   temp_xhdl13 <= (u_BUSY_all_0 OR u_BUSY_all_1 OR u_BUSY_all_2 OR u_BUSY_all_3) WHEN SEL_SRAM_TYPE /= 0 ELSE (l_BUSY_all_0 OR l_BUSY_all_1 OR l_BUSY_all_2 OR l_BUSY_all_3);
   BUSY_xhdl3 <= temp_xhdl13 ;

   PROCESS (HCLK, aresetn)
    BEGIN
       IF (aresetn = '0') THEN
          sramahb_rdata_xhdl2 <= (OTHERS => '0');    
       ELSIF (HCLK'EVENT AND HCLK = '1') THEN
           IF (sresetn = '0') THEN
              sramahb_rdata_xhdl2 <= (OTHERS => '0');    
           ELSIF (sram_ren_d = '1') THEN
             sramahb_rdata_xhdl2 <= ram_rdata;    
           ELSE 
             sramahb_rdata_xhdl2 <= sramahb_rdata_xhdl2;    
           END IF;
       END IF;
   END PROCESS;

   PROCESS (HCLK, aresetn)
   BEGIN
      IF (aresetn = '0') THEN
         sram_ren_d <= '0';    
      ELSIF (HCLK'EVENT AND HCLK = '1') THEN
         IF (sresetn = '0') THEN
            sram_ren_d <= '0';    
	     ELSE
            sram_ren_d <= sram_ren;    
         END IF;
      END IF;
   END PROCESS;

   -- Generate the SRAM done when the SRAM wren/rden is done   
   PROCESS (HCLK, aresetn)
   BEGIN
      IF (aresetn = '0') THEN
         sram_done <= '0';    
      ELSIF (HCLK'EVENT AND HCLK = '1') THEN
         IF (sresetn = '0') THEN
            sram_done <= '0';  
	     ELSE
            IF ((sram_wen OR sram_ren) = '1') THEN
               sram_done <= '1';    
            ELSE
               sram_done <= '0';    
            END IF;
         END IF;
      END IF;
   END PROCESS;

   sramahb_ack_xhdl1 <= sramahb_ack_int ;

END translated;
