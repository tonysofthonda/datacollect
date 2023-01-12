--ANALISIS DE UTILIDAD BRUTA
    --F DEPARTAMENTO DE REF Y ACCESORIOS
    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (203,'Gasolina aceite y grasa','499','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (177,203,4);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (203,4);
    
    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (204,'Total depto de refacciones y acce','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (177,204,5);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (204,4);

    --MES ACTUAL
--UNIDADES
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (593,204,18);
--VENTAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (594,203,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (595,204,19);

    --FORMULA VENTAS DE TOTAL DEPTO DE REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (149,595,'?+?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (149,458,1); --VENTAS DE TOTAL DE REFACCIONES HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (149,512,2); --VENTAS DE TOTAL ACCESORIOS HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (149,561,3); --VENTAS DE OTRAS REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (149,594,4); --VENTAS DE GASOLINA ACEITE Y GRASA

--UTILIDAD BRUTA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (596,203,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (597,204,20);

    --FORMULA UTILIDAD BRUTA DE TOTAL DEPTO DE REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (150,597,'?+?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (150,465,1); --UTILIDAD BRUTA DE TOTAL DE REFACCIONES HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (150,519,2); --UTILIDAD BRUTA DE TOTAL ACCESORIOS HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (150,566,3); --UTILIDAD BRUTA DE OTRAS REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (150,596,4); --UTILIDAD BRUTA DE GASOLINA ACEITE Y GRASA
--% UNIDADES VENDIDAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (598,203,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (599,204,21);

    --FORMULA % UNIDADES VENDIDAS DE GASOLINA ACEITE Y GRASA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (151,598,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (151,596,1); --UTILIDAD BRUTA DE GASOLINA ACEITE Y GRASA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (151,594,2); --VENTAS DE GASOLINA ACEITE Y GRASA
    
    --FORMULA % UNIDADES VENDIDAS DE TOTAL DEPTO DE REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (152,599,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (152,597,1); --UTILIDAD BRUTA DE TOTAL DEPTO DE REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (152,595,2); --VENTAS DE TOTAL DEPTO DE REFACCIONES Y ACCESORIOS
    
    --AÑO A LA FECHA
--UNIDADES
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (600,204,23);
--VENTAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (601,203,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (602,204,24);

--UTILIDAD BRUTA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (603,203,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (604,204,25);

--% UNIDADES VENDIDAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (605,203,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (606,204,26);

    --FORMULA % UNIDADES VENDIDAS DE GASOLINA ACEITE Y GRASA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (153,605,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (153,603,1); --UTILIDAD BRUTA DE GASOLINA ACEITE Y GRASA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (153,601,2); --VENTAS DE GASOLINA ACEITE Y GRASA
    
    --FORMULA % UNIDADES VENDIDAS DE TOTAL DEPTO DE REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (154,606,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (154,604,1); --UTILIDAD BRUTA DE TOTAL DEPTO DE REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (154,602,2); --VENTAS DE TOTAL DEPTO DE REFACCIONES Y ACCESORIOS