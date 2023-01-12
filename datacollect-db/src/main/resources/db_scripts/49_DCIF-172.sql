--PASIVOS
    --PASIVOS TOTAL Y CAPITAL CONTABLE
    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (126,'Pasivo total y Capital Contable','1',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (62,126,5);

    --IMPORTE
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (192,126,1);


    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (35,192,'?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (35,106,1);
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (35,107,2);
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (35,191,3);