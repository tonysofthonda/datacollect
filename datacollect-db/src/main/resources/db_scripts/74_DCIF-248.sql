INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (49, 'A');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (50, 'B');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (51, 'C');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (52, 'D');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (53, 'E');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (54, 'F');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (55, 'TOTAL');

INSERT INTO dcollectdb.dc_account_component (id,component_name) VALUES (6,'POSICIONES');

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (280,'Niveles de puestos','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (280,6);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (306,'Parent','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (306,6);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (280,306,1);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (281,'Propietarios','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (281,6);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (306,281,1);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (282,'Supervisores','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (282,6);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (306,282,2);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (283,'Ventas de supervisores','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (283,6);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (306,283,3);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (284,'Tecnicos','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (284,6);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (306,284,4);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (285,'Empleados','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (285,6);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (306,285,5);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (286,'Otros','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (286,6);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (306,286,6);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (287,'Total','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (287,6);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (306,287,7);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (288,'Contrataciones anuales','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (288,6);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (306,288,8);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (289,'Despidos anuales','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (289,6);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (306,289,9);

--A
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1439,281,49);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1440,282,49);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1441,283,49);
    --INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1442,284,49);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1443,285,49);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1444,286,49);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1445,287,49);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1446,288,49);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1447,289,49);

--B 
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1448,281,50);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1449,282,50);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1450,283,50);
    --INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1451,284,50);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1452,285,50);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1453,286,50);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1454,287,50);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1455,288,50);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1456,289,50);

--C
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1457,281,51);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1458,282,51);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1459,283,51);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1460,285,51);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1461,286,51);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1462,287,51);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1463,288,51);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1464,289,51);
    
--D
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1465,281,52);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1466,282,52);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1467,283,52);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1468,284,52);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1469,285,52);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1470,286,52);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1471,287,52);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1472,288,52);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1473,289,52);

--E
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1474,281,53);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1475,282,53);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1476,284,53);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1477,285,53);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1478,286,53);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1479,287,53);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1480,288,53);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1481,289,53);

--F
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1482,281,54);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1483,282,54);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1484,283,54);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1485,285,54);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1486,286,54);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1487,287,54);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1488,288,54);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1489,289,54);

--TOTAL
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1490,281,55);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1491,282,55);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1492,283,55);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1493,284,55);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1494,285,55);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1495,286,55);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1496,287,55);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1497,288,55);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1498,289,55);
    
    --FORMULA DE TOTAL DE PROPIETARIOS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (437,1490,'?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (437,1439,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (437,1448,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (437,1457,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (437,1465,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (437,1474,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (437,1482,6);

    --FORMULA DE TOTAL DE SUPERVISORES
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (438,1491,'?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (438,1440,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (438,1449,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (438,1458,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (438,1466,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (438,1475,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (438,1483,6);

    --FORMULA DE TOTAL DE VENTAS DE SUPERVISORES
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (439,1492,'?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (439,1441,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (439,1450,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (439,1459,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (439,1467,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (439,1484,5);

    --FORMULA DE TOTAL DE TECNICOS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (440,1493,'?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (440,1468,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (440,1478,2);

    --FORMULA DE TOTAL DE EMPLEADOS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (441,1494,'?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (441,1443,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (441,1452,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (441,1460,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (441,1469,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (441,1477,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (441,1485,6);

    --FORMULA DE TOTAL DE OTROS
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (442,1495,'?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (442,1443,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (442,1452,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (442,1460,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (442,1469,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (442,1477,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (442,1485,6);
    
    --FORMULA DE TOTAL DE TOTAL
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (443,1496,'?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (443,1445,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (443,1454,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (443,1462,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (443,1471,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (443,1479,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (443,1487,6);
    
    --FORMULA DE TOTAL DE CONTRATACIONES ANUALES
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (444,1497,'?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (444,1446,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (444,1455,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (444,1463,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (444,1472,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (444,1480,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (444,1488,6);
    
    --FORMULA DE TOTAL DE DESPIDOS ANUALES
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (445,1498,'?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (445,1447,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (445,1456,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (445,1464,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (445,1473,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (445,1481,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (445,1489,6);