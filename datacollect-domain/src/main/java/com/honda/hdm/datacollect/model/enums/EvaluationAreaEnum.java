package com.honda.hdm.datacollect.model.enums;

public enum EvaluationAreaEnum {
    AFTER_SALES("Postventas"),
    SALES("Ventas"),
    DEALER_DEVELOPMENT("Desarrollo de Distribuidor");

    private final String value;

    private EvaluationAreaEnum(String value){
        this.value = value;
    }

    @Override
    public String toString() {
        return value;
    }
}
