package com.honda.hdm.datacollect.model.enums;

public enum NotificationsEnum {
    DATACOLLECT("Datacollect"),
    FINANCIAL_INFORMATION("Informacion Financiera");

    private final String value;

    private NotificationsEnum(String value){
        this.value = value;
    }

    @Override
    public String toString() {
        return value;
    }
}
