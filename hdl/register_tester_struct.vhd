-- VHDL Entity tb_lib.register_tester.symbol
--
-- Created:
--          by - kayra.UNKNOWN (WS-11696-PC)
--          at - 15:53:58  3.09.2020
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2019.3 (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY register_tester IS
   PORT( 
      pixd_from_duv : IN     std_logic_vector (23 DOWNTO 0);
      w_ready       : IN     std_logic;
      clk           : OUT    std_logic;
      pixd          : OUT    std_logic_vector (23 DOWNTO 0);
      rst_n         : OUT    std_logic;
      w_done        : OUT    std_logic;
      write         : OUT    std_logic;
      x_read        : OUT    std_logic_vector (7 DOWNTO 0);
      x_write       : OUT    std_logic_vector (7 DOWNTO 0);
      y_read        : OUT    std_logic_vector (7 DOWNTO 0);
      y_write       : OUT    std_logic_vector (7 DOWNTO 0)
   );

-- Declarations

END register_tester ;

--
-- VHDL Architecture tb_lib.register_tester.struct
--
-- Created:
--          by - kayra.UNKNOWN (WS-11696-PC)
--          at - 15:53:58  3.09.2020
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2019.3 (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY tb_lib;

ARCHITECTURE struct OF register_tester IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL corr      : std_logic;
   SIGNAL simu_end  : std_logic;
   SIGNAL tb_r_done : std_logic;
   SIGNAL tb_w_done : std_logic;

   -- Implicit buffer signal declarations
   SIGNAL clk_internal   : std_logic;
   SIGNAL rst_n_internal : std_logic;


   -- Component Declarations
   COMPONENT reg_tester_rx
   PORT (
      clk           : IN     std_logic ;
      pixd_from_duv : IN     std_logic_vector (23 DOWNTO 0);
      rst_n         : IN     std_logic ;
      tb_w_done     : IN     std_logic ;
      corr          : OUT    std_logic ;
      simu_end      : OUT    std_logic ;
      tb_r_done     : OUT    std_logic ;
      x_read        : OUT    std_logic_vector (7 DOWNTO 0);
      y_read        : OUT    std_logic_vector (7 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT reg_tester_tx
   PORT (
      clk       : IN     std_logic ;
      rst_n     : IN     std_logic ;
      tb_r_done : IN     std_logic ;
      w_ready   : IN     std_logic ;
      pixd      : OUT    std_logic_vector (23 DOWNTO 0);
      tb_w_done : OUT    std_logic ;
      w_done    : OUT    std_logic ;
      write     : OUT    std_logic ;
      x_write   : OUT    std_logic_vector (7 DOWNTO 0);
      y_write   : OUT    std_logic_vector (7 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT register_test_gen
   PORT (
      corr     : IN     std_logic;
      simu_end : IN     std_logic;
      clk      : OUT    std_logic;
      rst_n    : OUT    std_logic
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : reg_tester_rx USE ENTITY tb_lib.reg_tester_rx;
   FOR ALL : reg_tester_tx USE ENTITY tb_lib.reg_tester_tx;
   FOR ALL : register_test_gen USE ENTITY tb_lib.register_test_gen;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_0 : reg_tester_rx
      PORT MAP (
         clk           => clk_internal,
         pixd_from_duv => pixd_from_duv,
         rst_n         => rst_n_internal,
         tb_w_done     => tb_w_done,
         corr          => corr,
         simu_end      => simu_end,
         tb_r_done     => tb_r_done,
         x_read        => x_read,
         y_read        => y_read
      );
   U_3 : reg_tester_tx
      PORT MAP (
         clk       => clk_internal,
         rst_n     => rst_n_internal,
         tb_r_done => tb_r_done,
         w_ready   => w_ready,
         pixd      => pixd,
         tb_w_done => tb_w_done,
         w_done    => w_done,
         write     => write,
         x_write   => x_write,
         y_write   => y_write
      );
   U_1 : register_test_gen
      PORT MAP (
         clk      => clk_internal,
         rst_n    => rst_n_internal,
         corr     => corr,
         simu_end => simu_end
      );

   -- Implicit buffered output assignments
   clk   <= clk_internal;
   rst_n <= rst_n_internal;

END struct;
