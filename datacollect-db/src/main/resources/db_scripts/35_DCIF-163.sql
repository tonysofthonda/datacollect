INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (2, 'Costo');
INSERT INTO dcollectdb.dc_type_account_value (id, name) VALUES (3, 'Depreciacion Acumulada');

--ACTIVOS
	--TOTAL DE ACTIVO FIJO
	INSERT INTO dcollectdb.dc_account (id,name,page,formula,dc_record_status_id) VALUES (45,'Total de activo fijo','1',1,1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (1,45,2);
	
	INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (46,'Terreno','280','1',1,1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (45,46,1);
	
	INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (47,'Edificios','281 / 381','1',1,1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (45,47,2);
	
	INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (48,'Maq. y Equipo de Taller','282 / 382','1',1,1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (45,48,3);
	
	INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (49,'Equipo de refacciones y accesorios','283 / 383','1',1,1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (45,49,4);
	
	INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (50,'Muebles y enseres','284 / 384','1',1,1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (45,50,5);
	
	INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (51,'Vehiculos de la compañia','285 / 385','1',1,1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (45,51,6);
	
	INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (52,'Mejoras pr Op.','286 / 386','1',1,1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (45,52,7);
	
	INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (53,'Rotulos','287 / 387','1',1,1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (45,53,8);
	
	INSERT INTO dcollectdb.dc_account (id,name,account_number,page,formula,dc_record_status_id) VALUES (54,'Otros','288 / 388','1',1,1);
	INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (45,54,9);
	
	--COSTO
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (44,45,2); --TOTAL DE ACTIVO FIJO
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (45,46,2); --TERRENO
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (46,47,2); --EDIFICIOS
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (47,48,2); --MAQ. Y EQUIPO DE TALLER
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (48,49,2); --EQUIPO DE REFACCIONES Y ACCESORIOS
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (49,50,2); --MUEBLES Y ENSERES
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (50,51,2); --VEHICULOS DE LA COMPAÑIA
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (51,52,2); --MEJORAS PR OP
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (52,53,2); --ROTULOS
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (53,54,2); --OTROS
	
	--FORMULA COSTO DE TOTAL DE ACTIVO FIJO
	INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (7,44,'?+?+?+?+?+?+?+?');
	
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (7,46,1); --COSTO DE EDIFICIOS
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (7,47,2); --COSTO DE MAQ. Y EQUIPO DE TALLER
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (7,48,3); --COSTO DE EQUIPO DE REFACCIONES Y ACCESORIOS
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (7,49,4); --COSTO DE MUEBLES Y ENSERES
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (7,50,5); --COSTO DE VEHICULOS DE LA COMPAÑIA
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (7,51,6); --COSTO DE MEJORAS PR OP
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (7,52,7); --COSTO DE ROTULOS
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (7,53,8); --COSTO DE OTROS
	
	--DEPRECIACION ACUMULADA
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (54,45,3); --TOTAL DE ACTIVO FIJO
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (55,47,3); --EDIFICIOS
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (56,48,3); --MAQ. Y EQUIPO DE TALLER
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (57,49,3); --EQUIPO DE REFACCIONES Y ACCESORIOS
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (58,50,3); --MUEBLES Y ENSERES
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (59,51,3); --VEHICULOS DE LA COMPAÑIA
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (60,52,3); --MEJORAS PR OP
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (61,53,3); --ROTULOS
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (62,54,3); --OTROS
	
	--FORMULA DE DEPRECIACION ACUMULADA DE TOTAL DE ACTIVO FIJO
	INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (8,54,'?+?+?+?+?+?+?+?');
	
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (8,55,1); --DEPRECIACION ACUMULADA DE EDIFICIOS
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (8,56,2); --DEPRECIACION ACUMULADA DE MAQ. Y EQUIPO DE TALLER
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (8,57,3); --DEPRECIACION ACUMULADA DE EQUIPO DE REFACCIONES Y ACCESORIOS
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (8,58,4); --DEPRECIACION ACUMULADA DE MUEBLES Y ENSERES
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (8,59,5); --DEPRECIACION ACUMULADA DE VEHICULOS DE LA COMPAÑIA
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (8,60,6); --DEPRECIACION ACUMULADA DE MEJORAS PR OP
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (8,62,7); --DEPRECIACION ACUMULADA DE ROTULOS
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (8,62,8); --DEPRECIACION ACUMULADA DE OTROS

	--IMPORTE
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (63,45,1); --TOTAL DE ACTIVO FIJO
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (64,46,1); --TERRENO
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (65,47,1); --EDIFICIOS
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (66,48,1); --MAQ. Y EQUIPO DE TALLER
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (67,49,1); --EQUIPO DE REFACCIONES Y ACCESORIOS
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (68,50,1); --MUEBLES Y ENSERES
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (69,51,1); --VEHICULOS DE LA COMPAÑIA
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (70,52,1); --MEJORAS PR OP
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (71,53,1); --ROTULOS
	INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (72,54,1); --OTROS

	--FORMULA DE IMPORTE DE TOTAL DE ACTIVO FIJO
	INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (9,63,'?+?+?+?+?+?+?+?+?');

	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (9,64,1); --IMPORTE DE TERRENO
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (9,65,2);	--IMPORTE DE EDIFICIOS
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (9,66,3); --IMPORTE DE MAQ. Y EQUIPO DE TALLER
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (9,67,4); --IMPORTE DE EQUIPO DE REFACCIONES Y ACCESORIOS
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (9,68,5); --IMPORTE DE MUEBLES Y ENSERES
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (9,69,6); --IMPORTE DE VEHICULOS DE LA COMPAÑIA
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (9,70,7); --IMPORTE DE MEJORAS PR OP
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (9,71,8); --IMPORTE DE ROTULOS
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (9,72,9); --IMPORTE DE OTROS

	--FORMULA DE IMPORTE DE TERRENO
	INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (10,64,'?');
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (10,45,1); --COSTO DE TERRENO

	--FORMULA DE IMPORTE DE EDIFICIOS
	INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (11,65,'?-?');
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (11,46,1); --COSTO DE EDIFICIOS
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (11,55,2); --DEPRECIACION ACUMULADA DE EDIFICIOS

	--FORMULA DE IMPORTE DE MAQ. Y EQUIPO DE TALLER
	INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (12,66,'?-?');
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (12,47,1); --COSTO DE MAQ. Y EQUIPO DE TALLER
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (12,56,2); --DEPRECIACION ACUMULADA DE MAQ. Y EQUIPO DE TALLER

	--FORMULA DE IMPORTE DE EQUIPO DE REFACCIONES Y ACCESORIOS
	INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (13,67,'?-?');
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (13,48,1); --COSTO DE EQUIPO DE REFACCIONES Y ACCESORIOS
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (13,57,2); --DEPRECIACION ACUMULADA DE EQUIPO DE REFACCIONES Y ACCESORIOS

	--FORMULA DE IMPORTE DE MUEBLES Y ENSERES
	INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (14,68,'?-?');
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (14,49,1); --COSTO DE MUEBLES Y ENSERES
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (14,58,2); --DEPRECIACION ACUMULADA DE MUEBLES Y ENSERES

	--FORMULA DE IMPORTE DE VEHICULOS DE LA COMPAÑIA
	INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (15,69,'?-?');
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (15,50,1); --COSTO DE VEHICULOS DE LA COMPAÑIA
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (15,59,2); --DEPRECIACION ACUMULADA DE VEHICULOS DE LA COMPAÑIA

	--FORMULA DE IMPORTE DE MEJORAS PR OP
	INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (16,70,'?-?');
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (16,51,1); --COSTO DE MEJORAS PR OP
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (16,60,2); --DEPRECIACION ACUMULADA DE MEJORAS PR OP

	--FORMULA DE IMPORTE DE ROTULOS
	INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (17,71,'?-?');
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (17,52,1); --COSTO DE ROTULOS
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (17,61,2); --DEPRECIACION ACUMULADA DE ROTULOS

	--FORMULA DE IMPORTE DE OTROS
	INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (18,72,'?-?');
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (18,53,1); --COSTO DE OTROS
	INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (18,62,2); --DEPRECIACION ACUMULADA DE OTROS