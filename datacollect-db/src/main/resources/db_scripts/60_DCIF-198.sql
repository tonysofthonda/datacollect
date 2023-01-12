--ANALISIS DE UTILIDAD BRUTA
    --F DEPARTAMENTO DE REF Y ACCESORIOS
    INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (177,'F Departamento de ref. y accesorios','4',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (136,177,8);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (177,4);

    --TOTAL DE REFACCIONES HONDA
    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (178,'Total de refacciones Honda','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (177,178,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (178,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (179,'Orden de reparacion clientes','470','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (178,179,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (179,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (180,'Orden de reparacion taller de carrocerias','471','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (178,180,2);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (180,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (181,'Orden de reparacion taller garantias','472','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (178,181,3);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (181,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (182,'Orden de reparacion interna','473','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (178,182,4);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (182,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (183,'Mostrador menudeo','474','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (178,183,5);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (183,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (184,'Mostrador mayoreo','475','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (178,184,6);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (184,4);
    
    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (185,'Ajustes de inventario','676','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (178,185,7);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (185,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (186,'Descuentos sobre compras','677','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (178,186,8);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (186,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (187,'Compensacion refacciones mayoreo','678','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (178,187,9);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (187,4);

    --MES ACTUAL
--UNIDADES
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (455,178,18);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (456,183,18);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (457,184,18);

--VENTAS
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (458,178,19);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (459,179,19);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (460,180,19);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (461,181,19);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (462,182,19);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (463,183,19);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (464,184,19);

   --FORMULA DE VENTAS DE TOTAL DE REFACCIONES HONDA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (111,458,'?+?+?+?+?+?');
    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (111,459,1); --VENTAS DE ORDEN DE REPARACION CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (111,460,2); --VENTAS DE ORDEN DE REPARACION TALLER DE CARROCERIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (111,461,3); --VENTAS DE ORDEN DE REPARACION GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (111,462,4); --VENTAS DE ORDEN DE REPARACION INTERNA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (111,463,5); --VENTAS DE MOSTRADOR MENUDEO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (111,464,6); --VENTAS DE MOSTRADOR MAYOREO

--UTILIDAD BRUTA
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (465,178,20);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (466,179,20);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (467,180,20);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (468,181,20);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (469,182,20);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (470,183,20);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (471,184,20);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (472,185,20);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (473,186,20);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (474,187,20);

   --FORMULA DE UTILIDAD BRUTA DE TOTAL DE REFACCIONES HONDA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (112,465,'?+?+?+?+?+?+?+?+?');
    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (112,466,1); --UTILIDAD BRUTA DE ORDEN DE REPARACION CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (112,467,2); --UTILIDAD BRUTA DE ORDEN DE REPARACION TALLER DE CARROCERIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (112,468,3); --UTILIDAD BRUTA DE ORDEN DE REPARACION GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (112,469,4); --UTILIDAD BRUTA DE ORDEN DE REPARACION INTERNA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (112,470,5); --UTILIDAD BRUTA DE MOSTRADOR MENUDEO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (112,471,6); --UTILIDAD BRUTA DE MOSTRADOR MAYOREO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (112,472,7); --UTILIDAD BRUTA DE AJUSTES DE INVENTARIO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (112,473,8); --UTILIDAD BRUTA DE DESCUENTOS SOBRE COMPRAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (112,474,9); --UTILIDAD BRUTA DE COMPENSACION REFACCIONES MAYOREO

--% UNIDADES VENDIDAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (475,178,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (476,179,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (477,180,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (478,181,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (479,182,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (480,183,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (481,184,21);

   --FORMULA DE % UNIDADES VENDIDAS DE TOTAL DE REFACCIONES HONDA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (113,475,'?*100/?');
    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (113,465,1); --UTILIDAD BRUTA DE TOTAL DE REFACCIONES HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (113,458,2); --VENTAS DE TOTAL DE REFACCIONES HONDA
    
    --FORMULA DE % UNIDADES VENDIDAS DE ORDEN DE REPARACION CLIENTES
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (114,476,'?*100/?');
    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (114,466,1); --UTILIDAD BRUTA DE ORDEN DE REPARACION CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (114,459,2); --VENTAS DE ORDEN DE REPARACION CLIENTES

    --FORMULA DE % UNIDADES VENDIDAS DE ORDEN DE REPARACION TALLER CARROCERIAS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (115,477,'?*100/?');
    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (115,467,1); --UTILIDAD BRUTA DE ORDEN DE REPARACION TALLER CARROCERIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (115,460,2); --VENTAS DE ORDEN DE REPARACION TALLER CARROCERIAS

    --FORMULA DE % UNIDADES VENDIDAS DE ORDEN DE REPARACION GARANTIAS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (116,478,'?*100/?');
    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (116,468,1); --UTILIDAD BRUTA DE ORDEN DE REPARACION GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (116,461,2); --VENTAS DE ORDEN DE REPARACION GARANTIAS

    --FORMULA DE % UNIDADES VENDIDAS DE ORDEN DE REPARACION INTERNA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (117,479,'?*100/?');
    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (117,469,1); --UTILIDAD BRUTA DE ORDEN DE REPARACION INTERNA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (117,462,2); --VENTAS DE ORDEN DE REPARACION INTERNA

    --FORMULA DE % UNIDADES VENDIDAS DE MOSTRADOR MENUDEO
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (118,480,'?*100/?');
    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (118,470,1); --UTILIDAD BRUTA DE MOSTRADOR MENUDEO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (118,463,2); --VENTAS DE ORDEN DE MOSTRADOR MENUDEO

    --AÑO A LA FECHA
--UNIDADES
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (482,178,23);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (483,183,23);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (484,184,23);

--VENTAS
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (485,178,24);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (486,179,24);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (487,180,24);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (488,181,24);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (489,182,24);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (490,183,24);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (491,184,24);

--UTILIDAD BRUTA
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (492,178,25);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (493,179,25);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (494,180,25);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (495,181,25);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (496,182,25);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (497,183,25);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (498,184,25);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (499,185,25);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (500,186,25);
   INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (501,187,25);

--% UNIDADES VENDIDAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (502,178,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (503,179,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (504,180,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (505,181,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (506,182,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (507,183,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (508,184,26);

   --FORMULA DE % UNIDADES VENDIDAS DE TOTAL DE REFACCIONES HONDA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (119,502,'?*100/?');
    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (119,492,1); --UTILIDAD BRUTA DE TOTAL DE REFACCIONES HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (119,485,2); --VENTAS DE TOTAL DE REFACCIONES HONDA
    
    --FORMULA DE % UNIDADES VENDIDAS DE ORDEN DE REPARACION CLIENTES
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (120,503,'?*100/?');
    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (120,493,1); --UTILIDAD BRUTA DE ORDEN DE REPARACION CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (120,486,2); --VENTAS DE ORDEN DE REPARACION CLIENTES

    --FORMULA DE % UNIDADES VENDIDAS DE ORDEN DE REPARACION TALLER CARROCERIAS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (121,504,'?*100/?');
    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (121,494,1); --UTILIDAD BRUTA DE ORDEN DE REPARACION TALLER CARROCERIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (121,487,2); --VENTAS DE ORDEN DE REPARACION TALLER CARROCERIAS

    --FORMULA DE % UNIDADES VENDIDAS DE ORDEN DE REPARACION GARANTIAS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (122,505,'?*100/?');
    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (122,495,1); --UTILIDAD BRUTA DE ORDEN DE REPARACION GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (122,488,2); --VENTAS DE ORDEN DE REPARACION GARANTIAS

    --FORMULA DE % UNIDADES VENDIDAS DE ORDEN DE REPARACION INTERNA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (123,506,'?*100/?');
    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (123,496,1); --UTILIDAD BRUTA DE ORDEN DE REPARACION INTERNA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (123,489,2); --VENTAS DE ORDEN DE REPARACION INTERNA

    --FORMULA DE % UNIDADES VENDIDAS DE MOSTRADOR MENUDEO
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (124,507,'?*100/?');
    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (124,497,1); --UTILIDAD BRUTA DE MOSTRADOR MENUDEO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (124,490,2); --VENTAS DE ORDEN DE MOSTRADOR MENUDEO