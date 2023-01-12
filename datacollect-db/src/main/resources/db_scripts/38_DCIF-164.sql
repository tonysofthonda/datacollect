--ACTIVOS
	--TOTAL DE OTROS ACTIVOS
    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (55,'Total de otros activos','1',1,1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (1,55,3);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (56,'Seguro de vida - Valor en efectivo','291','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (55,56,1);
	
    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (57,'Documentos y Cuentas por Cobrar - funcionarios y empleados','293','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (55,57,2);
	
    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (58,'Otros documentos y cuentas por cobrar','295','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (55,58,3);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (59,'Otros activos no automotrices','296','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (55,59,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (60,'Inversiones y anticipos - Otras Operaciones','297','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (55,60,5);

    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (73,55,1);
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (74,56,1);
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (75,57,1);
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (76,58,1);
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (77,59,1);
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (78,60,1);

    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (19,73,'?+?+?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (19,74,1);
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (19,75,2);
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (19,76,3);
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (19,77,4);
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (19,78,5);