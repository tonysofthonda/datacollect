--PAGINA 2 Y 3
INSERT INTO dcollectdb.dc_account (id,name,page,dc_record_status_id) VALUES (255,'Renta y rentas equivalentes','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (255,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (207,255,7);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (256,'Renta','080','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (256,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (255,256,1);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (257,'Amortz. o Mejoras a locales arrendados','081','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (257,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (255,257,2);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (258,'Reparaciones y Mantenim. Biene raices','082','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (258,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (255,258,3);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (259,'Depreciacion edificio y mejoras','083','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (259,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (255,259,4);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (260,'Impuestos bienes raices','084','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (260,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (255,260,5);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (261,'Seguros edificios y mejoras','085','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (261,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (255,261,6);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (262,'Intereses hipoteca','086','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (262,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (255,262,7);

INSERT INTO dcollectdb.dc_account (id,name,account_number,page,dc_record_status_id) VALUES (263,'Servicios Luz Agua Gas','087','2 y 3',1);
INSERT INTO dcollectdb.dc_account_x_component (dc_account_id,dc_account_component_id) VALUES (263,5);
INSERT INTO dcollectdb.dc_account_relationship(dc_account_parent_id,dc_account_child_id,order_view) VALUES (255,263,8);

--A DEPTO HONDA NUEVOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1129,255,32);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1130,256,32);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1131,257,32);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1132,258,32);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1133,259,32);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1134,260,32);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1135,261,32);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1136,262,32);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1137,263,32);
        
        --FORMULA DE MES DE TOTAL RENTAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (360,1129,'?+?+?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (360,1130,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (360,1131,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (360,1132,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (360,1133,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (360,1134,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (360,1135,6);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (360,1136,7);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (360,1137,8);
            
    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1138,255,33);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1139,256,33);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1140,257,33);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1141,258,33);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1142,259,33);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1143,260,33);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1144,261,33);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1145,262,33);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1146,263,33);

--B OTROS VEHICULOS NUEVOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1147,255,35,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1148,256,35,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1149,257,35,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1150,258,35,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1151,259,35,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1152,260,35,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1153,261,35,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1154,262,35,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1155,263,35,0,1,0);
        
        --FORMULA DE MES DE TOTAL RENTAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (361,1147,'?+?+?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (361,1148,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (361,1149,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (361,1150,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (361,1151,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (361,1152,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (361,1153,6);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (361,1154,7);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (361,1155,8);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1156,255,36,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1157,256,36,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1158,257,36,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1159,258,36,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1160,259,36,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1161,260,36,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1162,261,36,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1163,262,36,0,1,0);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id,required,read_only,default_value) VALUES (1164,263,36,0,1,0);

--C DEPTO VEHICULOS USADOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1165,255,38);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1166,256,38);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1167,257,38);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1168,258,38);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1169,259,38);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1170,260,38);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1171,261,38);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1172,262,38);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1173,263,38);

        --FORMULA DE MES DE TOTAL RENTAS
                INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (362,1165,'?+?+?+?+?+?+?+?');

                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (362,1166,1);
                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (362,1167,2);
                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (362,1168,3);
                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (362,1169,4);
                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (362,1170,5);
                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (362,1171,6);
                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (362,1172,7);
                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (362,1173,8);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1174,255,39);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1175,256,39);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1176,257,39);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1177,258,39);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1178,259,39);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1179,260,39);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1180,261,39);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1181,262,39);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1182,263,39);

--D DEPTO DE SERVICIO
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1183,255,41);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1184,256,41);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1185,257,41);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1186,258,41);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1187,259,41);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1188,260,41);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1189,261,41);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1190,262,41);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1191,263,41);
    
        --FORMULA DE MES DE TOTAL RENTAS
                INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (363,1183,'?+?+?+?+?+?+?+?');

                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (363,1184,1);
                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (363,1185,2);
                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (363,1186,3);
                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (363,1187,4);
                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (363,1188,5);
                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (363,1189,6);
                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (363,1190,7);
                INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (363,1191,8);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1192,255,42);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1193,256,42);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1194,257,42);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1195,258,42);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1196,259,42);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1197,260,42);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1198,261,42);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1199,262,42);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1200,263,42);
        
--E DEPTO TALLER DE CARROCERIA
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1201,255,44);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1202,256,44);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1203,257,44);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1204,258,44);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1205,259,44);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1206,260,44);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1207,261,44);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1208,262,44);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1209,263,44);
    
        --FORMULA DE MES DE TOTAL RENTAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (364,1201,'?+?+?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (364,1202,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (364,1203,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (364,1204,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (364,1205,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (364,1206,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (364,1207,6);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (364,1208,7);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (364,1209,8);
    
    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1210,255,45);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1211,256,45);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1212,257,45);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1213,258,45);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1214,259,45);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1215,260,45);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1216,261,45);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1217,262,45);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1218,263,45);

--F DEPTO REFACCIONES Y ACCESORIOS
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1219,255,47);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1220,256,47);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1221,257,47);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1222,258,47);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1223,259,47);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1224,260,47);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1225,261,47);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1226,262,47);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1227,263,47);

        --FORMULA DE MES DE TOTAL RENTAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (365,1219,'?+?+?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (365,1220,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (365,1221,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (365,1222,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (365,1223,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (365,1224,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (365,1225,6);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (365,1226,7);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (365,1227,8);
    
    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1228,255,48);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1229,256,48);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1230,257,48);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1231,258,48);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1232,259,48);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1233,260,48);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1234,261,48);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1235,262,48);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1236,263,48);

