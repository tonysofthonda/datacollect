--PASIVOS
    --VALOR TOTAL
    INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (98,'Valor Total','1',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (62,98,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (99,'Capital Social','360','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (98,99,1);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (100,'Aport. Adicionales de Cap.','361','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (98,100,2);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (101,'Acciones en tesoreria','362','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (98,101,3);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (102,'Utilidades retenidas','370','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (98,102,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (103,'Dividendos','375','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (98,103,5);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (104,'Utilidad neta anterior','376','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (98,104,6);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (105,'Distribuciones - Empresas','377','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (98,105,7);

    --PROPIERTARIOS O SOCIOS
    INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (106,'Propietarios o socios','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (98,106,8);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (107,'Inversores','380','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (106,107,1);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (108,'Retiros','390','1',1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (106,108,2);
    --FIN DE PROPIERTARIOS O SOCIOS

    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (113,99,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (114,100,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (115,101,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (116,102,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (117,103,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (118,104,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (119,105,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (120,106,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (121,107,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (122,108,1);

    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (26,120,'?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (26,121,1);
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (26,122,2);