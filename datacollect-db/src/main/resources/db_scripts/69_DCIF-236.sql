--PAGINA 2 Y 3
INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (227,'Total de Gastos del personal','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (227,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (207,227,5);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (228,'Compesaciones a propietarios','020','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (228,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (227,228,1);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (229,'Compesaciones a Supervisores','021','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (229,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (227,229,2);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (230,'Compesaciones a Empleados','022','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (230,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (227,230,3);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (231,'Otros Sueldos y salarios','023','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (231,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (227,231,4);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (232,'Impuestos sobre Nominas','025','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (232,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (227,232,5);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (233,'Beneficios a Empleados','026','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (233,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (227,233,6);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (234,'Fondo de Pension','027','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (234,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (227,234,7);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (235,'Seguro de compensac. a trabajad.','028','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (235,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (227,235,8);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (236,'Salarios dias festivos y vacaciones','029','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (236,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (227,236,9);

--A DEPTO HONDA NUEVOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (769,227,32); --TOTAL DE GASTOS DEL PERSONAL
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (770,228,32); --COMPENSACIONES A PROPIETARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (771,229,32); --COMPENSACIONES A SUPERVISORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (772,230,32); --COMPENSACIONES A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (773,231,32); --OTROS SUELDOS Y SALARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (774,232,32); --IMPUESTOS SOBRE NOMINAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (775,233,32); --BENEFICIOS A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (776,234,32); --FONDOS DE PENSION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (777,235,32); --SEGUROS DE COMPENSACION A TRABAJADORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (778,236,32); --SALARIOS DIAS FESTIVOS Y VACACIONES

        --FORMULA DE MES DE TOTAL DE GASTOS PERSONAL
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (237,769,'?+?+?+?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (237,770,1); --MES DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (237,771,2); --MES DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (237,772,3); --MES DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (237,773,4); --MES DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (237,774,5); --MES DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (237,775,6); --MES DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (237,776,7); --MES DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (237,777,8); --MES DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (237,778,9); --MES DE SALARIOS DIAS FESTIVOS Y VACACIONES

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (779,227,33); --TOTAL DE GASTOS DEL PERSONAL
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (780,228,33); --COMPENSACIONES A PROPIETARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (781,229,33); --COMPENSACIONES A SUPERVISORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (782,230,33); --COMPENSACIONES A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (783,231,33); --OTROS SUELDOS Y SALARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (784,232,33); --IMPUESTOS SOBRE NOMINAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (785,233,33); --BENEFICIOS A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (786,234,33); --FONDOS DE PENSION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (787,235,33); --SEGUROS DE COMPENSACION A TRABAJADORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (788,236,33); --SALARIOS DIAS FESTIVOS Y VACACIONES
    
        --FORMULA DEL AÑO A LA FECHA DE TOTAL DE GASTOS PERSONAL
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (238,779,'?+?+?+?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (238,780,1); --DEL AÑO A LA FECHA DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (238,781,2); --DEL AÑO A LA FECHA DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (238,782,3); --DEL AÑO A LA FECHA DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (238,783,4); --DEL AÑO A LA FECHA DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (238,784,5); --DEL AÑO A LA FECHA DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (238,785,6); --DEL AÑO A LA FECHA DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (238,786,7); --DEL AÑO A LA FECHA DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (238,787,8); --DEL AÑO A LA FECHA DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (238,788,9); --DEL AÑO A LA FECHA DE SALARIOS DIAS FESTIVOS Y VACACIONES

--D DEPTO DE SERVICIO
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (789,227,41); --TOTAL DE GASTOS DEL PERSONAL
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (790,228,41); --COMPENSACIONES A PROPIETARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (791,229,41); --COMPENSACIONES A SUPERVISORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (792,230,41); --COMPENSACIONES A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (793,231,41); --OTROS SUELDOS Y SALARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (794,232,41); --IMPUESTOS SOBRE NOMINAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (795,233,41); --BENEFICIOS A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (796,234,41); --FONDOS DE PENSION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (797,235,41); --SEGUROS DE COMPENSACION A TRABAJADORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (798,236,41); --SALARIOS DIAS FESTIVOS Y VACACIONES

        --FORMULA DE MES DE TOTAL DE GASTOS PERSONAL
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (239,789,'?+?+?+?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (239,790,1); --MES DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (239,791,2); --MES DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (239,792,3); --MES DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (239,793,4); --MES DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (239,794,5); --MES DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (239,795,6); --MES DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (239,796,7); --MES DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (239,797,8); --MES DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (239,798,9); --MES DE SALARIOS DIAS FESTIVOS Y VACACIONES

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (799,227,42); --TOTAL DE GASTOS DEL PERSONAL
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (800,228,42); --COMPENSACIONES A PROPIETARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (801,229,42); --COMPENSACIONES A SUPERVISORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (802,230,42); --COMPENSACIONES A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (803,231,42); --OTROS SUELDOS Y SALARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (804,232,42); --IMPUESTOS SOBRE NOMINAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (805,233,42); --BENEFICIOS A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (806,234,42); --FONDOS DE PENSION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (807,235,42); --SEGUROS DE COMPENSACION A TRABAJADORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (808,236,42); --SALARIOS DIAS FESTIVOS Y VACACIONES

        --FORMULA DEL AÑO A LA FECHA DE TOTAL DE GASTOS PERSONAL
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (240,799,'?+?+?+?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (240,800,1); --DEL AÑO A LA FECHA DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (240,801,2); --DEL AÑO A LA FECHA DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (240,802,3); --DEL AÑO A LA FECHA DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (240,803,4); --DEL AÑO A LA FECHA DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (240,804,5); --DEL AÑO A LA FECHA DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (240,805,6); --DEL AÑO A LA FECHA DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (240,806,7); --DEL AÑO A LA FECHA DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (240,807,8); --DEL AÑO A LA FECHA DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (240,808,9); --DEL AÑO A LA FECHA DE SALARIOS DIAS FESTIVOS Y VACACIONES

--F DEPTO REFACCIONES Y ACCESORIOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (809,227,47); --TOTAL DE GASTOS DEL PERSONAL
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (810,228,47); --COMPENSACIONES A PROPIETARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (811,229,47); --COMPENSACIONES A SUPERVISORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (812,230,47); --COMPENSACIONES A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (813,231,47); --OTROS SUELDOS Y SALARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (814,232,47); --IMPUESTOS SOBRE NOMINAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (815,233,47); --BENEFICIOS A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (816,234,47); --FONDOS DE PENSION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (817,235,47); --SEGUROS DE COMPENSACION A TRABAJADORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (818,236,47); --SALARIOS DIAS FESTIVOS Y VACACIONES

        --FORMULA DE MES DE TOTAL DE GASTOS PERSONAL
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (241,809,'?+?+?+?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (241,810,1); --MES DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (241,811,2); --MES DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (241,812,3); --MES DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (241,813,4); --MES DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (241,814,5); --MES DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (241,815,6); --MES DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (241,816,7); --MES DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (241,817,8); --MES DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (241,818,9); --MES DE SALARIOS DIAS FESTIVOS Y VACACIONES

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (819,227,48); --TOTAL DE GASTOS DEL PERSONAL
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (820,228,48); --COMPENSACIONES A PROPIETARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (821,229,48); --COMPENSACIONES A SUPERVISORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (822,230,48); --COMPENSACIONES A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (823,231,48); --OTROS SUELDOS Y SALARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (824,232,48); --IMPUESTOS SOBRE NOMINAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (825,233,48); --BENEFICIOS A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (826,234,48); --FONDOS DE PENSION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (827,235,48); --SEGUROS DE COMPENSACION A TRABAJADORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (828,236,48); --SALARIOS DIAS FESTIVOS Y VACACIONES

        --FORMULA DEL AÑO A LA FECHA DE TOTAL DE GASTOS PERSONAL
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (242,819,'?+?+?+?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (242,820,1); --DEL AÑO A LA FECHA DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (242,821,2); --DEL AÑO A LA FECHA DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (242,822,3); --DEL AÑO A LA FECHA DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (242,823,4); --DEL AÑO A LA FECHA DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (242,824,5); --DEL AÑO A LA FECHA DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (242,825,6); --DEL AÑO A LA FECHA DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (242,826,7); --DEL AÑO A LA FECHA DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (242,827,8); --DEL AÑO A LA FECHA DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (242,828,9); --DEL AÑO A LA FECHA DE SALARIOS DIAS FESTIVOS Y VACACIONES

--TOTAL DE INGRESOS Y EGRESOS DE LA COCESIONARIA
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (829,227,28); --TOTAL DE GASTOS DEL PERSONAL
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (830,228,28); --COMPENSACIONES A PROPIETARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (831,229,28); --COMPENSACIONES A SUPERVISORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (832,230,28); --COMPENSACIONES A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (833,231,28); --OTROS SUELDOS Y SALARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (834,232,28); --IMPUESTOS SOBRE NOMINAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (835,233,28); --BENEFICIOS A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (836,234,28); --FONDOS DE PENSION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (837,235,28); --SEGUROS DE COMPENSACION A TRABAJADORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (838,236,28); --SALARIOS DIAS FESTIVOS Y VACACIONES

        --FORMULA DE MES DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (243,830,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (243,770,1); --A DEPTO HONDA NUEVOS - MES DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (243,790,2); --D DEPTO DE SERVICIO - MES DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (243,810,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE COMPENSACIONES A PROPIETARIOS

        --FORMULA DE MES DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (244,831,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (244,771,1); --A DEPTO HONDA NUEVOS - MES DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (244,791,2); --D DEPTO DE SERVICIO - MES DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (244,811,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE COMPENSACIONES A SUPERVISORES
    
        --FORMULA DE MES DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (245,832,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (245,772,1); --A DEPTO HONDA NUEVOS - MES DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (245,792,2); --D DEPTO DE SERVICIO - MES DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (245,812,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE COMPENSACIONES A EMPLEADOS
        
        --FORMULA DE MES DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (246,833,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (246,773,1); --A DEPTO HONDA NUEVOS - MES DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (246,793,2); --D DEPTO DE SERVICIO - MES DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (246,813,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE OTROS SUELDOS Y SALARIOS

        --FORMULA DE MES DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (247,834,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (247,774,1); --A DEPTO HONDA NUEVOS - MES DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (247,794,2); --D DEPTO DE SERVICIO - MES DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (247,814,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE IMPUESTOS SOBRE NOMINAS
        
        --FORMULA DE MES DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (248,835,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (248,775,1); --A DEPTO HONDA NUEVOS - MES DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (248,795,2); --D DEPTO DE SERVICIO - MES DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (248,815,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE BENEFICIOS A EMPLEADOS

        --FORMULA DE MES DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (249,836,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (249,776,1); --A DEPTO HONDA NUEVOS - MES DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (249,796,2); --D DEPTO DE SERVICIO - MES DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (249,816,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE FONDOS DE PENSION

        --FORMULA DE MES DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (250,837,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (250,777,1); --A DEPTO HONDA NUEVOS - MES DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (250,797,2); --D DEPTO DE SERVICIO - MES DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (250,817,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE SEGUROS DE COMPENSACION A TRABAJADORES

        --FORMULA DE MES DE SALARIOS DIAS FESTIVOS Y VACACIONES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (251,838,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (251,778,1); --A DEPTO HONDA NUEVOS - MES DE SALARIOS DIAS FESTIVOS Y VACACIONES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (251,798,2); --D DEPTO DE SERVICIO - MES DE SALARIOS DIAS FESTIVOS Y VACACIONES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (251,818,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE SALARIOS DIAS FESTIVOS Y VACACIONES

        --FORMULA DE MES DE TOTAL DE GASTOS DEL PERSONAL
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (252,829,'?+?+?+?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (252,830,1); --MES DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (252,831,2); --MES DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (252,832,3); --MES DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (252,833,4); --MES DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (252,834,5); --MES DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (252,835,6); --MES DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (252,836,7); --MES DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (252,837,8); --MES DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (252,838,9); --MES DE SALARIOS DIAS FESTIVOS Y VACACIONES

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (839,227,29); --TOTAL DE GASTOS DEL PERSONAL
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (840,228,29); --COMPENSACIONES A PROPIETARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (841,229,29); --COMPENSACIONES A SUPERVISORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (842,230,29); --COMPENSACIONES A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (843,231,29); --OTROS SUELDOS Y SALARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (844,232,29); --IMPUESTOS SOBRE NOMINAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (845,233,29); --BENEFICIOS A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (846,234,29); --FONDOS DE PENSION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (847,235,29); --SEGUROS DE COMPENSACION A TRABAJADORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (848,236,29); --SALARIOS DIAS FESTIVOS Y VACACIONES

        --FORMULA DEL AÑO LA FECHA DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (253,840,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (253,780,1); --A DEPTO HONDA NUEVOS - MES DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (253,800,2); --D DEPTO DE SERVICIO - MES DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (253,820,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE COMPENSACIONES A PROPIETARIOS

        --FORMULA DEL AÑO LA FECHA DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (254,841,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (254,781,1); --A DEPTO HONDA NUEVOS - MES DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (254,801,2); --D DEPTO DE SERVICIO - MES DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (254,821,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE COMPENSACIONES A SUPERVISORES
    
        --FORMULA DEL AÑO LA FECHA DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (255,842,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (255,782,1); --A DEPTO HONDA NUEVOS - MES DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (255,802,2); --D DEPTO DE SERVICIO - MES DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (255,822,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE COMPENSACIONES A EMPLEADOS
        
        --FORMULA DEL AÑO LA FECHA DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (256,843,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (256,783,1); --A DEPTO HONDA NUEVOS - MES DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (256,803,2); --D DEPTO DE SERVICIO - MES DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (256,823,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE OTROS SUELDOS Y SALARIOS

        --FORMULA DEL AÑO LA FECHA DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (257,844,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (257,784,1); --A DEPTO HONDA NUEVOS - MES DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (257,804,2); --D DEPTO DE SERVICIO - MES DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (257,824,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE IMPUESTOS SOBRE NOMINAS
        
        --FORMULA DEL AÑO LA FECHA DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (258,845,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (258,785,1); --A DEPTO HONDA NUEVOS - MES DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (258,805,2); --D DEPTO DE SERVICIO - MES DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (258,825,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE BENEFICIOS A EMPLEADOS

        --FORMULA DEL AÑO LA FECHA DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (259,846,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (259,786,1); --A DEPTO HONDA NUEVOS - MES DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (259,806,2); --D DEPTO DE SERVICIO - MES DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (259,826,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE FONDOS DE PENSION

        --FORMULA DEL AÑO LA FECHA DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (260,847,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (260,787,1); --A DEPTO HONDA NUEVOS - MES DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (260,807,2); --D DEPTO DE SERVICIO - MES DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (260,827,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE SEGUROS DE COMPENSACION A TRABAJADORES

        --FORMULA DEL AÑO LA FECHA DE SALARIOS DIAS FESTIVOS Y VACACIONES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (261,848,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (261,788,1); --A DEPTO HONDA NUEVOS - MES DE SALARIOS DIAS FESTIVOS Y VACACIONES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (261,808,2); --D DEPTO DE SERVICIO - MES DE SALARIOS DIAS FESTIVOS Y VACACIONES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (261,828,3); --F DEPTO REFACCIONES Y ACCESORIOS - MES DE SALARIOS DIAS FESTIVOS Y VACACIONES

        --FORMULA DEL AÑO LA FECHA DE TOTAL DE GASTOS DEL PERSONAL
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (262,839,'?+?+?+?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (262,840,1); --MES DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (262,841,2); --MES DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (262,842,3); --MES DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (262,843,4); --MES DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (262,844,5); --MES DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (262,845,6); --MES DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (262,846,7); --MES DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (262,847,8); --MES DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (262,848,9); --MES DE SALARIOS DIAS FESTIVOS Y VACACIONES

    --GANANCIAS BRUTAS VENTAS %
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (849,227,30); --TOTAL DE GASTOS DEL PERSONAL
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (850,228,30); --COMPENSACIONES A PROPIETARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (851,229,30); --COMPENSACIONES A SUPERVISORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (852,230,30); --COMPENSACIONES A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (853,231,30); --OTROS SUELDOS Y SALARIOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (854,232,30); --IMPUESTOS SOBRE NOMINAS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (855,233,30); --BENEFICIOS A EMPLEADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (856,234,30); --FONDOS DE PENSION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (857,235,30); --SEGUROS DE COMPENSACION A TRABAJADORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (858,236,30); --SALARIOS DIAS FESTIVOS Y VACACIONES

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (263,850,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (263,840,1); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE COMPENSACIONES A PROPIETARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (263,639,2); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE VENTAS

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (264,851,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (264,841,1); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE COMPENSACIONES A SUPERVISORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (264,639,2); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE VENTAS
   
        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (265,852,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (265,842,1); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE COMPENSACIONES A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (265,639,2); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE VENTAS
        
        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (266,853,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (266,843,1); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE OTROS SUELDOS Y SALARIOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (266,639,2); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE VENTAS

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (267,854,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (267,844,1); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE IMPUESTOS SOBRE NOMINAS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (267,639,2); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE VENTAS
        
        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (268,855,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (268,845,1); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE BENEFICIOS A EMPLEADOS
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (268,639,2); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE VENTAS

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (269,856,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (269,846,1); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE FONDOS DE PENSION
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (269,639,2); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE VENTAS

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (270,857,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (270,847,1); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE SEGUROS DE COMPENSACION A TRABAJADORES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (270,639,2); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE VENTAS

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE SALARIOS DIAS FESTIVOS Y VACACIONES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (271,858,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (271,848,1); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE SALARIOS DIAS FESTIVOS Y VACACIONES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (271,639,2); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE VENTAS

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE TOTAL DE GASTOS DEL PERSONAL
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (272,849,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (272,839,1); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE TOTAL DE GASTOS DEL PERSONAL
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (272,639,2); --TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA DE VENTAS