--TOTAL DE INGRESOS Y EGRESOS DE LA COCESIONARIA
    --MES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1237,255,28);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1238,256,28);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1239,257,28);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1240,258,28);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1241,259,28);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1242,260,28);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1243,261,28);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1244,262,28);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1245,263,28);

        --FORMULA DE MES DE RENTA
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (327,1238,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (327,1130,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (327,1148,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (327,1166,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (327,1184,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (327,1202,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (327,1220,6);

        --FORMULA DE MES DE AMORTZ O MEJORAS A LOCALES ARRENDADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (328,1239,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (328,1131,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (328,1149,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (328,1167,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (328,1185,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (328,1203,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (328,1221,6);

        --FORMULA DE MES DE REPARACIONES Y MANTENIM BIENES RAICES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (329,1240,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (329,1132,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (329,1150,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (329,1168,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (329,1186,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (329,1204,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (329,1222,6);

        --FORMULA DE MES DE DEPRECIACION EDIFICIO Y MEJORAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (330,1241,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (330,1133,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (330,1151,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (330,1169,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (330,1187,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (330,1205,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (330,1223,6);
        --FORMULA DE MES DE IMPUESTOS BIENES RAICES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (331,1242,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (331,1134,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (331,1152,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (331,1170,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (331,1188,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (331,1206,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (331,1224,6);
        --FORMULA DE MES DE SEGUROS EDIFICIOS Y MEJORAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (332,1243,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (332,1135,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (332,1153,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (332,1171,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (332,1189,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (332,1207,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (332,1225,6);
        --FORMULA DE MES DE INTERESES HIPOTECA
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (333,1244,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (333,1136,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (333,1154,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (333,1172,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (333,1190,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (333,1208,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (333,1226,6);

        --FORMULA DE MES DE SERVICIOS LUZ AGUA GAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (334,1245,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (334,1137,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (334,1155,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (334,1173,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (334,1191,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (334,1209,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (334,1227,6);
        --FORMULA DE MES DE TOTAL RENTAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (335,1237,'?+?+?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (335,1238,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (335,1239,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (335,1240,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (335,1241,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (335,1242,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (335,1243,6);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (335,1244,7);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (335,1245,8);

    --DEL AÑO A LA FECHA
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1246,255,29);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1247,256,29);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1248,257,29);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1249,258,29);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1250,259,29);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1251,260,29);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1252,261,29);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1253,262,29);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1254,263,29);

        --FORMULA DE MES DE RENTA
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (336,1247,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (336,1139,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (336,1157,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (336,1175,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (336,1193,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (336,1211,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (336,1229,6);

        --FORMULA DE MES DE AMORTZ O MEJORAS A LOCALES ARRENDADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (337,1248,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (337,1140,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (337,1158,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (337,1176,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (337,1194,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (337,1212,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (337,1230,6);

        --FORMULA DE MES DE REPARACIONES Y MANTENIM BIENES RAICES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (338,1249,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (338,1141,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (338,1159,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (338,1177,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (338,1195,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (338,1213,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (338,1231,6);

        --FORMULA DE MES DE DEPRECIACION EDIFICIO Y MEJORAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (339,1250,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (339,1142,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (339,1160,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (339,1178,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (339,1196,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (339,1214,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (339,1232,6);

        --FORMULA DE MES DE IMPUESTOS BIENES RAICES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (340,1251,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (340,1143,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (340,1161,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (340,1179,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (340,1197,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (340,1215,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (340,1233,6);
            
        --FORMULA DE MES DE SEGUROS EDIFICIOS Y MEJORAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (341,1252,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (341,1144,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (341,1162,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (341,1180,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (341,1198,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (341,1216,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (341,1234,6);
            
        --FORMULA DE MES DE INTERESES HIPOTECA
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (342,1253,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (342,1145,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (342,1163,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (342,1181,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (342,1199,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (342,1217,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (342,1235,6);

        --FORMULA DE MES DE SERVICIOS LUZ AGUA GAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (343,1254,'?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (343,1146,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (343,1164,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (343,1182,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (343,1200,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (343,1218,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (343,1236,6);

        --FORMULA DE MES DE TOTAL RENTAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (344,1246,'?+?+?+?+?+?+?+?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (344,1247,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (344,1248,2);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (344,1249,3);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (344,1250,4);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (344,1251,5);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (344,1252,6);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (344,1253,7);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (344,1254,8);

    --GANANCIAS BRUTAS VENTAS %
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1255,255,30);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1256,256,30);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1257,257,30);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1258,258,30);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1259,259,30);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1260,260,30);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1261,261,30);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1262,262,30);
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (1263,263,30);

        --FORMULA DE MES DE RENTA
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (345,1256,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (345,1247,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (345,639,2);

        --FORMULA DE MES DE AMORTZ O MEJORAS A LOCALES ARRENDADOS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (346,1257,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (346,1248,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (346,639,2);

        --FORMULA DE MES DE REPARACIONES Y MANTENIM BIENES RAICES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (347,1258,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (347,1249,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (347,639,2);
        --FORMULA DE MES DE DEPRECIACION EDIFICIO Y MEJORAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (348,1259,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (348,1250,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (348,639,2);
        --FORMULA DE MES DE IMPUESTOS BIENES RAICES
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (349,1260,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (349,1251,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (349,639,2);
        --FORMULA DE MES DE SEGUROS EDIFICIOS Y MEJORAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (350,1261,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (350,1252,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (350,639,2);
        --FORMULA DE MES DE INTERESES HIPOTECA
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (351,1262,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (351,1253,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (351,639,2);
        --FORMULA DE MES DE SERVICIOS LUZ AGUA GAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (352,1263,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (352,1254,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (352,639,2);
        --FORMULA DE MES DE TOTAL RENTAS
            INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (353,1255,'?/?');

            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (353,1246,1);
            INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (353,639,2);