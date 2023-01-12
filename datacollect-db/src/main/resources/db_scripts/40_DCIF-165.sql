--PASIVOS
INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (62,'Pasivos','1',1);
    --TOTAL DE PASIVOS CIRCULANTES
    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (63,'Total de pasivos circulantes','1',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (62,63,1);
        --TOTAL DE CUENTAS Y DOCTOS POR PAGAR
        INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (64,'Total de cuentas y doctos por pagar','1',1,1);
        INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (63,64,1);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (65,'Cuentas por pagar - Proveedores','300','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (64,65,1);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (66,'Obligaciones por vehiculos tomados en canje','320','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (64,66,2);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (67,'Derechos de licencia y registro','321','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (64,67,3);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (68,'Depositos de clientes','322','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (64,68,4);
        
        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (69,'Anticipos sobre reclamos de garantia','323','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (64,69,5);

        --CUENTAS POR PAGAR
        INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (70,'Cuentas por pagar','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (64,70,6);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (71,'Vehiculos nuevos y demos','324','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (70,71,1);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (72,'Vehiculos usados','325','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (70,72,2);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (73,'Vehiculos en arrenda. financiero','326','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (70,73,3);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (74,'Otros','328','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (70,74,4);
        --FIN CUENTAS POR PAGAR
        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (75,'Deuda a largo plazo porción circulante','329','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (64,75,7);

        --IMPORTE
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (80,64,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (81,65,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (82,66,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (83,67,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (84,68,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (85,69,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (86,71,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (87,72,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (88,73,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (89,74,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (90,75,1);

        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (21,80,'?+?+?+?+?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (21,81,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (21,82,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (21,83,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (21,84,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (21,85,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (21,86,6);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (21,87,7);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (21,88,8);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (21,89,9);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (21,90,10);