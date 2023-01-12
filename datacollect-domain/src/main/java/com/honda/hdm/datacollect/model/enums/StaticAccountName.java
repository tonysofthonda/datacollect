package com.honda.hdm.datacollect.model.enums;

public enum StaticAccountName {
    MODELS("Modelos"),
    HONDA_NEW_CAR_RETAIL("Menudeo de autos nuevo Honda"),
    SALES_SPARE_PARTS_ACCESSORIES("Ventas de refacciones y accesorios"),
    EARNED_INCENTIVES("Incentivos ganados");

    private final String value;

    private StaticAccountName(String value){
        this.value = value;
    }

    @Override
    public String toString() {
        return value;
    }
}
