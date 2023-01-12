CREATE TABLE dcollectdb.dc_service_type_x_op_code(
	dc_operation_code_id INTEGER CONSTRAINT nnc_opcsys_notnull_id NOT NULL,
	dc_service_type_id INTEGER  CONSTRAINT nnc_servopc_notnull_id NOT NULL,
	CONSTRAINT dc_service_x_opc_fk1 FOREIGN KEY(dc_operation_code_id)
		REFERENCES dcollectdb.dc_operation_code( id ),
	CONSTRAINT dc_order_opc_x_service_fk1 FOREIGN KEY(dc_service_type_id)
		REFERENCES dcollectdb.dc_service_type( id )
) TABLESPACE TBS_PERM_DCOLLECT_01;

ALTER TABLE dcollectdb.dc_operation_code DROP COLUMN service_type;

GRANT ALL PRIVILEGES ON dcollectdb.dc_service_type_x_op_code to dcollectadm;
