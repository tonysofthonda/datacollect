-- Generated by Oracle SQL Developer Data Modeler 18.2.0.179.0756
--   at:        2018-12-04 17:53:32 CST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE TABLE dcollectdb.dc_vin_client_sale (
    vin                       CHAR(17) NOT NULL,
    dealer_number             CHAR(4),
    client_name               VARCHAR2(15),
    client_last_name          VARCHAR2(20),
    client_second_last_name   VARCHAR2(30),
    sale_date                 NUMBER(7),
    pdi_provider_date         NUMBER(7),
    model_id                  VARCHAR2(10),
    create_timestamp          TIMESTAMP DEFAULT current_timestamp,
    update_timestamp          TIMESTAMP
);

ALTER TABLE dcollectdb.dc_vin_client_sale ADD CONSTRAINT dc_vin_client_sale_pk PRIMARY KEY ( vin );

CREATE TABLE dcollectdb.dc_vin_master (
    vin                  CHAR(17) NOT NULL,
    model_id             VARCHAR2(10),
    japan_color_code     VARCHAR2(11),
    dealer_number        CHAR(6),
    vin_status_code      CHAR(4),
    model_year           CHAR(4),
    warranty_date        INTEGER,
    customer_sale_date   INTEGER,
    pdi_provider_date    INTEGER,
    create_timestamp     TIMESTAMP DEFAULT current_timestamp,
    update_timestamp     TIMESTAMP
);

ALTER TABLE dcollectdb.dc_vin_master ADD CONSTRAINT dc_vin_master_pk PRIMARY KEY ( vin );

CREATE OR REPLACE TRIGGER dcollectdb.dc_vin_clt_sl_upd_trg BEFORE
    UPDATE ON dcollectdb.dc_vin_client_sale
    FOR EACH ROW
BEGIN
    SELECT
        SYSDATE
    INTO :new.update_timestamp
    FROM
        sys.dual;

END;

CREATE OR REPLACE TRIGGER dcollectdb.dc_vin_mst_upd_trg BEFORE
    UPDATE ON dcollectdb.dc_vin_master
    FOR EACH ROW
BEGIN
    SELECT
        SYSDATE
    INTO :new.update_timestamp
    FROM
        sys.dual;

END;



/*
* ===========================================================================
* FROM HERE
* MANUALLY CREATED SCRIPTS
*/

--- grant privileges on tables to adm user
GRANT ALL PRIVILEGES ON dcollectdb.dc_vin_client_sale to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_vin_master to dcollectadm;
