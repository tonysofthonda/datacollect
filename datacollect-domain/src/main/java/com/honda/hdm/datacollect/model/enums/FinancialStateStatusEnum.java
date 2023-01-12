package com.honda.hdm.datacollect.model.enums;

public enum FinancialStateStatusEnum {
    STATELESS("Sin Estado"),
    IN_PROGRESS("En progreso"),
    LOCKED("Bloqueado"),
    SENT("Enviado"),
    APPROVED("Aprobado"),
    REJECTED("Rechazado"),
    COMMENTED("Comentado"),
    DONE("Finalizado");

    private final String value;

    private FinancialStateStatusEnum(String value){
        this.value = value;
    }

    @Override
    public String toString() {
        return value;
    }
}
