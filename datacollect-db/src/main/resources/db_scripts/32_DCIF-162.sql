--ACTIVOS
	--TOTAL DE INVENTARIOS
		INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (20,'Total de inventarios','1',1,1);
		
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (1,20,4);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (21,'Autos Usados','250','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (20,21,1);
		
		INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (22,'Memo: + de 30 Días ( Us. )','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (20,22,2);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (23,'Vehículos Usados excepto autos','252','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (20,23,3);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (24,'Refacciones Autos Honda','260','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (20,24,4);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (25,'Accesorios Autos Honda','261','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (20,25,5);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (26,'Refacciones y Accesorios Otros','262','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (20,26,6);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (27,'Gasolina Aceite y Grasa','263','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (20,27,7);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (28,'Materiales taller de Carrocerias','264','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (20,28,8);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (29,'Reparaciones subcontratadas','265','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (20,29,9);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (30,'Trabajo en proceso - Mano de Obra','266','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (20,30,10);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (31,'Inventario no Automotriz','268','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (20,31,11);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (32,'Reserva U.E.P.S. - Otros','269','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (20,32,12);
		
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (19,20,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (20,21,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (21,22,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (22,23,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (23,24,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (24,25,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (25,26,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (26,27,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (27,28,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (28,29,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (29,30,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (30,31,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (31,32,1);
		
		INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (4,19,'?+?+?+?+?+?+?+?+?+?+?+?');
		
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (4,20,1);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (4,21,2);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (4,22,3);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (4,23,4);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (4,24,5);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (4,25,6);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (4,26,7);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (4,27,8);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (4,28,9);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (4,29,10);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (4,30,11);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (4,31,12);