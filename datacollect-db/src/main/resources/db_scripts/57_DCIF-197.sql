--ANALISIS DE UTILIDAD BRUTA
    --C DEPARTAMENTO DE VEHIC. USADOS
    INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (148,'C Departamento de vehiculos usados','4',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (136,148,5);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (148,4);

    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (149,'Total dpto vehiculos usados','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (148,149,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (149,4);

    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (150,'Total dpto vehiculos','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (148,150,2);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (150,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (151,'Autos menudeo','440','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (149,151,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (151,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (152,'Autos reacondicionamiento','641','4',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (149,152,2);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (152,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (153,'Camiones y otros menudeo','445','4',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (149,153,3);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (153,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (154,'Camiones y otros menudeo reacondicionamiento','645','4',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (149,154,4);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (154,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (155,'Mayoreo','442','4',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (149,155,5);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (155,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (156,'Ajustes al inventario','643','4',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (149,156,6);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (156,4);

    --MES ACTUAL
    --UNIDADES
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (283,149,18); --TOTAL DEPTO VEHICULOS USADOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (284,151,18); --AUTOS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (285,153,18); --CAMIONES Y OTROS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (286,155,18); --MAYOREO

    --FORMULA UNIDADES MES ACTUAL DE TOTAL DEPTO VEHICULOS USADOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (64,283,'?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (64,284,1); --UNIDADES DE AUTOS MENUDEO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (64,285,2); --UNIDADES DE CAMIONES Y OTROS MENUDEO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (64,286,3); --UNIDADES DE MAYOREO¿

    --VENTAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (287,149,19); --TOTAL DEPTO VEHICULOS USADOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (288,150,19); --TOTAL DEPTO VEHICULOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (289,151,19); --AUTOS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (290,153,19); --CAMIONES Y OTROS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (291,155,19); --MAYOREO

    --FORMULA VENTAS MES ACTUAL DE TOTAL DEPTO VEHICULOS USADOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (65,287,'?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (65,289,1); --VENTAS DE AUTOS MENUDEO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (65,290,2); --VENTAS DE CAMIONES Y OTROS MENUDEO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (65,291,3); --VENTAS DE MAYOREO

    --FORMULA VENTAS MES ACTUAL DE TOTAL DEPTO VEHICULOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (66,288,'?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (66,247,1); --VENTAS DE TOTAL DEPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (66,262,2); --VENTAS DE TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (66,287,3); --VENTAS DE TOTAL DEPTO VEHICULOS USADOS

    --UTILIDAD BRUTA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (292,149,20); --TOTAL DEPTO VEHICULOS USADOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (293,150,20); --TOTAL DEPTO VEHICULOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (294,151,20); --AUTOS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (295,152,20); --AUTOS REACONDICIONAMIENTO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (296,153,20); --CAMIONES Y OTROS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (297,154,20); --CAMIONES Y OTROS MENUDEO REACONDICIONAMIENTO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (298,155,20); --MAYOREO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (299,156,20); --AJUSTES AL INVENTARIO

    --FORMULA UTILIDAD BRUTA MES ACTUAL DE TOTAL DEPTO VEHICULOS USADOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (67,292,'?+?+?+?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (67,294,1); --UTILIDAD BRUTA DE AUTOS MENUDEO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (67,295,2); --UTILIDAD BRUTA DE AUTOS REACONDICIONAMIENTO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (67,296,3); --UTILIDAD BRUTA DE CAMIONES Y OTROS MENUDEO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (67,297,4); --UTILIDAD BRUTA DE CAMIONES Y OTROS MENUDEO REACONDICIONAMIENTO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (67,298,5); --UTILIDAD BRUTA DE MAYOREO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (67,299,6); --UTILIDAD BRUTA DE AJUSTES AL INVENTARIO

    --FORMULA UTILIDAD BRUTA MES ACTUAL DE TOTAL DEPTO VEHICULOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (68,293,'?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (68,249,1); --UTILIDAD BRUTA DE TOTAL DEPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (68,265,2); --UTILIDAD BRUTA DE TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (68,292,3); --UTILIDAD BRUTA DE TOTAL DEPTO VEHICULOS USADOS

     --% UNIDADES VENDIDAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (300,149,21); --TOTAL DEPTO VEHICULOS USADOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (301,151,21); --AUTOS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (302,152,21); --AUTOS REACONDICIONAMIENTO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (303,153,21); --CAMIONES Y OTROS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (304,154,21); --CAMIONES Y OTROS MENUDEO REACONDICIONAMIENTO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (305,155,21); --MAYOREO

    --FORMULA % UNIDADES VENDIDAS MES ACTUAL DE TOTAL DEPTO VEHICULOS USADOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (69,300,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (69,292,1); --UTILIDAD BRUTA DE TOTAL DEPTO VEHICULOS USADOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (69,287,2); --VENTAS DE TOTAL DEPTO VEHICULOS USADOS


    --FORMULA % UNIDADES VENDIDAS MES ACTUAL DE AUTOS MENUDEO
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (70,301,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (70,294,1); --UTILIDAD BRUTA DE AUTOS MENUDEO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (70,289,2); --VENTAS DE AUTOS MENUDEO
    
    --AÑO A LA FECHA
    --UNIDADES
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (306,149,23); --TOTAL DEPTO VEHICULOS USADOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (307,151,23); --AUTOS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (308,153,23); --CAMIONES Y OTROS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (309,155,23); --MAYOREO

    --VENTAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (310,149,24); --TOTAL DEPTO VEHICULOS USADOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (311,150,24); --TOTAL DEPTO VEHICULOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (312,151,24); --AUTOS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (313,153,24); --CAMIONES Y OTROS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (314,155,24); --MAYOREO

    --UTILIDAD BRUTA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (315,149,25); --TOTAL DEPTO VEHICULOS USADOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (316,150,25); --TOTAL DEPTO VEHICULOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (317,151,25); --AUTOS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (318,152,25); --AUTOS REACONDICIONAMIENTO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (319,153,25); --CAMIONES Y OTROS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (320,154,25); --CAMIONES Y OTROS MENUDEO REACONDICIONAMIENTO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (321,155,25); --MAYOREO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (322,156,25); --AJUSTES AL INVENTARIO

     --% UNIDADES VENDIDAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (323,149,26); --TOTAL DEPTO VEHICULOS USADOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (324,151,26); --AUTOS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (325,152,26); --AUTOS REACONDICIONAMIENTO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (326,153,26); --CAMIONES Y OTROS MENUDEO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (327,154,26); --CAMIONES Y OTROS MENUDEO REACONDICIONAMIENTO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (328,155,26); --MAYOREO

    --FORMULA % UNIDADES VENDIDAS MES ACTUAL DE TOTAL DEPTO VEHICULOS USADOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (71,323,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (71,315,1); --UTILIDAD BRUTA DE TOTAL DEPTO VEHICULOS USADOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (71,310,2); --VENTAS DE TOTAL DEPTO VEHICULOS USADOS


    --FORMULA % UNIDADES VENDIDAS MES ACTUAL DE AUTOS MENUDEO
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (72,324,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (72,317,1); --UTILIDAD BRUTA DE AUTOS MENUDEO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (72,312,2); --VENTAS DE AUTOS MENUDEO
    