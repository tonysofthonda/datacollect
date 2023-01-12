--ANALISIS DE UTILIDAD BRUTA
    --F DEPARTAMENTO DE REF Y ACCESORIOS
    --OTRAS REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (197,'Otras refacciones y accesorios','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (177,197,3);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (197,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (198,'o.r clientes','480','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (197,198,1);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (198,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (199,'o.r garantias','482','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (197,199,2);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (199,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (200,'o.r interna','483','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (197,200,3);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (200,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (201,'otros','484','4',1,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (197,201,4);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (201,4);

    INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (202,'Ajuste de inventario desc s/compras may','669','4',0,1);
    INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (197,202,5);
    INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (202,4);

    --MES ACTUAL
--VENTAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (561,197,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (562,198,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (563,199,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (564,200,19);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (565,201,19);

    --FORMULA VENTAS DE OTRAS REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (139,561,'?+?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (139,562,1); --VENTAS DE O.R CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (139,563,2); --VENTAS DE O.R GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (139,564,3); --VENTAS DE O.R INTERNA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (139,565,4); --VENTAS DE OTROS
--UTILIDAD BRUTA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (566,197,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (567,198,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (568,199,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (569,200,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (570,201,20);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (571,202,20);

    --FORMULA UTILIDAD BRUTA DE OTRAS REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (140,566,'?+?+?+?+?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (140,567,1); --UTILIDAD BRUTA DE O.R CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (140,568,2); --UTILIDAD BRUTA DE O.R GARANTIAS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (140,569,3); --UTILIDAD BRUTA DE O.R INTERNA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (140,570,4); --UTILIDAD BRUTA DE OTROS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (140,571,5); --UTILIDAD BRUTA DE AJUSTE DE INVENTARIO DESC S/COMPRAS MAY
--% UNIDADES VENDIDAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (572,197,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (573,198,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (574,199,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (575,200,21);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (576,201,21);
    
    --FORMULA % UNIDADES VENDIDAS DE OTRAS REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (141,572,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (141,566,1); --UTILIDAD BRUTA DE OTRAS REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (141,561,2); --VENTAS DE OTRAS REFACCIONES Y ACCESORIOS
    
    --FORMULA % UNIDADES VENDIDAS DE O.R CLIENTES
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (142,573,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (142,567,1); --UTILIDAD BRUTA DE O.R CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (142,562,2); --VENTAS DE O.R CLIENTES
    
    --FORMULA % UNIDADES VENDIDAS DE O.R INTERNA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (143,575,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (143,569,1); --UTILIDAD BRUTA DE O.R INTERNA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (143,564,2); --VENTAS DE O.R INTERNA

    --FORMULA % UNIDADES VENDIDAS DE OTROS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (144,576,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (144,570,1); --UTILIDAD BRUTA DE OTROS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (144,565,2); --VENTAS DE OTROS
    
    --AÑO A LA FECHA
--VENTAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (577,197,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (578,198,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (579,199,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (580,200,24);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (581,201,24);

--UTILIDAD BRUTA
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (582,197,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (583,198,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (584,199,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (585,200,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (586,201,25);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (587,202,25);

--% UNIDADES VENDIDAS
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (588,197,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (589,198,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (590,199,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (591,200,26);
    INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (592,201,26);
    
    --FORMULA % UNIDADES VENDIDAS DE OTRAS REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (145,588,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (145,582,1); --UTILIDAD BRUTA DE OTRAS REFACCIONES Y ACCESORIOS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (145,577,2); --VENTAS DE OTRAS REFACCIONES Y ACCESORIOS
    
    --FORMULA % UNIDADES VENDIDAS DE O.R CLIENTES
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (146,589,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (146,583,1); --UTILIDAD BRUTA DE O.R CLIENTES
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (146,578,2); --VENTAS DE O.R CLIENTES
    
    --FORMULA % UNIDADES VENDIDAS DE O.R INTERNA
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (147,591,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (147,585,1); --UTILIDAD BRUTA DE O.R INTERNA
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (147,580,2); --VENTAS DE O.R INTERNA

    --FORMULA % UNIDADES VENDIDAS DE OTROS
    INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (148,592,'?*100/?');

    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (148,586,1); --UTILIDAD BRUTA DE OTROS
    INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (148,581,2); --VENTAS DE OTROS