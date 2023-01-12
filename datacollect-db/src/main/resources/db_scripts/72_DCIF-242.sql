--PAGINA 2 Y 3
INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (264,'Total de gastos fijos','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (264,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (207,264,8);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (265,'Seguros otros','088','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (265,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (264,265,1);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (266,'Impuestos otros','089','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (266,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (264,266,2);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (267,'Intereses otros','090','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (267,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (264,267,3);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (268,'Depreciacion otros','091','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (268,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (264,268,4);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (269,'Reparaciones y rentas de equipo','092','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (269,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (264,269,5);

--A DEPTO HONDA NUEVOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1264,264,32);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1265,265,32);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1266,266,32);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1267,267,32);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1268,268,32);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1269,269,32);

        --FORMULA TOTAL DE GASTOS FIJOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (366,1264,'?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (366,1265,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (366,1266,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (366,1267,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (366,1268,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (366,1269,5);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1270,264,33);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1271,265,33);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1272,266,33);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1273,267,33);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1274,268,33);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1275,269,33);

--B OTROS VEHICULOS NUEVOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1276,264,35,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1277,265,35,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1278,266,35,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1279,267,35,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1280,268,35,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1281,269,35,0,1,0);
        
        --FORMULA TOTAL DE GASTOS FIJOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (367,1276,'?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (367,1277,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (367,1278,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (367,1279,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (367,1280,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (367,1281,5);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1282,264,36,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1283,265,36,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1284,266,36,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1285,267,36,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1286,268,36,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1287,269,36,0,1,0);
        
--C DEPTO VEHICULOS USADOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1288,264,38);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1289,265,38);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1290,266,38);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1291,267,38);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1292,268,38);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1293,269,38);
        
        --FORMULA TOTAL DE GASTOS FIJOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (368,1288,'?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (368,1289,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (368,1290,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (368,1291,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (368,1292,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (368,1293,5);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1294,264,39);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1295,265,39);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1296,266,39);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1297,267,39);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1298,268,39);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1299,269,39);
        
--D DEPTO DE SERVICIO
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1300,264,41);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1301,265,41);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1302,266,41);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1303,267,41);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1304,268,41);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1305,269,41);
        
        --FORMULA TOTAL DE GASTOS FIJOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (369,1300,'?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (369,1301,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (369,1302,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (369,1303,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (369,1304,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (369,1305,5);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1306,264,42);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1307,265,42);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1308,266,42);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1309,267,42);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1310,268,42);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1311,269,42);

--E DEPTO TALLER DE CARROCERIA
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1312,264,44);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1313,265,44);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1314,266,44);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1315,267,44);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1316,268,44);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1317,269,44);
        
        --FORMULA TOTAL DE GASTOS FIJOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (370,1312,'?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (370,1313,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (370,1314,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (370,1315,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (370,1316,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (370,1317,5);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1318,264,45);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1319,265,45);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1320,266,45);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1321,267,45);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1322,268,45);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1323,269,45);
        
--F DEPTO REFACCIONES Y ACCESORIOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1324,264,47);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1325,265,47);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1326,266,47);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1327,267,47);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1328,268,47);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1329,269,47);

        --FORMULA TOTAL DE GASTOS FIJOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (371,1324,'?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (371,1325,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (371,1326,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (371,1327,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (371,1328,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (371,1329,5);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1330,264,48);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1331,265,48);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1332,266,48);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1333,267,48);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1334,268,48);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1335,269,48);

--TOTAL DE INGRESOS Y EGRESOS DE LA COCESIONARIA
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1336,264,28);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1337,265,28);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1338,266,28);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1339,267,28);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1340,268,28);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1341,269,28);

        --FORMULA DE MES DE SEGUROS OTROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (372,1337,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (372,1265,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (372,1277,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (372,1289,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (372,1301,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (372,1313,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (372,1325,6);

        --FORMULA DE MES DE IMPUESTOS OTROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (373,1338,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (373,1266,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (373,1278,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (373,1290,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (373,1302,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (373,1314,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (373,1326,6);

        --FORMULA DE MES DE INTERESES OTROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (374,1339,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (374,1267,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (374,1279,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (374,1291,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (374,1303,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (374,1315,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (374,1327,6);
        --FORMULA DE MES DE DEPRECIACION OTROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (375,1340,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (375,1268,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (375,1280,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (375,1292,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (375,1304,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (375,1316,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (375,1328,6);
        --FORMULA DE MES DE REPARACIONES RENTA Y EQUIPOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (376,1341,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (376,1269,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (376,1281,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (376,1293,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (376,1305,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (376,1317,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (376,1329,6);
        --FORMULA DE MES DE TOTAL DE GASTOS FIJOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (377,1336,'?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (377,1337,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (377,1338,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (377,1339,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (377,1340,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (377,1341,5);
            
    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1342,264,29);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1343,265,29);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1344,266,29);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1345,267,29);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1346,268,29);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1347,269,29);

        --FORMULA DEL AÑO A LA FECHA DE SEGUROS OTROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (378,1343,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (378,1271,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (378,1283,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (378,1295,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (378,1307,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (378,1319,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (378,1331,6);

        --FORMULA DEL AÑO A LA FECHA DE IMPUESTOS OTROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (379,1344,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (379,1272,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (379,1284,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (379,1296,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (379,1308,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (379,1320,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (379,1332,6);

        --FORMULA DEL AÑO A LA FECHA DE INTERESES OTROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (380,1345,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (380,1273,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (380,1285,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (380,1297,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (380,1309,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (380,1321,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (380,1333,6);

        --FORMULA DEL AÑO A LA FECHA DE DEPRECIACION OTROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (381,1346,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (381,1274,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (381,1286,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (381,1298,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (381,1310,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (381,1322,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (381,1334,6);

        --FORMULA DEL AÑO A LA FECHA DE REPARACIONES RENTA Y EQUIPOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (382,1347,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (382,1275,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (382,1287,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (382,1299,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (382,1311,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (382,1323,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (382,1335,6);
        --FORMULA DEL AÑO A LA FECHA DE TOTAL DE GASTOS FIJOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (383,1342,'?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (383,1343,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (383,1344,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (383,1345,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (383,1346,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (383,1347,5);

    --GANANCIAS BRUTAS VENTAS %
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1348,264,30);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1349,265,30);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1350,266,30);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1351,267,30);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1352,268,30);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1353,269,30);

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE SEGUROS OTROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (384,1349,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (384,1343,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (384,639,2);

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE IMPUESTOS OTROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (385,1350,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (385,1344,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (385,639,2);

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE INTERESES OTROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (386,1351,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (386,1345,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (386,639,2);

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE DEPRECIACION OTROS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (387,1352,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (387,1346,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (387,639,2);

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE REPARACIONES RENTA Y EQUIPOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (388,1353,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (388,1347,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (388,639,2);

        --FORMULA DE GANANCIAS BRUTAS VENTAS % DE TOTAL DE GASTOS FIJOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (389,1348,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (389,1342,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (389,639,2);