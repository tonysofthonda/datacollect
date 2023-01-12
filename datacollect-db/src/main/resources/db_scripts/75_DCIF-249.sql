INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (56, 'MES');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (57, 'DEL AÑO A LA FECHA');

INSERT INTO dcollectdb.dc_account_component (id,component_name) VALUES (7,'OTROS INGRESOS');

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (290,'Otros ingresos','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (290,7);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (307,'Parent','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (307,7);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (290,307,1);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (291,'Descuentos en efectivo a favor','800','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (291,7);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (307,291,1);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (292,'Intereses a favor','802','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (292,7);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (307,292,2);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (293,'Ingresos por arrendamiento y renta','805','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (293,7);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (307,293,3);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (294,'Ingresos miscelaneos','809','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (294,7);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (307,294,4);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (295,'Otros ingresos del depto de servicio','809a','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (295,7);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (307,295,5);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (296,'Ajustes U.E.P.S','810','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (296,7);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (307,296,6);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (297,'Total','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (297,7);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (307,297,7);

--MES 
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1499,291,56);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1500,292,56);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1501,293,56);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1502,294,56);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1503,295,56);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1504,296,56);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1505,297,56);

    --FORMULA DE MES DE TOTAL
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (446,1505,'?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (446,1499,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (446,1500,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (446,1501,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (446,1502,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (446,1503,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (446,1504,6);

--DEL AÑO A LA FECHA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1506,291,57);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1507,292,57);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1508,293,57);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1509,294,57);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1510,295,57);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1511,296,57);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1512,297,57);
