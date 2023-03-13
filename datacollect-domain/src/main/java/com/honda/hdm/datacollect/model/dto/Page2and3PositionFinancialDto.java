package com.honda.hdm.datacollect.model.dto;

import java.io.Serializable;

public class Page2and3PositionFinancialDto implements Serializable {

	private static final long serialVersionUID = 1L;
	private Long id;
	private String position;
	private Double columnA;
	private Double columnB;
	private Double columnC;
	private Double columnD;
	private Double columnE;
	private Double columnF;
	private Double total;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPosition() {
		return position;
	}
	
	public void setPosition(String position) {
		this.position = position;
	}
	
	public Double getColumnA() {
		return columnA;
	}
	
	public void setColumnA(Double columnA) {
		this.columnA = columnA;
	}
	
	public Double getColumnB() {
		return columnB;
	}
	
	public void setColumnB(Double columnB) {
		this.columnB = columnB;
	}
	
	public Double getColumnC() {
		return columnC;
	}
	
	public void setColumnC(Double columnC) {
		this.columnC = columnC;
	}
	
	public Double getColumnD() {
		return columnD;
	}
	
	public void setColumnD(Double columnD) {
		this.columnD = columnD;
	}
	
	public Double getColumnE() {
		return columnE;
	}
	
	public void setColumnE(Double columnE) {
		this.columnE = columnE;
	}
	
	public Double getColumnF() {
		return columnF;
	}
	
	public void setColumnF(Double columnF) {
		this.columnF = columnF;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}
	
}
