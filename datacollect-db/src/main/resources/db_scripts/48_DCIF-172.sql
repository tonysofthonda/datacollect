--PASIVOS
    --VALOR TOTAL
    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (122,'Utilidad de otras operaciones','098','1',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (98,122,10);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (123,'Estimacion de impuesto sobre la renta','099','1',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (98,123,11);

    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (124,'Utilidad neta','1',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (98,124,12);

    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (125,'Capital contable total','1',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (98,125,13);

    --IMPORTE
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (188,122,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (189,123,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (190,124,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (191,125,1);

    --FORMULA ESTIMACION DE IMPUESTO SOBRE LA RENTA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (32,189,'?*0.3');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (32,175,1); --TOTAL DE UTILIDAD O PERDIDA

    --FORMULA UTILIDAD NETA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (33,190,'?-?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (33,175,1); --TOTAL DE UTILIDAD O PERDIDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (33,189,2); --IMPORTE DE ESTIMACION DE IMPUESTO SOBRE LA RENTA

    --FORMULA CAPITAL CONTABLE TOTAL
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (34,191,'?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (34,113,1); --IMPORTE DE CAPITAL SOCIAL
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (34,119,2); --IMPORTE DE DISTRIBUCIONES - EMPRESAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (34,190,3); --IMPORTE DE UTILIDAD NETA