--ACTIVOS
	--TOTAL DE ACTIVOS CIRCULANTES
		--TOTAL DE EFECTIVOS Y CONTRATOS
		--TOTAL DE CUENTAS POR COBRAR
		--TOTAL DE VEHICULOS NUEVOS
		--TOTAL DE INVENTARIOS
		--TOTAL DE OTROS ACTIVOS CIRCULANTES
	INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (44,'Total de activos circulantes','1',1,1);
	UPDATE dcollectdb.dc_account_relationship SET dc_account_parent_id = 44 WHERE dc_account_parent_id=1;
	
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (1,44,1);
	
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (43,44,1);
	
	INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (6,43,'?+?+?+?+?');
	
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (6,1,1);
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (6,5,2);
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (6,12,3);
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (6,19,4);
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (6,32,5);
		