--ACTIVOS
	--TOTAL DE ACTIVOS
        INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (61,'Activos totales','1',1,1);
        INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (1,61,4);

        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (79,61,1);

        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (20,79,'?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (20,43,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (20,63,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (20,73,3);