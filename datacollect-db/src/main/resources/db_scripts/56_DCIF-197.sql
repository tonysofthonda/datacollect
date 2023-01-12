--ANALISIS DE UTILIDAD BRUTA
    --B INTERCAMBIOS
    INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (144,'B Intercambios','4',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (136,144,4);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (144,4);

    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (145,'Total de otros vehiculos nuevos','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (144,145,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (145,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (146,'Intercambios entre Distribuidores','420','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (145,146,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (146,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (147,'Ventas de refacciones y accesorios','431','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (145,147,2);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (147,4);

    --MES ACTUAL
    --UNIDADES
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (281,145,18); --TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (261,146,18); --INTERCAMBIO ENTRE DISTRIBUIDORES

    --VENTAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (262,145,19); --TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (263,146,19); --INTERCAMBIO ENTRE DISTRIBUIDORES
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (264,147,19); --VENTAS DE REFACCIONES Y ACCESORIOS
    
    --UTILIDAD BRUTA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (265,145,20); --TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (266,146,20); --INTERCAMBIO ENTRE DISTRIBUIDORES
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (267,147,20); --VENTAS DE REFACCIONES Y ACCESORIOS
    
    --% UNIDADES VENDIDAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (268,145,21); --TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (269,146,21); --INTERCAMBIO ENTRE DISTRIBUIDORES
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (270,147,21); --VENTAS DE REFACCIONES Y ACCESORIOS

    --FORMULA DE UNIDADES DEL MES ACTUAL DE TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (63,281,'?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (63,261,1); --UNIDADES DE INTERCAMBIO ENTRE DISTRIBUIDORES

    --FORMULA DE VENTAS DEL MES ACTUAL DE TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (57,262,'?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (57,263,1); --VENTAS DE INTERCAMBIO ENTRE DISTRIBUIDORES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (57,264,2); --VENTAS DE VENTAS DE REFACCIONES Y ACCESORIOS

    --FORMULA DE UTILIDAD BRUTA DEL MES ACTUAL DE TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (58,265,'?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (58,266,1); --UTILIDAD BRUTA DE INTERCAMBIO ENTRE DISTRIBUIDORES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (58,267,2); --UTILIDAD BRUTA DE VENTAS DE REFACCIONES Y ACCESORIOS

    --FORMULA DE % UNIDADES VENDIDAS DEL MES ACTUAL DE TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (59,268,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (59,265,1); --UTILIDAD BRUTA DE TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (59,262,2); --VENTAS DE TOTAL DE OTROS VEHICULOS NUEVOS

    --FORMULA DE % UNIDADES VENDIDAS DEL MES ACTUAL DE INTERCAMBIO ENTRE DISTRIBUIDORES
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (60,269,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (60,266,1); --UTILIDAD BRUTA DE INTERCAMBIO ENTRE DISTRIBUIDORES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (60,263,2); --VENTAS DE INTERCAMBIO ENTRE DISTRIBUIDORES

    --AÑO A LA FECHA
    --UNIDADES
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (282,145,23); --TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (271,146,23); --INTERCAMBIO ENTRE DISTRIBUIDORES

    --VENTAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (272,145,24); --TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (273,146,24); --INTERCAMBIO ENTRE DISTRIBUIDORES
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (274,147,24); --VENTAS DE REFACCIONES Y ACCESORIOS
    
    --UTILIDAD BRUTA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (275,145,25); --TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (276,146,25); --INTERCAMBIO ENTRE DISTRIBUIDORES
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (277,147,25); --VENTAS DE REFACCIONES Y ACCESORIOS
    
    --% UNIDADES VENDIDAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (278,145,26); --TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (279,146,26); --INTERCAMBIO ENTRE DISTRIBUIDORES
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (280,147,26); --VENTAS DE REFACCIONES Y ACCESORIOS

    --FORMULA DE % UNIDADES VENDIDAS DEL AÑO A LA FECHA DE TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (61,278,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (61,275,1); --UTILIDAD BRUTA DE TOTAL DE OTROS VEHICULOS NUEVOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (61,272,2); --VENTAS DE TOTAL DE OTROS VEHICULOS NUEVOS

    --FORMULA DE % UNIDADES VENDIDAS DEL AÑO A LA FECHA DE INTERCAMBIO ENTRE DISTRIBUIDORES
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (62,279,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (62,276,1); --UTILIDAD BRUTA DE INTERCAMBIO ENTRE DISTRIBUIDORES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (62,273,2); --VENTAS DE INTERCAMBIO ENTRE DISTRIBUIDORES
