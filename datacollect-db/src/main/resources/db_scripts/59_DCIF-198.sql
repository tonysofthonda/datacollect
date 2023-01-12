--ANALISIS DE UTILIDAD BRUTA
    --E DEPTO DE TALLER DE CARROCERIAS
    INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (169,'E Depto de taller de carrocerias','4',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (136,169,7);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (169,4);

    --TOTAL DE DEPTO DE TALLER DE CARR.
    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (170,'Total de depto de taller de carr','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (169,170,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (170,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (171,'Mano de obra clientes','460','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (170,171,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (171,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (172,'Mano de obra garantias','462','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (170,172,2);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (172,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (173,'Mano de obra interna','464','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (170,173,3);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (173,4);
    
    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (174,'Reparaciones subcontratadas','466','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (170,174,4);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (174,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (175,'Body Shop materiales','467','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (170,175,5);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (175,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (176,'Mano de obra no aplicada','668','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (170,176,6);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (176,4);

    --MES ACTUAL
--UNIDADES DE TOTAL DE DEPTO DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (409,170,18);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (410,171,18);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (411,172,18);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (412,173,18);

    --FORMULA DE UNIDADES DE TOTAL DE DEPTO DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (96,409,'?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (96,410,1); --UNIDADES DE MANO DE OBRA CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (96,411,2); --UNIDADES DE MANO DE OBRA GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (96,412,3); --UNIDADES DE MANO DE OBRA INTERNA

--VENTAS DE TOTAL DE DEPTO DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (413,170,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (414,171,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (415,172,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (416,173,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (417,174,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (418,175,19);

    --FORMULA DE VENTAS DE TOTAL DE DEPTO DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (97,413,'?+?+?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (97,414,1); --VENTAS DE MANO DE OBRA CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (97,415,2); --VENTAS DE MANO DE OBRA GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (97,416,3); --VENTAS DE MANO DE OBRA INTERNA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (97,417,4); --VENTAS DE REPARACIONES SUBCONTRATADAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (97,418,5); --VENTAS DE BODY SHOP MATERIALES

--UTILIDAD BRUTA DE TOTAL DE DEPTO DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (419,170,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (420,171,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (421,172,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (422,173,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (423,174,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (424,175,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (425,176,20);

    --FORMULA DE UTILIDAD BRUTA DE TOTAL DE DEPTO DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (98,419,'?+?+?+?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (98,420,1); --UTILIDAD BRUTA DE MANO DE OBRA CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (98,421,2); --UTILIDAD BRUTA DE MANO DE OBRA GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (98,422,3); --UTILIDAD BRUTA DE MANO DE OBRA INTERNA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (98,423,4); --UTILIDAD BRUTA DE REPARACIONES SUBCONTRATADAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (98,424,5); --UTILIDAD BRUTA DE BODY SHOP MATERIALES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (98,425,6); --UTILIDAD BRUTA DE MANO DE OBRA NO APLICADA

--% UNIDADES VENDIDAS DE TOTAL DE DEPTO DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (426,170,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (427,171,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (428,172,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (429,173,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (430,174,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (431,175,21);

    --FORMULA DE % UNIDADES VENDIDAS DE TOTAL DE DEPTO DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (99,426,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (99,419,1); --UTILIDAD BRUTA DE TOTAL DE DEPTO DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (99,413,2); --VENTAS DE TOTAL DE DEPTO DE TALLER DE CARR

    --FORMULA DE % UNIDADES VENDIDAS DE MANO DE OBRA DE CLIENTES
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (100,427,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (100,420,1); --UTILIDAD BRUTA DE MANO DE OBRA DE CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (100,414,2); --VENTAS DE MANO DE OBRA DE CLIENTES

    --FORMULA DE % UNIDADES VENDIDAS DE MANO DE OBRA DE GARANTIAS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (101,428,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (101,421,1); --UTILIDAD BRUTA DE MANO DE OBRA DE GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (101,415,2); --VENTAS DE MANO DE OBRA DE GARANTIAS

    --FORMULA DE % UNIDADES VENDIDAS DE MANO DE OBRA DE INTERNA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (102,429,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (102,422,1); --UTILIDAD BRUTA DE MANO DE OBRA DE INTERNA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (102,416,2); --VENTAS DE MANO DE OBRA DE INTERNA

    --FORMULA DE % UNIDADES VENDIDAS DE REPARACIONES SUBCONTRATADAS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (103,430,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (103,423,1); --UTILIDAD BRUTA DE REPARACIONES SUBCONTRATADAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (103,417,2); --VENTAS DE REPARACIONES SUBCONTRATADAS

    --FORMULA DE % UNIDADES VENDIDAS DE BODY SHOP MATERIALES
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (104,431,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (104,424,1); --UTILIDAD BRUTA DE BODY SHOP MATERIALES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (104,418,2); --VENTAS DE BODY SHOP MATERIALES

    --AÑO A LA FECHA
--UNIDADES DE TOTAL DE DEPTO DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (432,170,23);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (433,171,23);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (434,172,23);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (435,173,23);

--VENTAS DE TOTAL DE DEPTO DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (436,170,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (437,171,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (438,172,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (439,173,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (440,174,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (441,175,24);

--UTILIDAD BRUTA DE TOTAL DE DEPTO DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (442,170,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (443,171,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (444,172,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (445,173,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (446,174,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (447,175,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (448,176,25);

--% UNIDADES VENDIDAS DE TOTAL DE DEPTO DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (449,170,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (450,171,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (451,172,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (452,173,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (453,174,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (454,175,26);

    --FORMULA DE % UNIDADES VENDIDAS DE TOTAL DE DEPTO DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (105,449,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (105,442,1); --UTILIDAD BRUTA DE TOTAL DE DEPTO DE TALLER DE CARR
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (105,436,2); --VENTAS DE TOTAL DE DEPTO DE TALLER DE CARR

    --FORMULA DE % UNIDADES VENDIDAS DE MANO DE OBRA DE CLIENTES
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (106,450,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (106,443,1); --UTILIDAD BRUTA DE MANO DE OBRA DE CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (106,437,2); --VENTAS DE MANO DE OBRA DE CLIENTES

    --FORMULA DE % UNIDADES VENDIDAS DE MANO DE OBRA DE GARANTIAS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (107,451,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (107,444,1); --UTILIDAD BRUTA DE MANO DE OBRA DE GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (107,438,2); --VENTAS DE MANO DE OBRA DE GARANTIAS

    --FORMULA DE % UNIDADES VENDIDAS DE MANO DE OBRA DE INTERNA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (108,452,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (108,445,1); --UTILIDAD BRUTA DE MANO DE OBRA DE INTERNA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (108,439,2); --VENTAS DE MANO DE OBRA DE INTERNA

    --FORMULA DE % UNIDADES VENDIDAS DE REPARACIONES SUBCONTRATADAS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (109,453,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (109,446,1); --UTILIDAD BRUTA DE REPARACIONES SUBCONTRATADAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (109,440,2); --VENTAS DE REPARACIONES SUBCONTRATADAS

    --FORMULA DE % UNIDADES VENDIDAS DE BODY SHOP MATERIALES
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (110,454,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (110,447,1); --UTILIDAD BRUTA DE BODY SHOP MATERIALES    
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (110,441,2); --VENTAS DE BODY SHOP MATERIALES