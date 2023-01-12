--ANALISIS DE UTILIDAD BRUTA
    --D DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (157,'D Departamento de servicio','4',1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (136,157,6);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (157,4);

    --SERIVICO DE MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (158,'Servicio de mano de obra Honda','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (157,158,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (158,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (159,'Mano de obra clientes','450','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (158,159,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (159,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (160,'Mano de obra garantias','453','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (158,160,2);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (160,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (161,'Mano de obra interna','455','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (158,161,3);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (161,4);

    --SERVICIO DE MANO DE OBRA OTROS    
    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (162,'Servicio de mano de obra Otros','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (157,162,2);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (162,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (163,'Mano de obra clientes','451','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (162,163,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (163,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (164,'Mano de obra garantias','453','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (162,164,2);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (164,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (165,'Mano de obra interna','455','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (162,165,3);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (165,4);

    --TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (166,'Total de departamento de servicio','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (157,166,3);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (166,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (167,'Reparaciones subcontratadas','456','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (166,167,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (167,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (168,'Mano de obra no aplicada','657','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (166,168,2);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (168,4);

    --MES ACTUAL
--UNIDADES
    --UNIDADES DE SERVICIO DE MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (329,158,18);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (330,159,18);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (331,160,18);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (332,161,18);

    --FORMULA UNIDADES SERVICIO MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (73,329,'?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (73,330,1); --UNIDADES DE MANO DE OBRA CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (73,331,2); --UNIDADES DE MANO DE OBRA GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (73,332,3); --UNIDADES DE MANO DE OBRA INTERNA
    
    --UNIDADES DE SERVICIO DE MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (333,162,18);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (334,163,18);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (335,164,18);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (336,165,18);

    --FORMULA UNIDADES SERVICIO MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (74,333,'?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (74,334,1); --UNIDADES DE MANO DE OBRA CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (74,335,2); --UNIDADES DE MANO DE OBRA GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (74,336,3); --UNIDADES DE MANO DE OBRA INTERNA
    
    --UNIDADES DE TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (337,166,18);

    --FORMULA DE UNIDADES DE TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (75,337,'?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (75,329,1); --UNIDADES DE SERVICIO DE MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (75,333,2); --UNIDADES DE SERVICIO DE MANO DE OBRA OTROS

--VENTAS
    --VENTAS DE SERVICIO DE MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (338,158,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (339,159,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (340,160,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (341,161,19);

    --FORMULA VENTAS SERVICIO MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (76,338,'?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (76,339,1); --VENTAS DE MANO DE OBRA CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (76,340,2); --VENTAS DE MANO DE OBRA GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (76,341,3); --VENTAS DE MANO DE OBRA INTERNA
    
    --VENTAS DE SERVICIO DE MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (342,162,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (343,163,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (344,164,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (345,165,19);

    --FORMULA VENTAS SERVICIO MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (77,342,'?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (77,343,1); --VENTAS DE MANO DE OBRA CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (77,344,2); --VENTAS DE MANO DE OBRA GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (77,345,3); --VENTAS DE MANO DE OBRA INTERNA
    
    --VENTAS DE TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (346,166,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (347,167,19);

    --FORMULA DE VENTAS DE TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (78,346,'?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (78,338,1); --VENTAS DE SERVICIO DE MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (78,342,2); --VENTAS DE SERVICIO DE MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (78,347,3); --VENTAS DE SERVICIO DE REPARACIONES SUBCONTRATADAS

--UTILIDAD BRUTA
    --UTILIDAD BRUTA DE SERVICIO DE MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (348,158,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (349,159,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (350,160,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (351,161,20);

    --FORMULA UTILIDAD BRUTA SERVICIO MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (79,348,'?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (79,349,1); --UTILIDAD BRUTA DE MANO DE OBRA CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (79,350,2); --UTILIDAD BRUTA DE MANO DE OBRA GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (79,351,3); --UTILIDAD BRUTA DE MANO DE OBRA INTERNA
    
    --UTILIDAD BRUTA DE SERVICIO DE MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (352,162,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (353,163,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (354,164,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (355,165,20);

    --FORMULA UTILIDAD BRUTA SERVICIO MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (80,352,'?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (80,353,1); --UTILIDAD BRUTA DE MANO DE OBRA CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (80,354,2); --UTILIDAD BRUTA DE MANO DE OBRA GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (80,355,3); --UTILIDAD BRUTA DE MANO DE OBRA INTERNA
    
    --UTILIDAD BRUTA DE TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (356,166,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (357,167,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (358,168,20);

    --FORMULA DE UTILIDAD BRUTA DE TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (81,356,'?+?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (81,348,1); --UTILIDAD BRUTA DE SERVICIO DE MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (81,352,2); --UTILIDAD BRUTA DE SERVICIO DE MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (81,357,3); --UTILIDAD BRUTA DE SERVICIO DE REPARACIONES SUBCONTRATADAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (81,358,4); --UTILIDAD BRUTA DE SERVICIO DE REPARACIONES SUBCONTRATADAS

--% UNIDADES VENDIDAS
    --% UNIDADES VENDIDAS DE SERVICIO DE MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (359,158,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (360,159,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (361,160,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (362,161,21);

    --FORMULA % UNIDADES VENDIDAS SERVICIO MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (82,359,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (82,348,1); --UTILIDAD BRUTA DE SERVICIO MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (82,338,2); --VENTAS DE SERVICIO MANO DE OBRA HONDA
    
    --FORMULA % UNIDADES VENDIDAS MANO DE OBRA CLIENTES
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (83,360,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (83,349,1); --UTILIDAD BRUTA DE MANO DE OBRA CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (83,339,2); --VENTAS DE MANO DE OBRA CLIENTES
    
    --FORMULA % UNIDADES VENDIDAS MANO DE OBRA GARANTIAS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (84,361,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (84,350,1); --UTILIDAD BRUTA DE MANO DE OBRA GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (84,340,2); --VENTAS DE MANO DE OBRA GARANTIAS
    
    --FORMULA % UNIDADES VENDIDAS MANO DE OBRA INTERNA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (85,362,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (85,351,2); --UTILIDAD BRUTA DE MANO DE OBRA INTERNA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (85,341,1); --VENTAS DE MANO DE OBRA INTERNA
    
    --% UNIDADES VENDIDAS DE SERVICIO DE MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (363,162,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (364,163,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (365,164,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (366,165,21);

    --FORMULA % UNIDADES VENDIDAS SERVICIO MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (86,363,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (86,352,2); --UTILIDAD BRUTA DE SERVICIO DE MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (86,342,1); --VENTAS DE SERVICIO DE MANO DE OBRA OTROS
    
    --% UNIDADES VENDIDAS DE TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (367,166,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (368,167,21);

    --FORMULA % UNIDADES VENDIDAS DE TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (87,367,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (87,356,1); --UTILIDAD BRUTA DE TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (87,346,2); --VENTAS DE TOTAL DE DEPARTAMENTO DE SERVICIO

    --FORMULA % UNIDADES VENDIDAS DE REPARACIONES SUBCONTRATADAS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (88,368,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (88,357,1); --UTILIDAD BRUTA DE REPARACIONES SUBCONTRATADAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (88,347,2); --VENTAS DE REPARACIONES SUBCONTRATADAS

    --AÑO A LA FECHA
--UNIDADES
    --UNIDADES DE SERVICIO DE MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (369,158,23);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (370,159,23);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (371,160,23);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (372,161,23);

    --UNIDADES DE SERVICIO DE MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (373,162,23);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (374,163,23);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (375,164,23);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (376,165,23);

    --UNIDADES DE TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (377,166,23);

--VENTAS
    --VENTAS DE SERVICIO DE MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (378,158,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (379,159,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (380,160,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (381,161,24);

    --VENTAS DE SERVICIO DE MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (382,162,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (383,163,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (384,164,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (385,165,24);

    --VENTAS DE TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (386,166,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (387,167,24);

--UTILIDAD BRUTA
    --UTILIDAD BRUTA DE SERVICIO DE MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (388,158,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (389,159,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (390,160,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (391,161,25);

    --UTILIDAD BRUTA DE SERVICIO DE MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (392,162,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (393,163,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (394,164,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (395,165,25);

    --UTILIDAD BRUTA DE TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (396,166,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (397,167,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (398,168,25);

--% UNIDADES VENDIDAS
    --% UNIDADES VENDIDAS DE SERVICIO DE MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (399,158,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (400,159,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (401,160,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (402,161,26);

    --FORMULA % UNIDADES VENDIDAS SERVICIO MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (89,399,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (89,388,1); --UTILIDAD BRUTA DE SERVICIO MANO DE OBRA HONDA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (89,378,2); --VENTAS DE SERVICIO MANO DE OBRA HONDA
    
    --FORMULA % UNIDADES VENDIDAS MANO DE OBRA CLIENTES
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (90,400,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (90,389,1); --UTILIDAD BRUTA DE MANO DE OBRA CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (90,379,2); --VENTAS DE MANO DE OBRA CLIENTES
    
    --FORMULA % UNIDADES VENDIDAS MANO DE OBRA GARANTIAS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (91,401,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (91,390,1); --UTILIDAD BRUTA DE MANO DE OBRA GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (91,380,2); --VENTAS DE MANO DE OBRA GARANTIAS
    
    --FORMULA % UNIDADES VENDIDAS MANO DE OBRA INTERNA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (92,402,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (92,391,1); --UTILIDAD BRUTA DE MANO DE OBRA INTERNA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (92,381,2); --VENTAS DE MANO DE OBRA INTERNA
    
    --% UNIDADES VENDIDAS DE SERVICIO DE MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (403,162,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (404,163,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (405,164,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (406,165,26);

    --FORMULA % UNIDADES VENDIDAS SERVICIO MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (93,403,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (93,392,1); --UTILIDAD BRUTA DE SERVICIO DE MANO DE OBRA OTROS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (93,382,2); --VENTAS DE SERVICIO DE MANO DE OBRA OTROS
    
    --% UNIDADES VENDIDAS DE TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (407,166,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (408,167,26);

    --FORMULA % UNIDADES VENDIDAS DE TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (94,407,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (94,396,1); --UTILIDAD BRUTA DE TOTAL DE DEPARTAMENTO DE SERVICIO
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (94,386,2); --VENTAS DE TOTAL DE DEPARTAMENTO DE SERVICIO

    --FORMULA % UNIDADES VENDIDAS DE REPARACIONES SUBCONTRATADAS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (95,408,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (95,397,1); --UTILIDAD BRUTA DE REPARACIONES SUBCONTRATADAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (95,387,2); --VENTAS DE REPARACIONES SUBCONTRATADAS