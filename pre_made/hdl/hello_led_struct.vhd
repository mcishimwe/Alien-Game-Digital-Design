-- VHDL Entity pre_made.HELLO_LED.symbol
--
-- Created:
--          by - oinonen2.UNKNOWN (WS-12212-PC)
--          at - 18:46:48 12.09.2022
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2019.3 (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY HELLO_LED IS
   PORT( 
      btn     : IN     std_logic_vector (3 DOWNTO 0);
      clk     : IN     std_logic;
      rst_n   : IN     std_logic;
      sw0     : IN     std_logic;
      channel : OUT    std_logic_vector (7 DOWNTO 0);
      lat     : OUT    std_logic;
      s_clk   : OUT    std_logic;
      s_rst   : OUT    std_logic;
      s_sda   : OUT    std_logic;
      sb      : OUT    std_logic
   );

-- Declarations

END HELLO_LED ;

--
-- VHDL Architecture pre_made.HELLO_LED.struct
--
-- Created:
--          by - mknoak.UNKNOWN (HTC219-703-SPC)
--          at - 16:37:55  5.10.2022
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2019.3 (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY allian_game_lib;
LIBRARY pre_made;

ARCHITECTURE struct OF HELLO_LED IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL color   : std_logic_vector(23 DOWNTO 0);
   SIGNAL w_rdy   : std_logic;
   SIGNAL x_coord : std_logic_vector(7 DOWNTO 0);
   SIGNAL y_coord : std_logic_vector(7 DOWNTO 0);


   -- Component Declarations
   COMPONENT c2_t3_led_combined
   PORT (
      btn       : IN     std_logic_vector (3 DOWNTO 0);
      sw0       : IN     std_logic ;
      color_BGR : OUT    std_logic_vector (23 DOWNTO 0);
      x_coord   : OUT    std_logic_vector (7 DOWNTO 0);
      y_coord   : OUT    std_logic_vector (7 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT display_controller
   PORT (
      clk        : IN     std_logic ;
      color_BGR  : IN     std_logic_vector (23 DOWNTO 0);
      frame_done : IN     std_logic ;
      rst_n      : IN     std_logic ;
      write      : IN     std_logic ;
      x_coord    : IN     std_logic_vector (7 DOWNTO 0);
      y_coord    : IN     std_logic_vector (7 DOWNTO 0);
      channel    : OUT    std_logic_vector (7 DOWNTO 0);
      lat        : OUT    std_logic ;
      s_clk      : OUT    std_logic ;
      s_rst      : OUT    std_logic ;
      s_sda      : OUT    std_logic ;
      sb         : OUT    std_logic ;
      w_rdy      : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : c2_t3_led_combined USE ENTITY allian_game_lib.c2_t3_led_combined;
   FOR ALL : display_controller USE ENTITY pre_made.display_controller;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_1 : c2_t3_led_combined
      PORT MAP (
         btn       => btn,
         sw0       => sw0,
         color_BGR => color,
         x_coord   => x_coord,
         y_coord   => y_coord
      );
   U_0 : display_controller
      PORT MAP (
         clk        => clk,
         color_BGR  => color,
         frame_done => w_rdy,
         rst_n      => rst_n,
         write      => w_rdy,
         x_coord    => x_coord,
         y_coord    => y_coord,
         channel    => channel,
         lat        => lat,
         s_clk      => s_clk,
         s_rst      => s_rst,
         s_sda      => s_sda,
         sb         => sb,
         w_rdy      => w_rdy
      );

END struct;
