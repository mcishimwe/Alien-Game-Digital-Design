-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY pre_made;
CONFIGURATION disp_reg_bank_struct_config OF disp_reg_bank IS
   FOR struct
      FOR ALL : mem_ctl_block
         USE ENTITY pre_made.mem_ctl_block(fsm);
      END FOR;
      FOR ALL : reg_bank_64px
         USE CONFIGURATION pre_made.reg_bank_64px_struct_config;
      END FOR;
   END FOR;
END disp_reg_bank_struct_config;
