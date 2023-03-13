package com.honda.hdm.datacollect.model.dto;

import java.io.Serializable;

public class Page2and3FinancialDto implements Serializable {

	private static final long serialVersionUID = 1L;
	private Long id;
	private String nameAccount;
	private String noAccount;
	private Double totalIncomeExpensesPerMonth;
	private Double grossProfit;
	private Double newHondaMonth;
	private Double newOthersMonth;
	private Double usedMonth;
	private Double deptoService;
	private Double deptoWorkshop;
	private Double spareParts;
	private Long noLine;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

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
	
	public Double getTotalIncomeExpensesPerMonth() {
		return totalIncomeExpensesPerMonth;
	}
	
	public void setTotalIncomeExpensesPerMonth(Double totalIncomeExpensesPerMonth) {
		this.totalIncomeExpensesPerMonth = totalIncomeExpensesPerMonth;
	}
	
	public Double getGrossProfit() {
		return grossProfit;
	}
	
	public void setGrossProfit(Double grossProfit) {
		this.grossProfit = grossProfit;
	}
	
	public Double getNewHondaMonth() {
		return newHondaMonth;
	}
	
	public void setNewHondaMonth(Double newHondaMonth) {
		this.newHondaMonth = newHondaMonth;
	}
	
	public Double getNewOthersMonth() {
		return newOthersMonth;
	}
	
	public void setNewOthersMonth(Double newOthersMonth) {
		this.newOthersMonth = newOthersMonth;
	}
	
	public Double getUsedMonth() {
		return usedMonth;
	}
	
	public void setUsedMonth(Double usedMonth) {
		this.usedMonth = usedMonth;
	}
	
	public Double getDeptoService() {
		return deptoService;
	}
	
	public void setDeptoService(Double deptoService) {
		this.deptoService = deptoService;
	}
	
	public Double getDeptoWorkshop() {
		return deptoWorkshop;
	}
	
	public void setDeptoWorkshop(Double deptoWorkshop) {
		this.deptoWorkshop = deptoWorkshop;
	}
	
	public Double getSpareParts() {
		return spareParts;
	}
	
	public void setSpareParts(Double spareParts) {
		this.spareParts = spareParts;
	}

	public Long getNoLine() {
		return noLine;
	}

	public void setNoLine(Long noLine) {
		this.noLine = noLine;
	}
}
