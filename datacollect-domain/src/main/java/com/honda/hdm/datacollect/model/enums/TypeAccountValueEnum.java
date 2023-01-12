package com.honda.hdm.datacollect.model.enums;

public enum TypeAccountValueEnum {
    AMOUNT("Monto"),
    COST("Costo"),
    ACCUMULATED_DEPRECIATION("Depreciacion Acumulada"),
    HONDA_UNITS("Unidades Honda"),
    NEW_OTHERS("Nuevas Otras"),
    UNITS_USED("Unidades Usadas"),
    RETAIL("Menudeo"),
    WHOLESALE("Mayoreo"),
    PROFIT_OR_LOSS("Utilidad o perdida"),
    TOTAL_UP_TO_DATE("Total al corriente"),
    ANALYSIS_OF_OVERDUE_ACCOUNTS("Analisis de cuentas vencidas"),
    ON_31_60("31-60"),
    ON_61_90("61-90"),
    OVER_90("Sobre 90"),
    DOUBTFUL_ACCOUNTS("Cuentas dudosas"),
    VEHICLE_DEPARTMENT("Departamento de vehiculos"),
    CURRENT_MONTH("Mes Actual"),
    UNITS("Unidades"),
    SALES("Ventas"),
    GROSS_PROFIT("Utilidad bruta"),
    PERCENTAGE_SOLD_UNITS("% unidades vendidas"),
    FROM_YEAR_TO_DATE("Del año a la fecha");

    private final String value;

    private TypeAccountValueEnum(String value){
        this.value = value;
    }

    @Override
    public String toString() {
        return value;
    }
}
