--ACTIVOS
	--TOTAL DE OTROS ACTIVOS CIRCULANTES
		INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (33,'Total de otros activos circulantes','1',1,1);
		
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (1,33,5);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (34,'Valores','270','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (33,34,1);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (35,'Ganancias Financieras por Cobrar','271','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (33,35,2);		
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (36,'Comisiones de seguros por Cobrar','272','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (33,36,3);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (37,'Gastos pagados por anticipado - Impuestos','273','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (33,37,4);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (38,'- Seguros','274','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (33,38,5);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (39,'- Publicidad','279','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (33,39,6);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (40,'- Otros','275','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (33,40,7);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (41,'Vehiculo por entrenamiento de conductores','276','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (33,41,8);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (42,'Vehiculo en arrendamiento Financiero','277','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (33,42,9);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (43,'Vehiculo para Renta','278','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (33,43,10);
		
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (32,33,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (33,34,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (34,35,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (35,36,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (36,37,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (37,38,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (38,39,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (39,40,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (40,41,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (41,42,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (42,43,1);
		
		INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (5,32,'?+?+?+?+?+?+?+?+?+?');

		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (5,33,1);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (5,34,2);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (5,35,3);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (5,36,4);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (5,37,5);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (5,38,6);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (5,39,7);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (5,40,8);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (5,41,9);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (5,42,10);