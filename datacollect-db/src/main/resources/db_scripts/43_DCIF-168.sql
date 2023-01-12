--PASIVOS
    --TOTAL DE DEUDA A LARGO PLAZO
    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (91,'Total Deuda a largo plazo','1',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (62,91,2);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (92,'Deuda a largo plazo - propietarios','350','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (91,92,1);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (93,'Deuda a largo plazo otros','353','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (91,93,2);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (94,'Creditos hipotecarios por pagar','355','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (91,94,3);

    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (107,91,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (108,92,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (109,93,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (110,94,1);

    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (25,107,'?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (25,108,1);
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (25,109,2);
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (25,110,3);