package com.honda.hdm.datacollect.model.entity.dto;

import com.honda.hdm.datacollect.model.entity.DcAccountComponent;

import javax.persistence.*;

public class DcAccountValueDto {

    private Long id;

    private Boolean readOnly;

    private Boolean required;

    private String defaultValue;

    private DcAccountDto account;

    private DcTypeAccountValueDto typeValue;

    private DcFormulaDto formula;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Boolean getReadOnly() {
        return readOnly;
    }

    public void setReadOnly(Boolean readOnly) {
        this.readOnly = readOnly;
    }

    public Boolean getRequired() {
        return required;
    }

    public void setRequired(Boolean required) {
        this.required = required;
    }

    public String getDefaultValue() {
        return defaultValue;
    }

    public void setDefaultValue(String defaultValue) {
        this.defaultValue = defaultValue;
    }

    public DcAccountDto getAccount() {
        return account;
    }

    public void setAccount(DcAccountDto account) {
        this.account = account;
    }

    public DcTypeAccountValueDto getTypeValue() {
        return typeValue;
    }

    public void setTypeValue(DcTypeAccountValueDto typeValue) {
        this.typeValue = typeValue;
    }

    public DcFormulaDto getFormula() {
        return formula;
    }

    public void setFormula(DcFormulaDto formula) {
        this.formula = formula;
    }
}
