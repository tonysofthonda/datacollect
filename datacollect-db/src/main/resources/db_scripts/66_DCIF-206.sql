CREATE TABLE dcollectdb.dc_user_type (
    id  INTEGER,
	name VARCHAR2(100 CHAR) NOT NULL,
	CONSTRAINT dc_user_type_id PRIMARY KEY ( id )
) TABLESPACE TBS_PERM_DCOLLECT_01;

CREATE SEQUENCE dcollectdb.dc_user_type_seq START WITH 1;

CREATE OR REPLACE TRIGGER dcollectdb.user_type_id_increment 
BEFORE INSERT ON dcollectdb.dc_user_type 
FOR EACH ROW
WHEN ( new.id IS NULL )
BEGIN
  :new.id := dcollectdb.dc_user_type_seq.nextval;
END;

INSERT INTO dcollectdb.dc_user_type(name) VALUES ('LDAP - HDM');
INSERT INTO dcollectdb.dc_user_type(name) VALUES ('SAML - iN');

CREATE TABLE dcollectdb.dc_evaluation_area (
    id  INTEGER,
	name VARCHAR2(100 CHAR) NOT NULL,
	CONSTRAINT dc_eval_area_id PRIMARY KEY ( id )
) TABLESPACE TBS_PERM_DCOLLECT_01;

CREATE SEQUENCE dcollectdb.dc_eval_area_seq START WITH 1;

CREATE OR REPLACE TRIGGER dcollectdb.dc_eval_area_id_increment 
BEFORE INSERT ON dcollectdb.dc_evaluation_area
FOR EACH ROW
WHEN ( new.id IS NULL )
BEGIN
  :new.id := dcollectdb.dc_eval_area_seq.nextval;
END;

INSERT INTO dcollectdb.dc_evaluation_area(name) VALUES ('Ventas');
INSERT INTO dcollectdb.dc_evaluation_area(name) VALUES ('Postventas');
INSERT INTO dcollectdb.dc_evaluation_area(name) VALUES ('Desarrollo de Distribuidor');


ALTER TABLE dcollectdb.dc_financial_state_x_status ADD id INT NOT NULL;

CREATE SEQUENCE dcollectdb.dc_fin_state_x_status_seq START WITH 1;

CREATE OR REPLACE TRIGGER dcollectdb.dc_fin_statetus_id_increment 
BEFORE INSERT ON dcollectdb.dc_financial_state_x_status
FOR EACH ROW
WHEN ( new.id IS NULL )
BEGIN
  :new.id := dcollectdb.dc_fin_state_x_status_seq.nextval;
END;

ALTER TABLE dcollectdb.dc_financial_state_x_status ADD email VARCHAR2(100 CHAR);
ALTER TABLE dcollectdb.dc_financial_state_x_status ADD username VARCHAR2(100 CHAR);
ALTER TABLE dcollectdb.dc_financial_state_x_status ADD comments VARCHAR2(255 CHAR);
ALTER TABLE dcollectdb.dc_financial_state_x_status ADD dc_user_type_id INT;
ALTER TABLE dcollectdb.dc_financial_state_x_status ADD CONSTRAINT dc_user_type_fk1 FOREIGN KEY(dc_user_type_id) REFERENCES dcollectdb.dc_user_type( id );
ALTER TABLE dcollectdb.dc_financial_state_x_status ADD dc_evaluation_area_id INT;
ALTER TABLE dcollectdb.dc_financial_state_x_status ADD CONSTRAINT dc_eval_area_fk1 FOREIGN KEY(dc_evaluation_area_id) REFERENCES dcollectdb.dc_evaluation_area( id );
ALTER TABLE dcollectdb.dc_financial_state_x_status DROP CONSTRAINT dc_financial_state_x_status_id;
ALTER TABLE dcollectdb.dc_financial_state_x_status ADD CONSTRAINT dc_financial_state_x_status_id PRIMARY KEY(id);


ALTER TABLE dcollectdb.dc_account_error ADD dc_fin_state_x_status_id INT NOT NULL;
ALTER TABLE dcollectdb.dc_account_error ADD CONSTRAINT dc_fin_state_x_status_fk1 FOREIGN KEY(dc_fin_state_x_status_id) REFERENCES dcollectdb.dc_financial_state_x_status( id );
ALTER TABLE dcollectdb.dc_account_error DROP COLUMN area;

GRANT ALL PRIVILEGES ON dcollectdb.dc_user_type to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_user_type_seq to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_evaluation_area to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_eval_area_seq to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_fin_state_x_status_seq to dcollectadm;
