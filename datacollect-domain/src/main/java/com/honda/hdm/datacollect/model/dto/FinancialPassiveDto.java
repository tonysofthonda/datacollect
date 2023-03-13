package com.honda.hdm.datacollect.model.dto;

import java.io.Serializable;

public class FinancialPassiveDto implements Serializable {

	private static final long serialVersionUID = 1L;
	private Long id;
	private Long noLine;
	private String title;
    private String noAccount;
    private Double importe;
    
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getNoLine() {
		return noLine;
	}

	public void setNoLine(Long noLine) {
		this.noLine = noLine;
	}

	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getNoAccount() {
		return noAccount;
	}
	
	public void setNoAccount(String noAccount) {
		this.noAccount = noAccount;
	}
	
	public Double getImporte() {
		return importe;
	}
	
	public void setImporte(Double importe) {
		this.importe = importe;
	}
}