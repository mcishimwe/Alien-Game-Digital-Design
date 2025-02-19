-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY pre_made;
CONFIGURATION reg_bank_1col_struct_config OF reg_bank_1col IS
   FOR struct
      FOR ALL : reg_bank_1px
         USE ENTITY pre_made.reg_bank_1px(struct);
      END FOR;
   END FOR;
END reg_bank_1col_struct_config;
