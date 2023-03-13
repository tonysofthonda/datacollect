package com.honda.hdm.datacollect.model.dto;

import java.io.Serializable;

public class PerMonthFinancialDto implements Serializable {

	private static final long serialVersionUID = 1L;
	private Long id;
	private String month;
	private Double unitHonda;
	private Double newOthers;
	private Double unitUsedRetail;
	private Double unitUsedWholesale;
	private Double profitOrLoss;
	private Long noLine;
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getMonth() {
		return month;
	}
	
	public void setMonth(String month) {
		this.month = month;
	}
	
	public Double getUnitHonda() {
		return unitHonda;
	}
	
	public void setUnitHonda(Double unitHonda) {
		this.unitHonda = unitHonda;
	}
	
	public Double getNewOthers() {
		return newOthers;
	}
	
	public void setNewOthers(Double newOthers) {
		this.newOthers = newOthers;
	}
	
	public Double getUnitUsedRetail() {
		return unitUsedRetail;
	}
	
	public void setUnitUsedRetail(Double unitUsedRetail) {
		this.unitUsedRetail = unitUsedRetail;
	}
	
	public Double getUnitUsedWholesale() {
		return unitUsedWholesale;
	}
	
	public void setUnitUsedWholesale(Double unitUsedWholesale) {
		this.unitUsedWholesale = unitUsedWholesale;
	}
	
	public Double getProfitOrLoss() {
		return profitOrLoss;
	}
	
	public void setProfitOrLoss(Double profitOrLoss) {
		this.profitOrLoss = profitOrLoss;
	}

	public Long getNoLine() {
		return noLine;
	}

	public void setNoLine(Long noLine) {
		this.noLine = noLine;
	}
}
