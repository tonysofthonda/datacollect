CREATE TABLE dcollectdb.dc_account_component(
	id INTEGER NOT NULL,
	component_name VARCHAR2(100 CHAR) NOT NULL,
	CONSTRAINT dc_account_comp_id PRIMARY KEY (id),
	CONSTRAINT dc_acc_component_unique UNIQUE(component_name)
) TABLESPACE TBS_PERM_DCOLLECT_01;

CREATE SEQUENCE dcollectdb.dc_account_comp_seq START WITH 1;

CREATE OR REPLACE TRIGGER dcollectdb.account_comp_id_increment 
BEFORE INSERT ON dcollectdb.dc_account_component 
FOR EACH ROW
WHEN ( new.id IS NULL )
BEGIN
  :new.id := dcollectdb.dc_account_comp_seq.nextval;
END;

CREATE TABLE dcollectdb.dc_account_x_component(
	dc_account_id INTEGER NOT NULL,
	dc_account_component_id INTEGER NOT NULL,
	CONSTRAINT dc_account_x_comp_id PRIMARY KEY (dc_account_id),
	CONSTRAINT dc_acc_x_comp_fk1 FOREIGN KEY(dc_account_id)
        REFERENCES dcollectdb.dc_account( id ),
	CONSTRAINT dc_comp_x_acc_fk2 FOREIGN KEY(dc_account_component_id)
        REFERENCES dcollectdb.dc_account_component( id )
) TABLESPACE TBS_PERM_DCOLLECT_01;

GRANT ALL PRIVILEGES ON dcollectdb.dc_account_component to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_account_comp_seq to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_account_x_component to dcollectadm;