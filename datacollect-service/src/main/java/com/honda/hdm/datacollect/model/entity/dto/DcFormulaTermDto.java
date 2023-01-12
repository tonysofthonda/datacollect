package com.honda.hdm.datacollect.model.entity.dto;

public class DcFormulaTermDto {

    private DcFormulaDto formula;

    private DcAccountValueDto accountTerm;

    private Integer order;

    public DcFormulaDto getFormula() {
        return formula;
    }

    public void setFormula(DcFormulaDto formula) {
        this.formula = formula;
    }

    public DcAccountValueDto getAccountTerm() {
        return accountTerm;
    }

    public void setAccountTerm(DcAccountValueDto accountTerm) {
        this.accountTerm = accountTerm;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }
}
