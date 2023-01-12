package com.honda.hdm.datacollect.model.entity.dto;

import java.util.Date;
import java.util.List;

public class DcFinancialStateDto {

    private Long id;

    private Integer month;

    private Integer year;

    private Date limitDate;

    private DcDealerDto dealer;
    
    private boolean flatBtnExcel;

    private List<DcFinancialStateXStatusDto> statuses;

    private List<DcFinancialStateXAccountValueDto> accountValues;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getMonth() {
        return month;
    }

    public void setMonth(Integer month) {
        this.month = month;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Date getLimitDate() {
        return limitDate;
    }

    public void setLimitDate(Date limitDate) {
        this.limitDate = limitDate;
    }

    public DcDealerDto getDealer() {
        return dealer;
    }

    public void setDealer(DcDealerDto dealer) {
        this.dealer = dealer;
    }

    public List<DcFinancialStateXStatusDto> getStatuses() {
        return statuses;
    }

    public void setStatuses(List<DcFinancialStateXStatusDto> statuses) {
        this.statuses = statuses;
    }

    public List<DcFinancialStateXAccountValueDto> getAccountValues() {
        return accountValues;
    }

    public void setAccountValues(List<DcFinancialStateXAccountValueDto> accountValues) {
        this.accountValues = accountValues;
    }

	public boolean isFlatBtnExcel() {
		return flatBtnExcel;
	}

	public void setFlatBtnExcel(boolean flatBtnExcel) {
		this.flatBtnExcel = flatBtnExcel;
	}
}
