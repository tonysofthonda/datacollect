--PASIVOS
    --TOTAL DE PASIVOS CIRCULANTES
        --TOTAL DE PASIVOS ACUMULADOS
        INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (76,'Total de pasivos acumulados','1',1,1);
        INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (63,76,2);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (77,'Intereses por pagar','330','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (76,77,1);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (78,'Nomina por pagar','331','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (76,78,2);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (79,'Seguros por pagar','332','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (76,79,3);

        --IMPUESTOS POR PAGAR
        INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (80,'Impuestos por pagar','1',1,1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (76,80,4);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (81,'Ventas','333','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (80,81,1);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (82,'Nominas','334','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (80,82,2);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (83,'Sobre la renta año anterior','335','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (80,83,3);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (84,'Bienes raices','336','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (80,84,4);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (85,'Otros','337','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (80,85,5);
        --FIN DE IMPUESTOS POR PAGAR

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (86,'Bonos de empleados por pagar','338','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (76,86,5);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (87,'Bonos de propietarios por pagar','339','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (76,87,6);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (88,'Fondo de pensión por pagar','340','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (76,88,7);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (89,'Otros gastos por pagar','341','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (76,89,8);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (90,'Reserva para perdida por reposiciones','345','1',1);
		INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (76,90,9);

        --IMPORTE
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (91,76,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (92,77,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (93,78,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (94,79,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (95,80,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (96,81,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (97,82,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (98,83,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (99,84,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (100,85,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (101,86,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (102,87,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (103,88,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (104,89,1);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (105,90,1);

        --FORMULA IMPORTE DE IMPUESTOS POR PAGAR
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (22,95,'?+?+?+?+?');

         INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (22,96,1);
         INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (22,97,2);
         INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (22,98,3);
         INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (22,99,4);
         INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (22,100,5);

         --FORMULA IMPORTE PASIVOS ACUMULADOS
         INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (23,91,'?+?+?+?+?+?+?+?');

         INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (23,92,1);
         INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (23,93,2);
         INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (23,94,3);
         INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (23,95,4);
         INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (23,101,5);
         INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (23,102,6);
         INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (23,103,7);
         INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (23,104,8);