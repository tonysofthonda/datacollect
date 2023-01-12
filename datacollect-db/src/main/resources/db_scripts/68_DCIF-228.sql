--PAGINA 2 Y 3
INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (217,'Gastos','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (217,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (207,217,4);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (218,'Compensaciones a Vendedores','011','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (218,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (217,218,1);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (219,'Intereses Plan Piso','012','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (219,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (217,219,2);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (220,'Comp por contr y serv. Fin. Y de seg','013','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (220,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (217,220,3);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (221,'Gastos de Preparacion','014','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (221,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (217,221,4);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (222,'Gastos por traslados','014A','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (222,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (217,222,5);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (223,'Gtos de Garantias nvos y usados','015','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (223,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (217,223,6);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (224,'Gastos de Demostracion','016','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (224,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (217,224,7);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (225,'Publicidad nuevos y usados','019','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (225,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (217,225,8);

INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (226,'Total gtos. de venta variable','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (226,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (217,226,9);

--A DEPTO HONDA NUEVOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (694,218,32); --COMPENSACIONES A VENDEDORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (695,219,32); --INTERESES PLAN PISO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (696,220,32); --COMP POR CONTR Y SERV. FIN. Y DE SEG
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (697,221,32); --GASTOS DE PREPARACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (698,222,32); --GASTOS POR TRASLADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (699,223,32); --GTOS DE GARANTIAS NVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (700,224,32); --GASTOS DE DEMOSTRACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (701,225,32); --PUBLICIDAD NUEVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (702,226,32); --TOTAL GTOS. DE VENTA VARIABLE
    
        --FORMULA DE MES DE TOTAL GTOS. DE VENTA VARIABLE
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (210,702,'?+?+?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (210,694,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (210,695,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (210,696,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (210,697,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (210,698,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (210,699,6);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (210,700,7);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (210,701,8);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (703,218,33); --COMPENSACIONES A VENDEDORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (704,219,33); --INTERESES PLAN PISO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (705,220,33); --COMP POR CONTR Y SERV. FIN. Y DE SEG
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (706,221,33); --GASTOS DE PREPARACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (707,222,33); --GASTOS POR TRASLADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (708,223,33); --GTOS DE GARANTIAS NVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (709,224,33); --GASTOS DE DEMOSTRACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (710,225,33); --PUBLICIDAD NUEVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (711,226,33); --TOTAL GTOS. DE VENTA VARIABLE
    
        --FORMULA DEL AÑO A LA FECHA DE TOTAL GTOS. DE VENTA VARIABLE
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (211,711,'?+?+?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (211,703,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (211,704,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (211,705,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (211,706,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (211,707,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (211,708,6);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (211,709,7);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (211,710,8);

--B OTROS VEHICULOS NUEVOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (712,218,35); --COMPENSACIONES A VENDEDORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (713,219,35); --INTERESES PLAN PISO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (714,220,35); --COMP POR CONTR Y SERV. FIN. Y DE SEG
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (715,221,35); --GASTOS DE PREPARACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (716,222,35); --GASTOS POR TRASLADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (717,223,35); --GTOS DE GARANTIAS NVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (718,224,35); --GASTOS DE DEMOSTRACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (719,225,35); --PUBLICIDAD NUEVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (720,226,35); --TOTAL GTOS. DE VENTA VARIABLE
    
        --FORMULA DE MES DE TOTAL GTOS. DE VENTA VARIABLE
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (212,720,'?+?+?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (212,712,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (212,713,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (212,714,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (212,715,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (212,716,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (212,717,6);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (212,718,7);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (212,719,8);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (721,218,36); --COMPENSACIONES A VENDEDORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (722,219,36); --INTERESES PLAN PISO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (723,220,36); --COMP POR CONTR Y SERV. FIN. Y DE SEG
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (724,221,36); --GASTOS DE PREPARACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (725,222,36); --GASTOS POR TRASLADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (726,223,36); --GTOS DE GARANTIAS NVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (727,224,36); --GASTOS DE DEMOSTRACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (728,225,36); --PUBLICIDAD NUEVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (729,226,36); --TOTAL GTOS. DE VENTA VARIABLE
    
        --FORMULA DEL AÑO A LA FECHA DE TOTAL GTOS. DE VENTA VARIABLE
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (213,729,'?+?+?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (213,721,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (213,722,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (213,723,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (213,724,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (213,725,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (213,726,6);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (213,727,7);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (213,728,8);

--C DEPTO VEHICULOS USADOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (730,218,38); --COMPENSACIONES A VENDEDORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (731,219,38); --INTERESES PLAN PISO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (732,220,38); --COMP POR CONTR Y SERV. FIN. Y DE SEG
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (733,221,38); --GASTOS DE PREPARACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (734,222,38); --GASTOS POR TRASLADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (735,223,38); --GTOS DE GARANTIAS NVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (736,224,38); --GASTOS DE DEMOSTRACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (737,225,38); --PUBLICIDAD NUEVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (738,226,38); --TOTAL GTOS. DE VENTA VARIABLE
    
        --FORMULA DE MES DE TOTAL GTOS. DE VENTA VARIABLE
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (214,738,'?+?+?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (214,730,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (214,731,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (214,732,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (214,733,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (214,734,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (214,735,6);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (214,736,7);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (214,737,8);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (739,218,39); --COMPENSACIONES A VENDEDORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (740,219,39); --INTERESES PLAN PISO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (741,220,39); --COMP POR CONTR Y SERV. FIN. Y DE SEG
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (742,221,39); --GASTOS DE PREPARACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (743,222,39); --GASTOS POR TRASLADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (744,223,39); --GTOS DE GARANTIAS NVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (745,224,39); --GASTOS DE DEMOSTRACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (746,225,39); --PUBLICIDAD NUEVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (747,226,39); --TOTAL GTOS. DE VENTA VARIABLE
    
        --FORMULA DEL AÑO A LA FECHA DE TOTAL GTOS. DE VENTA VARIABLE
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (215,747,'?+?+?+?+?+?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (215,739,1);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (215,740,2);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (215,741,3);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (215,742,4);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (215,743,5);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (215,744,6);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (215,745,7);
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (215,746,8);

--TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARAIA
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (748,218,28); --COMPENSACIONES A VENDEDORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (749,219,28); --INTERESES PLAN PISO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (750,220,28); --COMP POR CONTR Y SERV. FIN. Y DE SEG
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (751,221,28); --GASTOS DE PREPARACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (752,222,28); --GASTOS POR TRASLADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (753,223,28); --GTOS DE GARANTIAS NVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (754,224,28); --GASTOS DE DEMOSTRACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (755,225,28); --PUBLICIDAD NUEVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (756,226,28); --TOTAL GTOS. DE VENTA VARIABLE
    
        --FORMULA DE MES DE COMPENSACIONES A VENDEDORES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (216,748,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (216,694,1); --COMPENSACIONES A VENDEDORES A DEPTO HONDA NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (216,712,2); --COMPENSACIONES A VENDEDORES B OTROS VEHICULOS NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (216,730,3); --COMPENSACIONES A VENDEDORES C DEPT VEHICULOS USADOS - MES

        --FORMULA DE MES DE INTERESES PLAN PISO
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (217,749,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (217,695,1); --INTERESES PLAN PISO A DEPTO HONDA NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (217,713,2); --INTERESES PLAN PISO B OTROS VEHICULOS NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (217,731,3); --INTERESES PLAN PISO C DEPT VEHICULOS USADOS - MES

        --FORMULA DE MES DE COMP POR CONTR Y SERV. FIN. Y DE SEG
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (218,750,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (218,696,1); --COMP POR CONTR Y SERV. FIN. Y DE SEG A DEPTO HONDA NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (218,714,2); --COMP POR CONTR Y SERV. FIN. Y DE SEG B OTROS VEHICULOS NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (218,732,3); --COMP POR CONTR Y SERV. FIN. Y DE SEG C DEPT VEHICULOS USADOS - MES

        --FORMULA DE MES DE GASTOS DE PREPARACION
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (219,751,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (219,697,1); --GASTOS DE PREPARACION A DEPTO HONDA NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (219,715,2); --GASTOS DE PREPARACION B OTROS VEHICULOS NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (219,733,3); --GASTOS DE PREPARACION C DEPT VEHICULOS USADOS - MES

        --FORMULA DE MES DE GASTOS POR TRASLADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (220,752,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (220,698,1); --GASTOS DE TRASLADOS A DEPTO HONDA NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (220,716,2); --GASTOS DE TRASLADOS B OTROS VEHICULOS NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (220,734,3); --GASTOS DE TRASLADOS C DEPT VEHICULOS USADOS - MES

        --FORMULA DE MES DE GTOS DE GARANTIAS NVOS Y USADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (221,753,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (221,699,1); --GTOS DE GARANTIAS NVOS Y USADOS A DEPTO HONDA NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (221,717,2); --GTOS DE GARANTIAS NVOS Y USADOS B OTROS VEHICULOS NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (221,735,3); --GTOS DE GARANTIAS NVOS Y USADOS C DEPT VEHICULOS USADOS - MES

        --FORMULA DE MES DE GASTOS DE DEMOSTRACION
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (222,754,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (222,700,1); --GASTOS DE DEMOSTRACION A DEPTO HONDA NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (222,718,2); --GASTOS DE DEMOSTRACION B OTROS VEHICULOS NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (222,736,3); --GASTOS DE DEMOSTRACION C DEPT VEHICULOS USADOS - MES

        --FORMULA DE MES DE PUBLICIDAD NUEVOS Y USADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (223,755,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (223,701,1); --PUBLICIDAD NUEVOS Y USADOS A DEPTO HONDA NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (223,719,2); --PUBLICIDAD NUEVOS Y USADOS B OTROS VEHICULOS NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (223,737,3); --PUBLICIDAD NUEVOS Y USADOS C DEPT VEHICULOS USADOS - MES

        --FORMULA DE MES DE TOTAL GTOS. DE VENTA VARIABLE
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (224,756,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (224,702,1); --TOTAL GTOS. DE VENTA VARIABLE A DEPTO HONDA NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (224,720,2); --TOTAL GTOS. DE VENTA VARIABLE B OTROS VEHICULOS NUEVOS - MES
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (224,738,3); --TOTAL GTOS. DE VENTA VARIABLE C DEPT VEHICULOS USADOS - MES

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (757,218,29); --COMPENSACIONES A VENDEDORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (758,219,29); --INTERESES PLAN PISO
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (759,220,29); --COMP POR CONTR Y SERV. FIN. Y DE SEG
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (760,221,29); --GASTOS DE PREPARACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (761,222,29); --GASTOS POR TRASLADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (762,223,29); --GTOS DE GARANTIAS NVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (763,224,29); --GASTOS DE DEMOSTRACION
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (764,225,29); --PUBLICIDAD NUEVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (765,226,29); --TOTAL GTOS. DE VENTA VARIABLE
    
        --FORMULA DEL AÑO A LA FECHA DE COMPENSACIONES A VENDEDORES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (225,757,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (225,703,1); --COMPENSACIONES A VENDEDORES A DEPTO HONDA NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (225,721,2); --COMPENSACIONES A VENDEDORES B OTROS VEHICULOS NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (225,739,3); --COMPENSACIONES A VENDEDORES C DEPT VEHICULOS USADOS - DEL AÑO A LA FECHA

        --FORMULA DEL AÑO A LA FECHA DE INTERESES PLAN PISO
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (226,758,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (226,704,1); --INTERESES PLAN PISO A DEPTO HONDA NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (226,722,2); --INTERESES PLAN PISO B OTROS VEHICULOS NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (226,740,3); --INTERESES PLAN PISO C DEPT VEHICULOS USADOS - DEL AÑO A LA FECHA

        --FORMULA DEL AÑO A LA FECHA DE COMP POR CONTR Y SERV. FIN. Y DE SEG
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (227,759,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (227,705,1); --COMP POR CONTR Y SERV. FIN. Y DE SEG A DEPTO HONDA NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (227,723,2); --COMP POR CONTR Y SERV. FIN. Y DE SEG B OTROS VEHICULOS NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (227,741,3); --COMP POR CONTR Y SERV. FIN. Y DE SEG C DEPT VEHICULOS USADOS - DEL AÑO A LA FECHA

        --FORMULA DEL AÑO A LA FECHA DE GASTOS DE PREPARACION
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (228,760,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (228,706,1); --GASTOS DE PREPARACION A DEPTO HONDA NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (228,724,2); --GASTOS DE PREPARACION B OTROS VEHICULOS NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (228,742,3); --GASTOS DE PREPARACION C DEPT VEHICULOS USADOS - DEL AÑO A LA FECHA

        --FORMULA DEL AÑO A LA FECHA DE GASTOS POR TRASLADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (229,761,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (229,707,1); --GASTOS DE TRASLADOS A DEPTO HONDA NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (229,725,2); --GASTOS DE TRASLADOS B OTROS VEHICULOS NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (229,743,3); --GASTOS DE TRASLADOS C DEPT VEHICULOS USADOS - DEL AÑO A LA FECHA

        --FORMULA DEL AÑO A LA FECHA DE GTOS DE GARANTIAS NVOS Y USADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (230,762,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (230,708,1); --GTOS DE GARANTIAS NVOS Y USADOS A DEPTO HONDA NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (230,726,2); --GTOS DE GARANTIAS NVOS Y USADOS B OTROS VEHICULOS NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (230,744,3); --GTOS DE GARANTIAS NVOS Y USADOS C DEPT VEHICULOS USADOS - DEL AÑO A LA FECHA

        --FORMULA DEL AÑO A LA FECHA DE GASTOS DE DEMOSTRACION
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (231,763,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (231,709,1); --GASTOS DE DEMOSTRACION A DEPTO HONDA NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (231,727,2); --GASTOS DE DEMOSTRACION B OTROS VEHICULOS NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (231,745,3); --GASTOS DE DEMOSTRACION C DEPT VEHICULOS USADOS - DEL AÑO A LA FECHA

        --FORMULA DEL AÑO A LA FECHA DE PUBLICIDAD NUEVOS Y USADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (232,764,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (232,710,1); --PUBLICIDAD NUEVOS Y USADOS A DEPTO HONDA NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (232,728,2); --PUBLICIDAD NUEVOS Y USADOS B OTROS VEHICULOS NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (232,746,3); --PUBLICIDAD NUEVOS Y USADOS C DEPT VEHICULOS USADOS - DEL AÑO A LA FECHA

        --FORMULA DEL AÑO A LA FECHA DE TOTAL GTOS. DE VENTA VARIABLE
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (233,765,'?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (233,711,1); --TOTAL GTOS. DE VENTA VARIABLE A DEPTO HONDA NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (233,729,2); --TOTAL GTOS. DE VENTA VARIABLE B OTROS VEHICULOS NUEVOS - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (233,747,3); --TOTAL GTOS. DE VENTA VARIABLE C DEPT VEHICULOS USADOS - DEL AÑO A LA FECHA

    --GANANCIAS BRUTAS VENTAS %
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (766,218,30); --COMPENSACIONES A VENDEDORES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (767,225,30); --PUBLICIDAD NUEVOS Y USADOS
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (768,226,30); --TOTAL GTOS. DE VENTA VARIABLE

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE COMPENSACIONES A VENDEDORES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (234,766,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (234,757,1); --COMPENSACIONES A VENDEDORES TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIA - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (234,639,2); --VENTAS TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE PUBLICIDAD NUEVOS Y USADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (235,767,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (235,764,1); --PUBLICIDAD NUEVOS Y USADOS TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIA - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (235,639,2); --VENTAS TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE TOTAL GTOS. DE VENTA VARIABLE
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (236,768,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (236,765,1); --TOTAL GTOS. DE VENTA VARIABLE TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIA - DEL AÑO A LA FECHA
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (236,639,2); --VENTAS TOTAL DE INGRESOS Y EGRESOS DE LA CONCESIONARIO - DEL AÑO A LA FECHA
