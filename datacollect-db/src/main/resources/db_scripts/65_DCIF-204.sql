INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (27, 'Total de ingresos y egresos de la concesionaria');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (28, 'Mes');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (27,28,1);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (29, 'Del año a la fecha');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (27,29,2);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (30, 'Ganancias brutas ventas %');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (27,30,3);

INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (31, 'A Depto Hond Nuevos');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (32, 'Mes');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (31,32,1);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (33, 'Del año a la fecha');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (31,33,2);

INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (34, 'B Otros Vehículos Nuevos');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (35, 'Mes');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (34,35,1);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (36, 'Del año a la fecha');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (34,36,2);

INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (37, 'C Dept Vehiuclos Usados');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (38, 'Mes');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (37,38,1);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (39, 'Del año a la fecha');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (37,39,2);

INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (40, 'D Dept de servicios');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (41, 'Mes');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (40,41,1);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (42, 'Del año a la fecha');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (40,42,2);

INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (43, 'E Dept taller y carroceria');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (44, 'Mes');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (43,44,1);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (45, 'Del año a la fecha');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (43,45,2);

INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (46, 'F Dept refacc y accesorios');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (47, 'Mes');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (46,47,1);
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (48, 'Del año a la fecha');
INSERT INTO dcollectdb.dc_ty_account_val_rel (dc_ty_accountval_par_id,dc_ty_accountval_chd_id,order_view) VALUES (46,48,2);

INSERT INTO dcollectdb.dc_account_component (id,component_name) VALUES (5,'PAGINA_2_3');

