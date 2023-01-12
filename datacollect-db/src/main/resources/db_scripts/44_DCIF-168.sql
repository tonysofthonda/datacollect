--PASIVOS
    --CAPITAL DE TRABAJO NETO
    INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (95,'Capital de trabajo neto','1',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (62,95,3);

    INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (96,'Actual','1',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (95,96,1);
    
    INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (97,'Guia','1',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (95,97,2);

    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (111,96,1);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (112,97,1);