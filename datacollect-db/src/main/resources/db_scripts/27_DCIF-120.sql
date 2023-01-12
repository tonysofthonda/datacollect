CREATE TABLE dcollectdb.dc_financial_state (
    id  INTEGER,
	month SMALLINT NOT NULL,
	year SMALLINT NOT NULL,
	limit_date DATE NOT NULL,
	dc_dealer_id INTEGER NOT NULL,
    dc_record_status_id INTEGER CONSTRAINT nnc_dcfinstate_dc_record_statu NOT NULL,
	create_timestamp TIMESTAMP DEFAULT current_timestamp CONSTRAINT nnc_dcfinstate_create_timestam NOT NULL,
    update_timestamp TIMESTAMP,
	CONSTRAINT dc_financial_state_id PRIMARY KEY ( id ),
	CONSTRAINT dc_financial_state_dealer_fk1 FOREIGN KEY(dc_dealer_id)
        REFERENCES dcollectdb.dc_dealer( id ),
	CONSTRAINT dc_financial_state_record_fk1 FOREIGN KEY(dc_record_status_id)
        REFERENCES dcollectdb.dc_record_status( id ),
	CONSTRAINT dc_fin_state_unique UNIQUE (month,year,dc_dealer_id)
) TABLESPACE TBS_PERM_DCOLLECT_01;

CREATE SEQUENCE dcollectdb.dc_financial_state_seq START WITH 1;

CREATE OR REPLACE TRIGGER dcollectdb.financial_state_id_increment 
BEFORE INSERT ON dcollectdb.dc_financial_state 
FOR EACH ROW
WHEN ( new.id IS NULL )
BEGIN
  :new.id := dcollectdb.dc_financial_state_seq.nextval;
END;

CREATE TABLE dcollectdb.dc_financial_state_status (
    id  INTEGER,
	name VARCHAR2(20 CHAR) NOT NULL,
	status_desc VARCHAR(100 CHAR),
	CONSTRAINT dc_financial_status_id PRIMARY KEY ( id )
) TABLESPACE TBS_PERM_DCOLLECT_01;

CREATE SEQUENCE dcollectdb.dc_financial_state_status_seq START WITH 1;

CREATE OR REPLACE TRIGGER dcollectdb.dc_fin_state_status_id_incr
BEFORE INSERT ON dcollectdb.dc_financial_state_status 
FOR EACH ROW
WHEN ( new.id IS NULL )
BEGIN
  :new.id := dcollectdb.dc_financial_state_status_seq.nextval;
END;

INSERT INTO dcollectdb.dc_financial_state_status (id,name,status_desc) VALUES (1,'Sin Estado','Sin movimientos');
INSERT INTO dcollectdb.dc_financial_state_status (id,name,status_desc) VALUES (2,'En progreso','El distribuidor esta generando o corrigiendo el estado financiero');
INSERT INTO dcollectdb.dc_financial_state_status (id,name,status_desc) VALUES (3,'Bloqueado','Sobrepaso la fecha limite de registro del estado financiero');
INSERT INTO dcollectdb.dc_financial_state_status (id,name,status_desc) VALUES (4,'Enviado','El distribuidor termino de generar el estado financiero');
INSERT INTO dcollectdb.dc_financial_state_status (id,name,status_desc) VALUES (5,'Aprobado','Una area evaluadora ha aprobado el estado financiero');
INSERT INTO dcollectdb.dc_financial_state_status (id,name,status_desc) VALUES (6,'Rechazado','Una area evaluadora ha rechazado el estado financiero');
INSERT INTO dcollectdb.dc_financial_state_status (id,name,status_desc) VALUES (7,'Comentado','Se agregaron comentarios al estado financiero');
INSERT INTO dcollectdb.dc_financial_state_status (id,name,status_desc) VALUES (8,'Finalizado','Se aprobo el estado financiero por todas las areas correspondientes');

CREATE TABLE dcollectdb.dc_financial_state_x_status (
    date_assignment TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	dc_financial_state_id INTEGER NOT NULL,
	dc_status_id INTEGER NOT NULL,
	CONSTRAINT dc_financial_state_x_status_id PRIMARY KEY ( date_assignment, dc_financial_state_id ),
	CONSTRAINT dc_financial_state_status_fk1 FOREIGN KEY(dc_financial_state_id)
        REFERENCES dcollectdb.dc_financial_state( id ),
	CONSTRAINT dc_financial_state_status_fk2 FOREIGN KEY(dc_status_id)
        REFERENCES dcollectdb.dc_financial_state_status( id )
) TABLESPACE TBS_PERM_DCOLLECT_01;

CREATE OR REPLACE TRIGGER dcollectdb.dc_fin_state_status_default
AFTER INSERT ON dcollectdb.dc_financial_state 
FOR EACH ROW
BEGIN
  INSERT INTO dcollectdb.dc_financial_state_x_status(dc_financial_state_id, dc_status_id) VALUES (:new.id, 1);
END;

INSERT INTO dcollectdb.dc_menu_category(id,name,z_order) VALUES(3,'Informacion Financiera',3);

ALTER TABLE dcollectdb.dc_view DROP CONSTRAINT dcview_order_uk;
ALTER TABLE dcollectdb.dc_view ADD CONSTRAINT dcview_order_uk UNIQUE (z_order,dc_menu_category_id);

INSERT INTO dcollectdb.dc_view (id,name,friendly_name,route,z_order,dc_menu_category_id) VALUES(9,'financialstate','Estado Financiero','financialstate/list',1,3);
 

GRANT ALL PRIVILEGES ON dcollectdb.dc_financial_state to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_financial_state_seq to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_financial_state_status to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_financial_state_status_seq to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_financial_state_x_status to dcollectadm;
