-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY pre_made;
CONFIGURATION display_controller_struct_config OF display_controller IS
   FOR struct
      FOR ALL : disp_gamma
         USE ENTITY pre_made.disp_gamma(fsm);
      END FOR;
      FOR ALL : disp_reg_bank
         USE CONFIGURATION pre_made.disp_reg_bank_struct_config;
      END FOR;
      FOR ALL : disp_rst
         USE ENTITY pre_made.disp_rst(fsm);
      END FOR;
      FOR ALL : disp_serial_led_cannon
         USE ENTITY pre_made.disp_serial_led_cannon(fsm);
      END FOR;
      FOR ALL : disp_serial_tx
         USE ENTITY pre_made.disp_serial_tx(fsm);
      END FOR;
   END FOR;
END display_controller_struct_config;
