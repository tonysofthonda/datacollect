package com.honda.hdm.datacollect.model.dto;

import java.io.Serializable;

public class AnalisysFinancialDto implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String type;
	private String noAccount;
	private Double fullyToUpDate;
	private Double pastDueAccount3160;
	private Double pastDueAccount6190;
	private Double pastDueAccountsobre90;
	private Double questionableAccount;
	private Long noLine;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	
	public String getNoAccount() {
		return noAccount;
	}
	
	public void setNoAccount(String noAccount) {
		this.noAccount = noAccount;
	}
	
	public Double getFullyToUpDate() {
		return fullyToUpDate;
	}
	
	public void setFullyToUpDate(Double fullyToUpDate) {
		this.fullyToUpDate = fullyToUpDate;
	}
	
	public Double getPastDueAccount3160() {
		return pastDueAccount3160;
	}
	
	public void setPastDueAccount3160(Double pastDueAccount3160) {
		this.pastDueAccount3160 = pastDueAccount3160;
	}
	
	public Double getPastDueAccount6190() {
		return pastDueAccount6190;
	}
	
	public void setPastDueAccount6190(Double pastDueAccount6190) {
		this.pastDueAccount6190 = pastDueAccount6190;
	}
	
	public Double getPastDueAccountsobre90() {
		return pastDueAccountsobre90;
	}
	
	public void setPastDueAccountsobre90(Double pastDueAccountsobre90) {
		this.pastDueAccountsobre90 = pastDueAccountsobre90;
	}
	
	public Double getQuestionableAccount() {
		return questionableAccount;
	}
	
	public void setQuestionableAccount(Double questionableAccount) {
		this.questionableAccount = questionableAccount;
	}

	public Long getNoLine() {
		return noLine;
	}

	public void setNoLine(Long noLine) {
		this.noLine = noLine;
	}

}
