--INSERCION DE UN TIPO DE VALOR
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (1, 'Importe');

--ACTIVOS
	--INSERCION DE UNA CUENTA
	INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (1,'Activos','1',1);
	--TOTAL DE EFECTIVOS Y CONTRATOS
		INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (2,'Efectivo y contratos','1',1,1);

		--INSERCION DE LA RELACION DE CUENTAS
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (1,2,1);

		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (3,'Efectivo en Caja','201','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (2,3,1);

		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (4,'Efectivo en Bancos','202','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (2,4,2);

		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (5,'Contratos en Tránsito','205','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (2,5,3);

		--INSERCION DE LA RELACION ENTRE UN TIPO DE VALOR Y UNA CUENTA
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1,2,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (2,3,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (3,4,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (4,5,1);

		--INSERCION DE LA FORMULA DEL TIPO DE VALOR EN UNA CUENTA
		INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (1,1,'?+?+?');

		--INSERCION DE LOS TERMINOS DE LA FORMULA
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (1,2,1);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (1,3,2);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (1,4,3);

	--TOTAL DE CUENTAS POR COBRAR
		INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (6,'Total de cuentas por cobrar','1',1,1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (1,6,2);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (7,'Cuentas por Cobrar - Vehículos','210','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (6,7,1);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (8,'Cuentas por Cobrar - Servicio, Taller y Refacc.','220','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (6,8,2);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (9,'Cuentas por Cobrar a la Fábrica- Honda','221','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (6,9,3);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (10,'Cuentas por Cobrar a la Fábrica- Otras','222','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (6,10,4);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (137,'Garantias por cobrar - Honda','223','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (6,137,5);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (11,'Garantias por cobrar - Otras','224','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (6,11,6);
		
		INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (12,'Estimacion para cuentas dudosas','225','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (6,12,7);
		
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (5,6,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (6,7,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (7,8,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (8,9,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (9,10,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (226,137,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (10,11,1);
		INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (11,12,1);
		
		INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (2,5,'?+?+?+?+?+?+?');
		
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (2,6,1);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (2,7,2);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (2,8,3);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (2,9,4);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (2,226,5);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (2,10,6);
		INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (2,11,7);
