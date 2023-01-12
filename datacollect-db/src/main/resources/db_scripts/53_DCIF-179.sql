INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (16, 'Departamento de vehiculos');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (17, 'Mes Actual');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (16,17,1);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (18, 'Unidades');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (17,18,1);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (19, 'Ventas');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (17,19,2);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (20, 'Utilidad bruta');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (17,20,3);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (21, '% unidades vendidas');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (17,21,4);

INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (22, 'Del año a la fecha');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (16,22,2);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (23, 'Unidades');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (22,23,1);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (24, 'Ventas');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (22,24,2);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (25, 'Utilidad bruta');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (22,25,3);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (26, '% unidades vendidas');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (22,26,4);

INSERT INTO dcollectdb.dc_account_component (id,component_name) VALUES (4,'ANALISIS_UTILIDAD_BRUTA');
--PAGINA 4
--ANALISIS DE UTILIDAD BRUTA
    INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (135,'Analisis de utilidad bruta','4',1);

    INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (136,'Tabla utilidad bruta','4',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (135,136,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (136,4);

    INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (138,'Modelos','4',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (136,138,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (138,4);

    