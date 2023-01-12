CREATE TABLE dcollectdb.dc_account (
    id  INTEGER,
	name VARCHAR2(100 CHAR),
	account_number VARCHAR2(100 CHAR),
	page VARCHAR2(100 CHAR) NOT NULL,
	formula CHAR DEFAULT 0 CONSTRAINT nn_formula NOT NULL CHECK (formula in (0,1)),
    dc_record_status_id INTEGER CONSTRAINT nnc_account_dc_record_statu NOT NULL,
	create_timestamp TIMESTAMP DEFAULT current_timestamp CONSTRAINT nnc_account_create_timestam NOT NULL,
    update_timestamp TIMESTAMP,
	CONSTRAINT dc_account_id PRIMARY KEY ( id ),
	CONSTRAINT dc_account_record_fk1 FOREIGN KEY(dc_record_status_id)
        REFERENCES dcollectdb.dc_record_status( id )
) TABLESPACE TBS_PERM_DCOLLECT_01;

CREATE SEQUENCE dcollectdb.dc_account_seq START WITH 1;

CREATE OR REPLACE TRIGGER dcollectdb.account_id_increment 
BEFORE INSERT ON dcollectdb.dc_account 
FOR EACH ROW
WHEN ( new.id IS NULL )
BEGIN
  :new.id := dcollectdb.dc_account_seq.nextval;
END;

CREATE TABLE dcollectdb.dc_account_relationship(
	dc_account_parent_id INTEGER NOT NULL,
	dc_account_child_id INTEGER NOT NULL,
	order_view INTEGER NOT NULL,
	CONSTRAINT dc_account_rel_id PRIMARY KEY (dc_account_child_id),
	CONSTRAINT dc_account_rel_fk1 FOREIGN KEY(dc_account_parent_id)
        REFERENCES dcollectdb.dc_account( id ),
	CONSTRAINT dc_account_rel_fk2 FOREIGN KEY(dc_account_child_id)
        REFERENCES dcollectdb.dc_account( id )
) TABLESPACE TBS_PERM_DCOLLECT_01;



CREATE TABLE dcollectdb.dc_type_account_value(
	id  INTEGER,
	name VARCHAR2(100 CHAR) NOT NULL,
	CONSTRAINT dc_value_type_id PRIMARY KEY ( id )
) TABLESPACE TBS_PERM_DCOLLECT_01;

CREATE SEQUENCE dcollectdb.dc_type_account_value_seq START WITH 1;

CREATE OR REPLACE TRIGGER dcollectdb.type_account_id_increment 
BEFORE INSERT ON dcollectdb.dc_type_account_value 
FOR EACH ROW
WHEN ( new.id IS NULL )
BEGIN
  :new.id := dcollectdb.dc_type_account_value_seq.nextval;
END;

CREATE TABLE dcollectdb.dc_ty_account_val_rel(
	dc_ty_accountval_par_id INTEGER NOT NULL,
	dc_ty_accountval_chd_id INTEGER NOT NULL,
	order_view INTEGER NOT NULL,
	CONSTRAINT dc_typ_account_rel_id PRIMARY KEY (dc_ty_accountval_chd_id),
	CONSTRAINT dc_ty_account_rel_fk1 FOREIGN KEY(dc_ty_accountval_par_id)
        REFERENCES dcollectdb.dc_type_account_value( id ),
	CONSTRAINT dc_ty_account_rel_fk2 FOREIGN KEY(dc_ty_accountval_chd_id)
        REFERENCES dcollectdb.dc_type_account_value( id )
) TABLESPACE TBS_PERM_DCOLLECT_01;


CREATE TABLE dcollectdb.dc_account_value(
	id  INTEGER,
	dc_account_id INTEGER NOT NULL,
	dc_type_account_value_id INTEGER NOT NULL,
	read_only CHAR DEFAULT 0 CONSTRAINT nn_read_only NOT NULL CHECK (read_only in (0,1)),
	required CHAR DEFAULT 1 CONSTRAINT nn_required NOT NULL CHECK (required in (0,1)),
	default_value VARCHAR2(100 CHAR),
	CONSTRAINT dc_account_value_id PRIMARY KEY ( id ),
	CONSTRAINT dc_account_fk1 FOREIGN KEY(dc_account_id)
        REFERENCES dcollectdb.dc_account( id ),
	CONSTRAINT dc_type_account_value_fk1 FOREIGN KEY(dc_type_account_value_id)
        REFERENCES dcollectdb.dc_type_account_value( id ),
	CONSTRAINT dc_account_value_unique UNIQUE (dc_account_id,dc_type_account_value_id)
) TABLESPACE TBS_PERM_DCOLLECT_01;

CREATE SEQUENCE dcollectdb.dc_account_value_seq START WITH 1;

CREATE OR REPLACE TRIGGER dcollectdb.account_value_id_increment 
BEFORE INSERT ON dcollectdb.dc_account_value 
FOR EACH ROW
WHEN ( new.id IS NULL )
BEGIN
  :new.id := dcollectdb.dc_account_value_seq.nextval;
END;

