INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (10, 'Total al corriente');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (11, 'Analisis de cuentas vencidas');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (12, '31-60');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (11,12,1);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (13, '61-90');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (11,13,2);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (14, 'Sobre 90');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (11,14,3);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (15, 'Cuentas dudosas');

--ANALISIS DE CUENTAS POR COBRAR
INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (127,'Analisis de cuentas por cobrar','1',1);
    
        INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (128,'Cuentas por cobrar netas','1',1,1);
        INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (127,128,1);
    --TOTAL
        INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (129,'Total','1',1,1);
        INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (128,129,1);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (130,'Vehiculos','210','1',1,1);
        INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (129,130,1);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (131,'Servicios, Taller de Car. y Refaacciones','220','1',1,1);
        INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (129,131,2);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (132,'Cuentas por cobrar a la fabrica','231 / 277','1',1,1);
        INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (129,132,3);

        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (133,'Garantias por cobrar','222 / 224','1',1,1);
        INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (129,133,4);
    --FIN TOTAL
        INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (134,'Menos cuentas dudosas','225','1',1,1);
        INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (128,134,2);

    --ANALISIS DE CUENTAS VENCIDAS 31-60
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (193,128,12); --CUENTAS POR COBRAR NETAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (194,129,12); --TOTAL
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (195,130,12); --VEHICULOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (196,131,12); --SERVICIOS, TALLER DE CAR. Y REFACCIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (197,132,12); --CUENTAS POR COBRAR A LA FABRICA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (198,133,12); --GARANTIAS POR COBRAR
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (199,134,12); --MENOS CUENTAS DUDOSAS

        --FORMULA ANALISIS DE CUENTAS VENCIDAS 31-60 DE TOTAL
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (36,194,'?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (36,195,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (36,196,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (36,197,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (36,198,4);

        --FORMULA ANALISIS DE CUENTAS VENCIDAS 31-60 DE CUENTAS POR COBRAR NETAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (37,193,'?-?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (37,194,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (37,199,2);
    
    --ANALISIS DE CUENTAS VENCIDAS 61-90
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (200,128,13); --CUENTAS POR COBRAR NETAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (201,129,13); --TOTAL
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (202,130,13); --VEHICULOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (203,131,13); --SERVICIOS, TALLER DE CAR. Y REFACCIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (204,132,13); --CUENTAS POR COBRAR A LA FABRICA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (205,133,13); --GARANTIAS POR COBRAR
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (206,134,13); --MENOS CUENTAS DUDOSAS

        --FORMULA ANALISIS DE CUENTAS VENCIDAS 61-90 DE TOTAL
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (38,201,'?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (38,202,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (38,203,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (38,204,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (38,205,4);

        --FORMULA ANALISIS DE CUENTAS VENCIDAS 61-90 DE CUENTAS POR COBRAR NETAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (39,200,'?-?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (39,201,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (39,206,2);
    
    --ANALISIS DE CUENTAS VENCIDAS SOBRE 90
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (207,128,14); --CUENTAS POR COBRAR NETAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (208,129,14); --TOTAL
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (209,130,14); --VEHICULOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (210,131,14); --SERVICIOS, TALLER DE CAR. Y REFACCIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (211,132,14); --CUENTAS POR COBRAR A LA FABRICA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (212,133,14); --GARANTIAS POR COBRAR
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (213,134,14); --MENOS CUENTAS DUDOSAS

        --FORMULA ANALISIS DE CUENTAS VENCIDAS SOBRE 90 DE TOTAL
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (40,208,'?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (40,209,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (40,210,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (40,211,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (40,212,4);

        --FORMULA ANALISIS DE CUENTAS VENCIDAS SOBRE 90 DE CUENTAS POR COBRAR NETAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (41,207,'?-?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (41,208,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (41,213,2);
    
    --CUENTAS DUDOSAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (214,129,15); --TOTAL
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (215,130,15); --VEHICULOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (216,131,15); --SERVICIOS, TALLER DE CAR. Y REFACCIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (217,132,15); --CUENTAS POR COBRAR A LA FABRICA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (218,133,15); --GARANTIAS POR COBRAR

        --FORMULA CUENTAS DUDOSAS DE TOTAL
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (42,214,'?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (42,215,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (42,216,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (42,217,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (42,218,4);

    --TOTAL AL CORRIENTE
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (219,128,10); --CUENTAS POR COBRAR NETAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (220,129,10); --TOTAL
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (221,130,10); --VEHICULOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (222,131,10); --SERVICIOS, TALLER DE CAR. Y REFACCIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (223,132,10); --CUENTAS POR COBRAR A LA FABRICA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (224,133,10); --GARANTIAS POR COBRAR
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (225,134,10); --MENOS CUENTAS DUDOSAS

        
        --FORMULA TOTAL AL CORRIENTE DE TOTAL
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (43,220,'?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (43,221,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (43,222,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (43,223,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (43,224,4);

        --FORMULA TOTAL AL CORRIENTE DE MENOS CUENTAS DUDOSAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (44,225,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (44,11,1); 

        --FORMULA TOTAL AL CORRIENTE DE CUENTAS POR COBRAR NETAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (45,219,'?-?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (45,220,1); 
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (45,225,2); 

        --FORMULA TOTAL AL CORRIENTE DE VEHICULOS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (46,221,'?-?-?-?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (46,6,1);  --IMPORTE DE CUENTAS POR COBRAR VEHICULOS
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (46,195,2); --31-60 VEHICULOS
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (46,202,3); --61-90 VEHICULOS
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (46,209,4);  --SOBRE 90 VEHICULOS

        --FORMULA TOTAL AL CORRIENTE DE SERVICIO, TALLER DE CAR. Y REFACC.
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (47,222,'?-?-?-?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (47,7,1);  --IMPORTE DE CUENTAS POR COBRAR - SERVICIO TALLER Y REFACC.
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (47,196,2); --31-60 VEHICULOS
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (47,203,3); --61-90 VEHICULOS
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (47,210,4);  --SOBRE 90 VEHICULOS

        --FORMULA TOTAL AL CORRIENTE DE CUENTAS POR COBRAR A LA FABRICA
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (48,223,'?-?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (48,8,1);  --IMPORTE DE CUENTAS POR COBRAR A LA FABRICA- Honda
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (48,211,2);  --SOBRE 90 VEHICULOS

        --FORMULA TOTAL AL CORRIENTE DE GARANTIAS POR COBRAR
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (49,224,'?-?-?-?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (49,226,1);  --IMPORTE DE GARANTIAS POR COBRAR - HONDA
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (49,198,2); --31-60 VEHICULOS
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (49,205,3); --61-90 VEHICULOS
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (49,212,4);  --SOBRE 90 VEHICULOS

        