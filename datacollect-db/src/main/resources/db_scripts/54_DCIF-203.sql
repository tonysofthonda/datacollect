ALTER TABLE dcollectdb.dc_formula DROP CONSTRAINT chk_formula ;
ALTER TABLE dcollectdb.dc_formula ADD CONSTRAINT chk_formula CHECK(regexp_like(formula, '^((\?|\d)((\+|\-|\*|\/)*(\?|\d))*)+|(\+|\-|\*|\/)\(((\?|\d)((\+|\-|\*|\/)*(\?|\d))*)+\)$'));

--ANALISIS DE UTILIDAD BRUTA
    --MENUDEO DE AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (139,'Menudeo de autos nuevo Honda','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (136,139,2);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (139,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (140,'Ventas de refacciones y accesorios','411','4',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (139,140,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (140,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (141,'Incentivos ganados','002A','4',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (139,141,2);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (141,4);
    
    --UNIDADES MES ACTUAL
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (227,139,18); --MENUDEO DE AUTOS NUEVO HONDA

    --VENTAS MES ACTUAL
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (228,139,19); --MENUDEO DE AUTOS NUEVO HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (229,140,19); --VENTAS DE REFACCIONES Y ACCESORIOS
    
    --UTILIDAD BRUTA MES ACTUAL
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (230,139,20); --MENUDEO DE AUTOS NUEVO HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (231,140,20); --VENTAS DE REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (232,141,20); --INCENTIVOS GANADOS
    
    --% UNIDADES VENDIDAS MES ACTUAL
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (233,139,21); --MENUDEO DE AUTOS NUEVO HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (234,140,21); --VENTAS DE REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (235,141,21); --INCENTIVOS GANADOS

    --FORMULA DE % UNIDADES VENDIDAS MES ACTUAL
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (50,233,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (50,230,1); --UTILIDAD BRUTA DE MENUDEO DE AUTOS NUEVO HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (50,228,2); --VENTAS DE MENUDEO DE AUTOS NUEVO HONDA

    --UNIDADES DEL AÑO A LA FECHA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (236,139,23); --MENUDEO DE AUTOS NUEVO HONDA

    --VENTAS DEL AÑO A LA FECHA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (237,139,24); --MENUDEO DE AUTOS NUEVO HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (238,140,24); --VENTAS DE REFACCIONES Y ACCESORIOS
    
    --UTILIDAD BRUTA DEL AÑO A LA FECHA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (239,139,25); --MENUDEO DE AUTOS NUEVO HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (240,140,25); --VENTAS DE REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (241,141,25); --INCENTIVOS GANADOS
    
    --% UNIDADES VENDIDAS DEL AÑO A LA FECHA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (242,139,26); --MENUDEO DE AUTOS NUEVO HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (243,140,26); --VENTAS DE REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (244,141,26); --INCENTIVOS GANADOS

    --FORMULA DE % UNIDADES VENDIDAS DEL AÑO A LA FECHA DE MENUDEO DE AUTOS NUEVO HONDA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (51,242,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (51,239,1); --UTILIDAD BRUTA DE MENUDEO DE AUTOS NUEVO HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (51,237,2); --VENTAS DE MENUDEO DE AUTOS NUEVO HONDA