CREATE TABLE dcollectdb.dc_formula(
	id  INTEGER,
	dc_owner_account_value_id INTEGER NOT NULL,
	formula VARCHAR2(100 CHAR) CHECK(regexp_like(formula, '^(\?((\+|\-|\*|\/)*\?)*)+|(\+|\-|\*|\/)\((\?((\+|\-|\*|\/)*\?)*)+\)$')),
	CONSTRAINT dc_formula_id PRIMARY KEY ( id ),
	CONSTRAINT dc_account_value_formula_fk1 FOREIGN KEY(dc_owner_account_value_id)
        REFERENCES dcollectdb.dc_account_value( id ),
	CONSTRAINT formula_unique UNIQUE (dc_owner_account_value_id)
) TABLESPACE TBS_PERM_DCOLLECT_01;

CREATE SEQUENCE dcollectdb.dc_formula_seq START WITH 1;

CREATE OR REPLACE TRIGGER dcollectdb.formula_id_increment 
BEFORE INSERT ON dcollectdb.dc_formula 
FOR EACH ROW
WHEN ( new.id IS NULL )
BEGIN
  :new.id := dcollectdb.dc_formula_seq.nextval;
END;

CREATE TABLE dcollectdb.dc_formula_term(
	dc_formula_id  INTEGER NOT NULL,
	dc_account_value_term_id INTEGER NOT NULL,
	order_view INTEGER NOT NULL,
	CONSTRAINT dc_formula_term_id PRIMARY KEY ( dc_formula_id, dc_account_value_term_id, order_view),
	CONSTRAINT dc_formula_term_fk1 FOREIGN KEY(dc_formula_id)
        REFERENCES dcollectdb.dc_formula( id ),
	CONSTRAINT dc_account_term_fk1 FOREIGN KEY(dc_account_value_term_id)
        REFERENCES dcollectdb.dc_account_value( id ),
	CONSTRAINT dc_form_term_uni UNIQUE (dc_formula_id, order_view)
) TABLESPACE TBS_PERM_DCOLLECT_01;

CREATE TABLE dcollectdb.dc_fin_state_x_account_value(
	id INTEGER,
	value VARCHAR2(100 CHAR) NOT NULL,
	dc_financial_state_id INTEGER NOT NULL,
	dc_account_value_id INTEGER NOT NULL,
	CONSTRAINT dc_finstate_acc_value_id PRIMARY KEY (id),
	CONSTRAINT dc_finstate_value_fk1 FOREIGN KEY(dc_financial_state_id)
        REFERENCES dcollectdb.dc_financial_state( id ),
	CONSTRAINT dc_value_finstate_fk1 FOREIGN KEY(dc_account_value_id)
        REFERENCES dcollectdb.dc_account_value( id ),
	CONSTRAINT dc_fin_value_unique UNIQUE (dc_financial_state_id, dc_account_value_id)
) TABLESPACE TBS_PERM_DCOLLECT_01;

CREATE SEQUENCE dcollectdb.dc_fin_state_acc_value_seq START WITH 1;

CREATE OR REPLACE TRIGGER dcollectdb.fin_state_acc_value_id_incr
BEFORE INSERT ON dcollectdb.dc_fin_state_x_account_value 
FOR EACH ROW
WHEN ( new.id IS NULL )
BEGIN
  :new.id := dcollectdb.dc_fin_state_acc_value_seq.nextval;
END;

CREATE TABLE dcollectdb.dc_account_error(
	id INTEGER,
	check_date TIMESTAMP DEFAULT current_timestamp CONSTRAINT nnc_account_err NOT NULL,
	area VARCHAR2(100 CHAR) NOT NULL,
	value_error VARCHAR2(100 CHAR) NOT NULL,
	dc_fin_state_acc_value_id INTEGER NOT NULL,
	CONSTRAINT dc_acc_error_id PRIMARY KEY (id),
	CONSTRAINT dc_finstate_value_err_fk1 FOREIGN KEY(dc_fin_state_acc_value_id)
        REFERENCES dcollectdb.dc_fin_state_x_account_value( id )
) TABLESPACE TBS_PERM_DCOLLECT_01;

CREATE SEQUENCE dcollectdb.dc_fin_acc_value_err_seq START WITH 1;

CREATE OR REPLACE TRIGGER dcollectdb.fin_acc_value_err_id_incr
BEFORE INSERT ON dcollectdb.dc_account_error 
FOR EACH ROW
WHEN ( new.id IS NULL )
BEGIN
  :new.id := dcollectdb.dc_fin_acc_value_err_seq.nextval;
END;

GRANT ALL PRIVILEGES ON dcollectdb.dc_account to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_account_seq to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_account_relationship to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_type_account_value to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_type_account_value_seq to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_ty_account_val_rel to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_account_value to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_account_value_seq to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_formula to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_formula_seq to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_formula_term to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_fin_state_x_account_value to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_fin_state_acc_value_seq to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_account_error to dcollectadm;
GRANT ALL PRIVILEGES ON dcollectdb.dc_fin_acc_value_err_seq to dcollectadm;