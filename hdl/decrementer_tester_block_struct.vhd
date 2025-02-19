-- VHDL Entity tb_lib.decrementer_tester_block.symbol
--
-- Created:
--          by - kayra.UNKNOWN (HTC219-320-SPC)
--          at - 10:49:10 06/19/18
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2019.3 (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY decrementer_tester_block IS
   PORT( 
      res     : IN     std_logic_vector (2 DOWNTO 0);
      correct : OUT    std_logic;
      to_duv  : OUT    std_logic_vector (2 DOWNTO 0)
   );

-- Declarations

END decrementer_tester_block ;

--
-- VHDL Architecture tb_lib.decrementer_tester_block.struct
--
-- Created:
--          by - kayra.UNKNOWN (HTC219-320-SPC)
--          at - 13:46:31 09/12/19
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2019.3 (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.numeric_std.all;

LIBRARY tb_lib;

ARCHITECTURE struct OF decrementer_tester_block IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL reference_res : std_logic_vector(2 DOWNTO 0);

   -- Implicit buffer signal declarations
   SIGNAL to_duv_internal : std_logic_vector (2 DOWNTO 0);


   -- Component Declarations
   COMPONENT crementer_tester
   PORT (
      reference_res : IN     std_logic_vector (2 DOWNTO 0);
      res           : IN     std_logic_vector (2 DOWNTO 0);
      correct       : OUT    std_logic;
      to_duv        : OUT    std_logic_vector (2 Downto 0)
   );
   END COMPONENT;
   COMPONENT decre_vhdl
   PORT (
      to_duv        : IN     std_logic_vector (2 DOWNTO 0);
      reference_res : OUT    std_logic_vector (2 DOWNTO 0)
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : crementer_tester USE ENTITY tb_lib.crementer_tester;
   FOR ALL : decre_vhdl USE ENTITY tb_lib.decre_vhdl;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_0 : crementer_tester
      PORT MAP (
         reference_res => reference_res,
         to_duv        => to_duv_internal,
         correct       => correct,
         res           => res
      );
   U_1 : decre_vhdl
      PORT MAP (
         to_duv        => to_duv_internal,
         reference_res => reference_res
      );

   -- Implicit buffered output assignments
   to_duv <= to_duv_internal;

END struct;
