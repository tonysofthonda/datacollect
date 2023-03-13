package com.honda.hdm.datacollect.model.dto;

import java.io.Serializable;

public class FinancialStateDto implements Serializable {

	private static final long serialVersionUID = 1L;

    private String dealerNumber;
    private String city;
    private String state;
    private String zip;
    private String periodFrom;
    private String periodTo;
    
	public String getDealerNumber() {
		return dealerNumber;
	}
	
	public void setDealerNumber(String dealerNumber) {
		this.dealerNumber = dealerNumber;
	}
	
	public String getCity() {
		return city;
	}
	
	public void setCity(String city) {
		this.city = city;
	}
	
	public String getState() {
		return state;
	}
	
	public void setState(String state) {
		this.state = state;
	}
	
	public String getZip() {
		return zip;
	}
	
	public void setZip(String zip) {
		this.zip = zip;
	}
	
	public String getPeriodFrom() {
		return periodFrom;
	}
	
	public void setPeriodFrom(String periodFrom) {
		this.periodFrom = periodFrom;
	}
	
	public String getPeriodTo() {
		return periodTo;
	}
	
	public void setPeriodTo(String periodTo) {
		this.periodTo = periodTo;
	}
}
