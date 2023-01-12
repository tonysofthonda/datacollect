--ACTIVOS
	--TOTAL DE VEHICULOS NUEVOS
		INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (13,'Total de vehiculos nuevos','1',1,1);
		
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (1,13,3);

		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (14,'Demo Autos- Honda ( Us.)','230','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (13,14,1);

		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (15,'Autos Demos - Otros','231','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (13,15,2);

		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (16,'Autos Nuevos Honda','234','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (13,16,3);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (17,'Autos Nuevos Otros','235','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (13,17,4);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (18,'Otros vehiculos Nuevos, excepto Autos','240','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (13,18,5);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (19,'Reserva U.E.P.S. para vehículos nuevos','242','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (13,19,6);
		
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (12,13,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (13,14,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (14,15,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (15,16,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,read_only,default_value) VALUES (16,17,1,1,'0');
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,read_only,default_value) VALUES (17,18,1,1,'0');
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (18,19,1);
		
		INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (3,12,'?+?+?+?+?+?+?');
		
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (3,13,1);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (3,14,2);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (3,15,3);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (3,16,4);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (3,17,5);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (3,18,6);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (3,19,7);