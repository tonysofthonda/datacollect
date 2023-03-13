package com.honda.hdm.datacollect.model.dto;

import java.io.Serializable;

public class IncomeDeductionFinancialDto implements Serializable {

	private static final long serialVersionUID = 1L;
	private String nameAccount;
	private String noAccount;
	private Double month;
	
	public String getNameAccount() {
		return nameAccount;
	}
	
	public void setNameAccount(String nameAccount) {
		this.nameAccount = nameAccount;
	}
	
	public String getNoAccount() {
		return noAccount;
	}
	
	public void setNoAccount(String noAccount) {
		this.noAccount = noAccount;
	}
	
	public Double getMonth() {
		return month;
	}
	
	public void setMonth(Double month) {
		this.month = month;
	}

}
