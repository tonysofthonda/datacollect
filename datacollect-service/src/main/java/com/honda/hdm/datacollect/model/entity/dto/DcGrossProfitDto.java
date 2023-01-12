package com.honda.hdm.datacollect.model.entity.dto;

import java.io.Serializable;

public class DcGrossProfitDto implements Serializable {

	private static final long serialVersionUID = 1L;

    private Long lineNumber;
    private Long units;
    private Double sales;
    private Double grossProfit;
    private Double unitsSold;
    private String newVehicles;
    private Long accountNumber;
    private Long numDealer;
    
	public Long getLineNumber() {
		return lineNumber;
	}
	public void setLineNumber(Long lineNumber) {
		this.lineNumber = lineNumber;
	}
	public Long getUnits() {
		return units;
	}
	public void setUnits(Long units) {
		this.units = units;
	}
	public Double getSales() {
		return sales;
	}
	public void setSales(Double sales) {
		this.sales = sales;
	}
	public Double getGrossProfit() {
		return grossProfit;
	}
	public void setGrossProfit(Double grossProfit) {
		this.grossProfit = grossProfit;
	}
	public Double getUnitsSold() {
		return unitsSold;
	}
	public void setUnitsSold(Double unitsSold) {
		this.unitsSold = unitsSold;
	}
	public String getNewVehicles() {
		return newVehicles;
	}
	public void setNewVehicles(String newVehicles) {
		this.newVehicles = newVehicles;
	}
	public Long getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(Long accountNumber) {
		this.accountNumber = accountNumber;
	}
	public Long getNumDealer() {
		return numDealer;
	}
	public void setNumDealer(Long numDealer) {
		this.numDealer = numDealer;
	}
}
