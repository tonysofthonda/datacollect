CREATE TABLE dcollectdb.dc_account_x_model(
	dc_account_id INTEGER CONSTRAINT nnc_acmodel_notnull_id NOT NULL,
	dc_model_id INTEGER  CONSTRAINT nnc_modelac_notnull_id NOT NULL,
	CONSTRAINT dc_ac_x_model_fk1 FOREIGN KEY(dc_account_id)
		REFERENCES dcollectdb.dc_account( id ),
	CONSTRAINT dc_model_x_ac_fk1 FOREIGN KEY(dc_model_id)
		REFERENCES dcollectdb.dc_model( id )
) TABLESPACE TBS_PERM_DCOLLECT_01;

ALTER TABLE dcollectdb.dc_model DROP COLUMN account_number;

GRANT ALL PRIVILEGES ON dcollectdb.dc_account_x_model to dcollectadm;