--PAGINA 2 Y 3
INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (210,'Otros ingresos y deducciones','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (210,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (207,210,3);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (211,'Ingresos Financieros','003','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (211,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (210,211,1);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (212,'Ingresos por Seguros','004','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (212,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (210,212,2);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (213,'Contratos de Servicio','005','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (213,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (210,213,3);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (214,'Perdidas por reposiciones','006','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (214,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (210,214,4);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (215,'Cargos por cancelaciones','007','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (215,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (210,215,5);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (216,'Total de ingresos de operacion','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (216,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (210,216,6);

--A DEPTO HONDA NUEVOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (642,211,32); --INGRESOS FINANCIEROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (643,212,32); --INGRESOS POR SEGUROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (644,213,32); --CONTRATOS DE SERVICIO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (645,214,32); --PERDIDAS POR REPOSICIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (646,215,32); --CARGOS POR CANCELACIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (647,216,32); --TOTAL DE INGRESOS DE OPERACION

        --FORMULA DE MES DE TOTAL DE INGRESOS DE OPERACION
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (188,647,'?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (188,642,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (188,643,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (188,644,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (188,645,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (188,646,5);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (648,211,33); --INGRESOS FINANCIEROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (649,212,33); --INGRESOS POR SEGUROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (650,213,33); --CONTRATOS DE SERVICIO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (651,214,33); --PERDIDAS POR REPOSICIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (652,215,33); --CARGOS POR CANCELACIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (653,216,33); --TOTAL DE INGRESOS DE OPERACION

        --FORMULA DE DEL AÑO A LA FECHA DE TOTAL DE INGRESOS DE OPERACION
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (189,653,'?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (189,648,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (189,649,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (189,650,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (189,651,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (189,652,5);

    
--B OTROS VEHICULOS NUEVOS
    --MES (QUITAR READ ONLY Y DEFAULT VALUE Y PONER REQUIRED EN 1 EN CASO DE QUE EL NEGOCIO LO REQUIERA)
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (654,211,35,0,1,0); --INGRESOS FINANCIEROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (655,212,35,0,1,0); --INGRESOS POR SEGUROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (656,213,35,0,1,0); --CONTRATOS DE SERVICIO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (657,214,35,0,1,0); --PERDIDAS POR REPOSICIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (658,215,35,0,1,0); --CARGOS POR CANCELACIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (659,216,35,0,1,0); --TOTAL DE INGRESOS DE OPERACION

        --FORMULA DE MES DE TOTAL DE INGRESOS DE OPERACION (DESCOMENTAR FORMULA EN CASO DE QUE EL NEGOCIO LO REQUIERA)
        -- INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (190,659,'?+?+?+?+?');

        -- INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (190,654,1);
        -- INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (190,655,2);
        -- INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (190,656,3);
        -- INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (190,657,4);
        -- INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (190,658,5);

    --DEL AÑO A LA FECHA (QUITAR READ ONLY Y DEFAULT VALUE Y PONER REQUIRED EN 1 EN CASO DE QUE EL NEGOCIO LO REQUIERA)
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (660,211,36,0,1,0); --INGRESOS FINANCIEROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (661,212,36,0,1,0); --INGRESOS POR SEGUROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (662,213,36,0,1,0); --CONTRATOS DE SERVICIO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (663,214,36,0,1,0); --PERDIDAS POR REPOSICIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (664,215,36,0,1,0); --CARGOS POR CANCELACIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (665,216,36,0,1,0); --TOTAL DE INGRESOS DE OPERACION

        --FORMULA DE DEL AÑO A LA FECHA DE TOTAL DE INGRESOS DE OPERACION (DESCOMENTAR FORMULA EN CASO DE QUE EL NEGOCIO LO REQUIERA)
        -- INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (191,665,'?+?+?+?+?');

        -- INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (191,660,1);
        -- INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (191,661,2);
        -- INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (191,662,3);
        -- INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (191,663,4);
        -- INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (191,664,5);

--C DEPTO VEHICULOS USADOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (666,211,38); --INGRESOS FINANCIEROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (667,212,38); --INGRESOS POR SEGUROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (668,213,38); --CONTRATOS DE SERVICIO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (669,214,38); --PERDIDAS POR REPOSICIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (670,215,38); --CARGOS POR CANCELACIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (671,216,38); --TOTAL DE INGRESOS DE OPERACION

        --FORMULA DE MES DE TOTAL DE INGRESOS DE OPERACION
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (192,671,'?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (192,666,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (192,667,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (192,668,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (192,669,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (192,670,5);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (672,211,39); --INGRESOS FINANCIEROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (673,212,39); --INGRESOS POR SEGUROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (674,213,39); --CONTRATOS DE SERVICIO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (675,214,39); --PERDIDAS POR REPOSICIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (676,215,39); --CARGOS POR CANCELACIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (677,216,39); --TOTAL DE INGRESOS DE OPERACION

        --FORMULA DE DEL AÑO A LA FECHA DE TOTAL DE INGRESOS DE OPERACION
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (193,677,'?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (193,672,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (193,673,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (193,674,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (193,675,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (193,676,5);

--TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARAIA
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (678,211,28); --INGRESOS FINANCIEROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (679,212,28); --INGRESOS POR SEGUROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (680,213,28); --CONTRATOS DE SERVICIO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (681,214,28); --PERDIDAS POR REPOSICIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (682,215,28); --CARGOS POR CANCELACIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (683,216,28); --TOTAL DE INGRESOS DE OPERACION

        --FORMULA DE MES DE INGRESOS FINANCIEROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (194,678,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (194,642,1); --INGRESOS FINANCIEROS A DEPTO HONDA NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (194,654,2); --INGRESOS FINANCIEROS B OTROS VEHICULOS NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (194,666,3); --INGRESOS FINANCIEROS C DEPT VEHICULOS USADOS - MES

        --FORMULA DE MES DE INGRESOS POR SEGUROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (195,679,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (195,643,1); --INGRESOS POR SEGUROS A DEPTO HONDA NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (195,655,2); --INGRESOS POR SEGUROS B OTROS VEHICULOS NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (195,667,3); --INGRESOS POR SEGUROS C DEPT VEHICULOS USADOS - MES
        
        --FORMULA DE MES DE CONTRATOS DE SERVICIO
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (196,680,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (196,644,1); --CONTRATOS DE SERVICIO A DEPTO HONDA NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (196,656,2); --CONTRATOS DE SERVICIO B OTROS VEHICULOS NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (196,668,3); --CONTRATOS DE SERVICIO C DEPT VEHICULOS USADOS - MES

        --FORMULA DE MES DE PERDIDA POR REPOSICIONES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (197,681,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (197,645,1); --PERDIDA POR REPOSICIONES A DEPTO HONDA NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (197,657,2); --PERDIDA POR REPOSICIONES B OTROS VEHICULOS NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (197,669,3); --PERDIDA POR REPOSICIONES C DEPT VEHICULOS USADOS - MES
        
        --FORMULA DE MES DE CARGOS POR CANCELACIONES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (198,682,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (198,646,1); --CARGOS POR CANCELACIONES A DEPTO HONDA NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (198,658,2); --CARGOS POR CANCELACIONES B OTROS VEHICULOS NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (198,670,3); --CARGOS POR CANCELACIONES C DEPT VEHICULOS USADOS - MES

        --FORMULA DE MES DE TOTAL DE INGRESOS POR OPERACION
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (199,683,'?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (199,678,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (199,679,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (199,680,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (199,681,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (199,682,5);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (684,211,29); --INGRESOS FINANCIEROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (685,212,29); --INGRESOS POR SEGUROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (686,213,29); --CONTRATOS DE SERVICIO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (687,214,29); --PERDIDAS POR REPOSICIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (688,215,29); --CARGOS POR CANCELACIONES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (689,216,29); --TOTAL DE INGRESOS DE OPERACION

        --FORMULA DE DEL AÑO A LA FECHA DE INGRESOS FINANCIEROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (200,684,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (200,648,1); --INGRESOS FINANCIEROS A DEPTO HONDA NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (200,660,2); --INGRESOS FINANCIEROS B OTROS VEHICULOS NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (200,672,3); --INGRESOS FINANCIEROS C DEPT VEHICULOS USADOS - DEL AÑO A LA FECHA

        --FORMULA DE DEL AÑO A LA FECHA DE INGRESOS POR SEGUROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (201,685,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (201,649,1); --INGRESOS POR SEGUROS A DEPTO HONDA NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (201,661,2); --INGRESOS POR SEGUROS B OTROS VEHICULOS NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (201,673,3); --INGRESOS POR SEGUROS C DEPT VEHICULOS USADOS - DEL AÑO A LA FECHA
        
        --FORMULA DE DEL AÑO A LA FECHA DE CONTRATOS DE SERVICIO
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (202,686,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (202,650,1); --CONTRATOS DE SERVICIO A DEPTO HONDA NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (202,662,2); --CONTRATOS DE SERVICIO B OTROS VEHICULOS NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (202,674,3); --CONTRATOS DE SERVICIO C DEPT VEHICULOS USADOS - DEL AÑO A LA FECHA

        --FORMULA DE DEL AÑO A LA FECHA DE PERDIDA POR REPOSICIONES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (203,687,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (203,651,1); --PERDIDA POR REPOSICIONES A DEPTO HONDA NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (203,663,2); --PERDIDA POR REPOSICIONES B OTROS VEHICULOS NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (203,675,3); --PERDIDA POR REPOSICIONES C DEPT VEHICULOS USADOS - DEL AÑO A LA FECHA
        
        --FORMULA DE DEL AÑO A LA FECHA DE CARGOS POR CANCELACIONES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (204,688,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (204,652,1); --CARGOS POR CANCELACIONES A DEPTO HONDA NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (204,664,2); --CARGOS POR CANCELACIONES B OTROS VEHICULOS NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (204,676,3); --CARGOS POR CANCELACIONES C DEPT VEHICULOS USADOS - DEL AÑO A LA FECHA

        --FORMULA DE DEL AÑO A LA FECHA DE TOTAL DE INGRESOS POR OPERACION
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (205,689,'?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (205,684,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (205,685,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (205,686,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (205,687,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (205,688,5);

    
    --GANANCIAS BRUTAS VENTAS %
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (690,211,30); --INGRESOS FINANCIEROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (691,212,30); --INGRESOS POR SEGUROS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (692,213,30); --CONTRATOS DE SERVICIO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (693,216,30); --TOTAL DE INGRESOS DE OPERACION

        --FORMULA GANANCIAS BRUTAS VENTAS % DE INGRESOS FINANCIEROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (206,690,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (206,684,1); --INGRESOS FINANCIEROS INGRESOS Y EGRESOS DE LA CONCESIONARIO - GANANCIAS BRUTAS VENTAS %
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (206,639,2); --VENTAS TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA

        --FORMULA GANANCIAS BRUTAS VENTAS % DE INGRESOS POR SEGUROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (207,691,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (207,685,1); --INGRESOS POR SEGUROS INGRESOS Y EGRESOS DE LA CONCESIONARIO - GANANCIAS BRUTAS VENTAS %
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (207,639,2); --VENTAS TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA

        --FORMULA GANANCIAS BRUTAS VENTAS % DE CONTRATOS DE SERVICIO
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (208,692,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (208,686,1); --CONTRATOS DE SERVICIO INGRESOS Y EGRESOS DE LA CONCESIONARIO - GANANCIAS BRUTAS VENTAS %
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (208,639,2); --VENTAS TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA

        --FORMULA GANANCIAS BRUTAS VENTAS % DE TOTAL DE INGRESOS DE OPERACION
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (209,693,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (209,689,1); --TOTAL DE INGRESOS DE OPERACION INGRESOS Y EGRESOS DE LA CONCESIONARIO - GANANCIAS BRUTAS VENTAS %
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (209,639,2); --VENTAS TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA
