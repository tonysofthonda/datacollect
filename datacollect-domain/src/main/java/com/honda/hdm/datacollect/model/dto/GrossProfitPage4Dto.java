package com.honda.hdm.datacollect.model.dto;

import java.io.Serializable;

public class GrossProfitPage4Dto implements Serializable {

	private static final long serialVersionUID = 1L;
	private Long id;
	private Double unitCurrentMonth;
	private Double salesCurrentMonth;
	private Double grossProfitCurrentMonth;
	private Double soldUnistCurrentMonth;
	private String deptoCarNewCurrentMonth;
	private Long noLine;
	private String noAccount;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public Double getUnitCurrentMonth() {
		return unitCurrentMonth;
	}
	
	public void setUnitCurrentMonth(Double unitCurrentMonth) {
		this.unitCurrentMonth = unitCurrentMonth;
	}
	
	public Double getSalesCurrentMonth() {
		return salesCurrentMonth;
	}
	
	public void setSalesCurrentMonth(Double salesCurrentMonth) {
		this.salesCurrentMonth = salesCurrentMonth;
	}
	
	public Double getGrossProfitCurrentMonth() {
		return grossProfitCurrentMonth;
	}
	
	public void setGrossProfitCurrentMonth(Double grossProfitCurrentMonth) {
		this.grossProfitCurrentMonth = grossProfitCurrentMonth;
	}
	
	public Double getSoldUnistCurrentMonth() {
		return soldUnistCurrentMonth;
	}
	
	public void setSoldUnistCurrentMonth(Double soldUnistCurrentMonth) {
		this.soldUnistCurrentMonth = soldUnistCurrentMonth;
	}
	
	public String getDeptoCarNewCurrentMonth() {
		return deptoCarNewCurrentMonth;
	}
	
	public void setDeptoCarNewCurrentMonth(String deptoCarNewCurrentMonth) {
		this.deptoCarNewCurrentMonth = deptoCarNewCurrentMonth;
	}

	public Long getNoLine() {
		return noLine;
	}

	public void setNoLine(Long noLine) {
		this.noLine = noLine;
	}

	public String getNoAccount() {
		return noAccount;
	}

	public void setNoAccount(String noAccount) {
		this.noAccount = noAccount;
	}
}
