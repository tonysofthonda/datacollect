package com.honda.hdm.datacollect.model.dto;

import java.io.Serializable;

public class NameAccountDto implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long id;
	private String nameAccount;
	private String noAccount;
	private Double cost;
	private Double accomulatedDepreciation;
	private Double importe;
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
	
	public Double getCost() {
		return cost;
	}
	
	public void setCost(Double cost) {
		this.cost = cost;
	}
	
	public Double getAccomulatedDepreciation() {
		return accomulatedDepreciation;
	}
	
	public void setAccomulatedDepreciation(Double accomulatedDepreciation) {
		this.accomulatedDepreciation = accomulatedDepreciation;
	}
	
	public Double getImporte() {
		return importe;
	}
	
	public void setImporte(Double importe) {
		this.importe = importe;
	}

	public Long getNoLine() {
		return noLine;
	}

	public void setNoLine(Long noLine) {
		this.noLine = noLine;
	}
}
