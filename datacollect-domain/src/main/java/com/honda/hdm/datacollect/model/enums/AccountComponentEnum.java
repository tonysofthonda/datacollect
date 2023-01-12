package com.honda.hdm.datacollect.model.enums;

public enum AccountComponentEnum {
    TOTAL_FIXED_ASSETS("TOTAL_DE_ACTIVO_FIJO"),
    TOTAL_UNITS_PASIVES("TOTAL_UNIDADES_PASIVOS"),
    ACCOUNTS_RECEIVABLE_ANALYSIS("ANALISIS_CUENTAS_COBRAR"),
    GROSS_PROFIT_ANALYSIS("ANALISIS_UTILIDAD_BRUTA");

    private final String value;

    private AccountComponentEnum(String value){
        this.value = value;
    }

    @Override
    public String toString() {
        return value;
    }
}
