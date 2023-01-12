package com.honda.hdm.datacollect.model.entity.dto;


import java.util.List;

public class DcFinancialStateXAccountValueDto {

    private Long id;

    private String value;

    private DcFinancialStateDto financialState;

    private DcAccountValueDto accountValue;

    private List<DcAccountErrorDto> errors;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public DcFinancialStateDto getFinancialState() {
        return financialState;
    }

    public void setFinancialState(DcFinancialStateDto financialState) {
        this.financialState = financialState;
    }

    public DcAccountValueDto getAccountValue() {
        return accountValue;
    }

    public void setAccountValue(DcAccountValueDto accountValue) {
        this.accountValue = accountValue;
    }

    public List<DcAccountErrorDto> getErrors() {
        return errors;
    }

    public void setErrors(List<DcAccountErrorDto> errors) {
        this.errors = errors;
    }
}
