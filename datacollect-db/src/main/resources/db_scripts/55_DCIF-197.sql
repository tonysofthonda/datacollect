--ANALISIS DE UTILIDAD BRUTA
    --TOTAL DEPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (142,'Total dpto autos nuevos Honda','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (136,142,3);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (142,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (143,'Flotilla-Honda','410','4',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (142,143,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (143,4);
    
    --UNIDADES MES ACTUAL
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (245,142,18); --TOTAL DPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (246,143,18); --FLOTILLA-HONDA

    --VENTAS MES ACTUAL
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (247,142,19); --TOTAL DPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (248,143,19); --FLOTILLA-HONDA
    
    --UTILIDAD BRUTA MES ACTUAL
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (249,142,20); --TOTAL DPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (250,143,20); --FLOTILLA-HONDA
    
    --% UNIDADES VENDIDAS MES ACTUAL
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (251,142,21); --TOTAL DPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (252,143,21); --FLOTILLA-HONDA

    --FORMULA DE UNIDADES MES ACTUAL DE TOTAL DPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (52,245,'?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (52,227,1); --MENUDEO DE AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (52,246,2); --FLOTILLA-HONDA

    --FORMULA DE VENTAS MES ACTUAL DE TOTAL DPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (53,247,'?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (53,228,1); --MENUDEO DE AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (53,248,2); --FLOTILLA-HONDA
    
    --FORMULA DE UTILIDAD BRUTA MES ACTUAL DE TOTAL DPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (54,249,'?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (54,230,1); --MENUDEO DE AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (54,250,2); --FLOTILLA-HONDA

    --FORMULA DE % UNIDADES VENDIDAS DEL MES ACTUAL DE TOTAL DPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (55,251,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (55,249,1); --UTILIDAD BRUTA TOTAL DPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (55,247,2); --VENTAS TOTAL DPTO AUTOS NUEVOS HONDA

    --UNIDADES DE AÑO A LA FECHA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (253,142,23); --TOTAL DPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (254,143,23); --FLOTILLA-HONDA

    --VENTAS DE AÑO A LA FECHA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (255,142,24); --TOTAL DPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (256,143,24); --FLOTILLA-HONDA
    
    --UTILIDAD BRUTA DE AÑO A LA FECHA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (257,142,25); --TOTAL DPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (258,143,25); --FLOTILLA-HONDA
    
    --% UNIDADES VENDIDAS DE AÑO A LA FECHA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (259,142,26); --TOTAL DPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (260,143,26); --FLOTILLA-HONDA

    --FORMULA DE % UNIDADES VENDIDAS DEL AÑO A LA FECHA DE TOTAL DPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (56,259,'?*100/?');
    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (56,257,1); --UTILIDAD BRUTA TOTAL DPTO AUTOS NUEVOS HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (56,255,2); --VENTAS TOTAL DPTO AUTOS NUEVOS HONDA