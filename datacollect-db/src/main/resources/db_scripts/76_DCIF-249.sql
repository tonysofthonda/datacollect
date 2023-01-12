INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (58, 'MES');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (59, 'DEL AÑO A LA FECHA');

INSERT INTO dcollectdb.dc_account_component (id,component_name) VALUES (8,'DEDUCCIONES A LOS INGRESOS');

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (298,'Deducciones a los ingresos','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (298,8);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (308,'Parent','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (308,8);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (298,308,1);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (299,'Descuentos en efectivo','900','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (299,8);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (308,299,1);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (300,'Club privilegios','900a','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (300,8);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (308,300,2);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (301,'Gastos por renta vehiculo','905','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (301,8);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (308,301,3);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (302,'Perdidas por accidentes','906','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (302,8);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (308,302,4);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (303,'Deducciones Misc','909','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (303,8);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (308,303,5);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (304,'Ajustes U.E.P.S','910','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (304,8);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (308,304,6);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (305,'Total','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (305,8);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (308,305,7);

--MES
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1513,299,58);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1514,300,58);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1515,301,58);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1516,302,58);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1517,303,58);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1518,304,58);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1519,305,58);

    --FORMULA DE MES DE TOTAL
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (447,1519,'?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (447,1513,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (447,1514,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (447,1515,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (447,1516,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (447,1517,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (447,1518,6);

--DEL AÑO A LA FECHA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1520,299,59);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1521,300,59);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1522,301,59);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1523,302,59);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1524,303,59);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1525,304,59);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1526,305,59);
