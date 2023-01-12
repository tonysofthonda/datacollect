--PASIVOS
    --TOTAL DE PASIVOS CIRCULANTES
        --IMPORTE DE TOTAL DE PASIVOS CIRCULANTES
        INSERT INTO dcollectdb.dc_account_value (id,dc_account_id,dc_type_account_value_id) VALUES (106,63,1);
        --FORMULA DE TOTAL DE PASIVOS CIRCULANTES
        INSERT INTO dcollectdb.dc_formula (id,dc_owner_account_value_id,formula) VALUES (24,106,'?+?+?');

        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (24,80,1); --IMPORTE DE TOTAL DE CUENTAS Y DOCTOS POR PAGAR
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (24,91,2); --IMPORTE DE PASIVOS ACUMULADOS
        INSERT INTO dcollectdb.dc_formula_term (dc_formula_id,dc_account_value_term_id,order_view) VALUES (24,105,3); --IMPORTE DE RESERVA PARA PERDIDA POR REPOSICIONES