--PAGINA 2 Y 3
    INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (206,'Ingresos y egresos de la concesionaria','2 y 3',1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (206,5);

    INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (207,'Cuentas','2 y 3',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (206,207,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (207,5);

    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (208,'Ventas','2 y 3',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (207,208,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (208,5);

    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (209,'Utilidad Bruta','2 y 3',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (207,209,2);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (209,5);

--A DEPTO HONDA NUEVOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (613,208,32); --VENTAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (614,209,32); --UTILIDAD BRUTA

        --FORMULA DE MES DE VENTAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (159,613,'?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (159,247,1); --MES - VENTAS DE TOTAL DEPTO AUTOS NUEVOS HONDA
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (159,263,2); --MES - VENTAS DE INTERCAMBIO ENTRE DISTRIBUIDORES

        --FORMULA DE MES DE UTILIDAD BRUTA
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (160,614,'?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (160,249,1); --MES - UTILIDAD BRUTA DE TOTAL DEPTO AUTOS NUEVOS HONDA
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (160,266,2); --MES - UTILIDAD BRUTA DE INTERCAMBIO ENTRE DISTRIBUIDORES

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (615,208,33); --VENTAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (616,209,33); --UTILIDAD BRUTA

        --FORMULA DE AÑO A LA FECHA DE VENTAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (161,615,'?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (161,247,1); --AÑO A LA FECHA - VENTAS DE TOTAL DEPTO AUTOS NUEVOS HONDA
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (161,263,2); --AÑO A LA FECHA - VENTAS DE INTERCAMBIO ENTRE DISTRIBUIDORES

        --FORMULA DE AÑO A LA FECHA DE UTILIDAD BRUTA
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (162,616,'?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (162,255,1); --AÑO A LA FECHA - UTILIDAD BRUTA DE TOTAL DEPTO AUTOS NUEVOS HONDA
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (162,273,2); --AÑO A LA FECHA - UTILIDAD BRUTA DE INTERCAMBIO ENTRE DISTRIBUIDORES

--B OTROS VEHICULOS NUEVOS
    --MES (QUITAR READ ONLY Y DEFAULT VALUE Y PONER REQUIRED EN 1 EN CASO DE QUE EL NEGOCIO LO REQUIERA)
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (617,208,35,0,1,0); --VENTAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (618,209,35,0,1,0); --UTILIDAD BRUTA

        --FORMULA DE MES DE VENTAS (DESCOMENTAR FORMULA EN CASO DE QUE EL NEGOCIO LO REQUIERA)
            -- INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (163,617,'?');

            -- INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (163,?,1); --MES - VENTAS DE ?

        --FORMULA DE MES DE UTILIDAD BRUTA (DESCOMENTAR FORMULA EN CASO DE QUE EL NEGOCIO LO REQUIERA)
            -- INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (164,618,'?');

            -- INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (164,?,1); --MES - UTILIDAD BRUTA DE ?

    --DEL AÑO A LA FECHA (QUITAR READ ONLY Y DEFAULT VALUE Y PONER REQUIRED EN 1 EN CASO DE QUE EL NEGOCIO LO REQUIERA)
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (619,208,36,0,1,0); --VENTAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (620,209,36,0,1,0); --UTILIDAD BRUTA

        --FORMULA DE AÑO A LA FECHA DE VENTAS (DESCOMENTAR FORMULA EN CASO DE QUE EL NEGOCIO LO REQUIERA)
            -- INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (165,619,'?');

            -- INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (165,?,1); --AÑO A LA FECHA - VENTAS DE ?

        --FORMULA DE AÑO A LA FECHA DE UTILIDAD BRUTA (DESCOMENTAR FORMULA EN CASO DE QUE EL NEGOCIO LO REQUIERA)
        -- INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (166,620,'?');

        -- INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (166,?,1); --AÑO A LA FECHA - UTILIDAD BRUTA DE ?

--C DEPTO VEHICULOS USADOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (621,208,38); --VENTAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (622,209,38); --UTILIDAD BRUTA

        --FORMULA DE MES DE VENTAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (167,621,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (167,287,1); --MES - VENTAS DE TOTAL DEPTO VEHICULOS USADOS

        --FORMULA DE MES DE UTILIDAD BRUTA
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (168,622,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (168,292,1); --MES - UTILIDAD BRUTA DE TOTAL DEPTO VEHICULOS USADOS

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (623,208,39); --VENTAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (624,209,39); --UTILIDAD BRUTA
    
        --FORMULA DE AÑO A LA FECHA DE VENTAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (169,623,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (169,310,1); --DEL AÑO A LA FECHA - VENTAS DE TOTAL DEPTO VEHICULOS USADOS

        --FORMULA DE AÑO A LA FECHA DE UTILIDAD BRUTA
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (170,624,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (170,315,1); --DEL AÑO A LA FECHA - UTILIDAD BRUTA DE TOTAL DEPTO VEHICULOS USADOS

--D DEPTO SERVICIO
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (625,208,41); --VENTAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (626,209,41); --UTILIDAD BRUTA

        --FORMULA DE MES DE VENTAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (171,625,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (171,346,1); --MES - VENTAS DE TOTAL DE DEPARTAMENTO DE SERVICIO

        --FORMULA DE MES DE UTILIDAD BRUTA
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (172,626,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (172,356,1); --MES - UTILIDAD BRUTA DE TOTAL DE DEPARTAMENTO DE SERVICIO
    
    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (627,208,42); --VENTAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (628,209,42); --UTILIDAD BRUTA

        --FORMULA DE AÑO A LA FECHA DE VENTAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (173,627,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (173,386,1); --AÑO A LA FECHA - VENTAS DE TOTAL DE DEPARTAMENTO DE SERVICIO

        --FORMULA DE AÑO A LA FECHA DE UTILIDAD BRUTA
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (174,628,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (174,396,1); --AÑO A LA FECHA - UTILIDAD BRUTA DE TOTAL DE DEPARTAMENTO DE SERVICIO
    
--E DEPTO TALLER DE CARROCERIA
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (629,208,44); --VENTAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (630,209,44); --UTILIDAD BRUTA

        --FORMULA DE MES DE VENTAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (175,629,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (175,413,1); --MES - VENTAS DE TOTAL DE DEPTO DE TALLER DE CARR

        --FORMULA DE MES DE UTILIDAD BRUTA
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (176,630,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (176,419,1); --MES - UTILIDAD BRUTA DE TOTAL DE DEPTO DE TALLER DE CARR
    
    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (631,208,45); --VENTAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (632,209,45); --UTILIDAD BRUTA

        --FORMULA DE AÑO A LA FECHA DE VENTAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (177,631,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (177,436,1); --AÑO A LA FECHA - VENTAS DE TOTAL DE DEPTO DE TALLER DE CARR

        --FORMULA DE AÑO A LA FECHA DE UTILIDAD BRUTA
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (178,632,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (178,442,1); --AÑO A LA FECHA - UTILIDAD BRUTA DE TOTAL DE DEPTO DE TALLER DE CARR

--F DEPTO REFACCIONARIA Y ACCESORIOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (633,208,47); --VENTAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (634,209,47); --UTILIDAD BRUTA

        --FORMULA DE MES DE VENTAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (179,633,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (179,595,1); --MES - VENTAS DE TOTAL DEPTO DE REFACCIONES Y ACCE

        --FORMULA DE MES DE UTILIDAD BRUTA
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (180,634,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (180,597,1); --MES - UTILIDAD BRUTA DE TOTAL DEPTO DE REFACCIONES Y ACCE
        
    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (635,208,48); --VENTAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (636,209,48); --UTILIDAD BRUTA

        --FORMULA DE AÑO A LA FECHA DE VENTAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (181,635,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (181,602,1); --AÑO A LA FECHA - VENTAS DE TOTAL DEPTO DE REFACCIONES Y ACCE

        --FORMULA DE AÑO A LA FECHA DE UTILIDAD BRUTA
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (182,636,'?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (182,604,1); --AÑO A LA FECHA - UTILIDAD BRUTA DE TOTAL DEPTO DE REFACCIONES Y ACCE

--TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARAIA
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (637,208,28); --VENTAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (638,209,28); --UTILIDAD BRUTA

        --FORMULA DE MES DE VENTAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (183,637,'?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (183,613,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (183,617,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (183,621,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (183,625,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (183,629,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (183,633,6);
        --FORMULA DE MES DE UTILIDAD BRUTA
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (184,638,'?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (184,614,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (184,618,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (184,622,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (184,626,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (184,630,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (184,634,6);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (639,208,29); --VENTAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (640,209,29); --UTILIDAD BRUTA

        --FORMULA DE AÑO ALA FECHA DE VENTAS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (185,639,'?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (185,615,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (185,619,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (185,623,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (185,627,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (185,631,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (185,635,6);

        --FORMULA DE AÑO ALA FECHA DE UTILIDAD BRUTA
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (186,640,'?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (186,616,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (186,620,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (186,624,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (186,628,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (186,632,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (186,636,6);
    --GARANTIAS BRUTAS VENTAS %
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (641,209,30); --UTILIDAD BRUTA
    
        --FORMULA DE GANANCIA BRUTAS VENTAS % DE UTILIDAD BRUTA
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (187,641,'?/?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (187,640,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (187,639,2);
        