package com.honda.hdm.datacollect.model.enums;

public enum PasiveEnum {
	A1("", 0),
	B1("", 1),
	C1("", 2),
	D1("", 3),
	E1("", 4),
	F1("", 5),
	G1("", 6),
	H1("", 7),
	I1("", 8),
	J1("", 9),
	K1("", 10),
	L1("", 11),
	NO_LINE("NO. LINEA", 6),
	PASIVOS("PASIVOS", 7),
	PASIVOS_BETWEEN("PASIVOS", 8),
	NEW1("", 9),
	NEW2("", 10),
	NEW3("", 11),
	ACCOUNTNO("NO. CUENTA", 12),
	IMPORT("IMPORTE", 13),
	LINE_NUMBER("Linea", 0),
	UNITS("Unidades", 1),
	SALES("Ventas", 2),
	GROSS_PROFIT("Utilidad bruta", 3),
	UNITS_SOLD("vend.", 4),
	NEW_VEHICLES("NUEVOS", 5),
	ACCOUNT_NUMBER("Cta.", 6),
	;
	
	private String name;
	private Integer column;
	
	PasiveEnum(String name, Integer column) {
		this.name = name;
		this.column = column;
	}
	public String getName() {
		return name;
	}

	public Integer getColumn() {
		return column;
	}
	
}
