-- VHDL Entity tb_lib.tb_hit_detect.symbol
--
-- Created:
--          by - kayra.UNKNOWN (HTC219-322-SPC)
--          at - 16:17:39 06/04/18
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2019.3 (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY tb_hit_detect IS
-- Declarations

END tb_hit_detect ;

--
-- VHDL Architecture tb_lib.tb_hit_detect.struct
--
-- Created:
--          by - rpmais.UNKNOWN (HTC219-322-SPC)
--          at - 18:29:16 30.11.2024
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2019.3 (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY alien_game_lib;
LIBRARY tb_lib;

ARCHITECTURE struct OF tb_hit_detect IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL alien_x  : std_logic_vector(7 DOWNTO 0);
   SIGNAL alien_y  : std_logic_vector(7 DOWNTO 0);
   SIGNAL btn      : std_logic;
   SIGNAL bullet_x : std_logic_vector(7 DOWNTO 0);
   SIGNAL bullet_y : std_logic_vector(7 DOWNTO 0);
   SIGNAL clk      : std_logic;
   SIGNAL gun_x    : std_logic_vector(7 DOWNTO 0);
   SIGNAL hit      : std_logic;
   SIGNAL mode     : std_logic;
   SIGNAL rst_n    : std_logic;


   -- Component Declarations
   COMPONENT c6_t1_hit_detector
   PORT (
      alien_x  : IN     std_logic_vector (7 DOWNTO 0);
      btn      : IN     std_logic ;
      clk      : IN     std_logic ;
      muzzle_x : IN     std_logic_vector (7 DOWNTO 0);
      rst_n    : IN     std_logic ;
      hit      : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT hit_testbench
   PORT (
      hit      : IN     std_logic ;
      mode     : IN     std_logic ;
      alien_x  : OUT    std_logic_vector (7 DOWNTO 0);
      alien_y  : OUT    std_logic_vector (7 DOWNTO 0);
      btn      : OUT    std_logic ;
      bullet_x : OUT    std_logic_vector (7 DOWNTO 0);
      bullet_y : OUT    std_logic_vector (7 DOWNTO 0);
      clk      : OUT    std_logic ;
      gun_x    : OUT    std_logic_vector (7 DOWNTO 0);
      rst_n    : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : c6_t1_hit_detector USE ENTITY alien_game_lib.c6_t1_hit_detector;
   FOR ALL : hit_testbench USE ENTITY tb_lib.hit_testbench;
   -- pragma synthesis_on


BEGIN

   -- ModuleWare code(v1.12) for instance 'mode' of 'constval'
   mode <= '0';

   -- Instance port mappings.
   U_0 : c6_t1_hit_detector
      PORT MAP (
         alien_x  => alien_x,
         btn      => btn,
         clk      => clk,
         muzzle_x => gun_x,
         rst_n    => rst_n,
         hit      => hit
      );
   U_2 : hit_testbench
      PORT MAP (
         hit      => hit,
         mode     => mode,
         alien_x  => alien_x,
         alien_y  => alien_y,
         btn      => btn,
         bullet_x => bullet_x,
         bullet_y => bullet_y,
         clk      => clk,
         gun_x    => gun_x,
         rst_n    => rst_n
      );

END struct;
