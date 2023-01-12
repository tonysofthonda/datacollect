--ANALISIS DE UTILIDAD BRUTA
    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (205,'Total todos los departamentos','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (136,205,9);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (205,4);
    
    --MES ACTUAL
--VENTAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (607,205,19);

    --FORMULA VENTAS DE TOTAL TODOS LOS DEPARTAMENTOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (155,607,'?+?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (155,288,1); --VENTAS DE TOTAL DEPARTAMENTO VEHICULOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (155,346,2); --VENTAS DE TOTAL DEPARTAMENTO SERVICIO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (155,413,3); --VENTAS DE TOTAL DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (155,595,4); --VENTAS DE TOTAL DEPTO DE REFACCIONES Y ACCE
--UTILIDAD BRUTA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (608,205,20);

    --FORMULA UTILIDAD BRUTA DE TOTAL TODOS LOS DEPARTAMENTOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (156,608,'?+?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (156,293,1); --UTILIDAD BRUTA DE TOTAL DEPARTAMENTO VEHICULOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (156,356,2); --UTILIDAD BRUTA DE TOTAL DEPARTAMENTO SERVICIO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (156,419,3); --UTILIDAD BRUTA DE TOTAL DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (156,597,4); --UTILIDAD BRUTA DE TOTAL DEPTO DE REFACCIONES Y ACCE
--% UNIDADES VENDIDAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (609,205,21);

    --FORMULA % UNIDADES VENDIDAS DE TOTAL TODOS LOS DEPARTAMENTOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (157,609,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (157,608,1); --UTILIDAD BRUTA DE TOTAL TODOS LOS DEPARTAMENTOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (157,607,2); --VENTAS DE TOTAL TODOS LOS DEPARTAMENTOS
    
    --AÑO A LA FECHA
--VENTAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (610,205,24);
--UTILIDAD BRUTA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (611,205,25);
--% UNIDADES VENDIDAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (612,205,26);

    --FORMULA % UNIDADES VENDIDAS DE TOTAL TODOS LOS DEPARTAMENTOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (158,612,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (158,611,1); --UTILIDAD BRUTA DE TOTAL TODOS LOS DEPARTAMENTOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (158,610,2); --VENTAS DE TOTAL TODOS LOS DEPARTAMENTOS