package com.honda.hdm.datacollect.model.entity.dto;


import java.util.Date;

public class DcAccountErrorDto {

    private Long id;

    private Date checkDate;

    private String valueError;

    private DcFinancialStateXStatusDto status;

    private DcFinancialStateXAccountValueDto accountValue;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getCheckDate() {
        return checkDate;
    }

    public void setCheckDate(Date checkDate) {
        this.checkDate = checkDate;
    }

    public String getValueError() {
        return valueError;
    }

    public void setValueError(String valueError) {
        this.valueError = valueError;
    }

    public DcFinancialStateXStatusDto getStatus() {
        return status;
    }

    public void setStatus(DcFinancialStateXStatusDto status) {
        this.status = status;
    }

    public DcFinancialStateXAccountValueDto getAccountValue() {
        return accountValue;
    }

    public void setAccountValue(DcFinancialStateXAccountValueDto accountValue) {
        this.accountValue = accountValue;
    }
}
