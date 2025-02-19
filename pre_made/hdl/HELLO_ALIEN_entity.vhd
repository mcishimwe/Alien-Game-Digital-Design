--
-- VHDL Entity pre_made.HELLO_ALIEN.arch_name
--
-- Created:
--          by - rpmais.UNKNOWN (HTC219-304-SPC)
--          at - 13:14:04 12.10.2024
--
-- using Mentor Graphics HDL Designer(TM) 2019.3 (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY HELLO_ALIEN IS
   PORT( 
      btn     : IN     std_logic_vector (3 DOWNTO 0);
      clk     : IN     std_logic;
      rst_n   : IN     std_logic;
      channel : OUT    std_logic_vector (7 DOWNTO 0);
      lat     : OUT    std_logic;
      s_clk   : OUT    std_logic;
      s_rst   : OUT    std_logic;
      s_sda   : OUT    std_logic;
      sb      : OUT    std_logic
   );

-- Declarations

END HELLO_ALIEN ;

