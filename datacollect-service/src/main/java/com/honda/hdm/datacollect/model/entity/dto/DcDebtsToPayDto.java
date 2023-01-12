package com.honda.hdm.datacollect.model.entity.dto;

import java.io.Serializable;

public class DcDebtsToPayDto implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String header;
	private String Double;
	
	public String getHeader() {
		return header;
	}
	
	public void setHeader(String header) {
		this.header = header;
	}
	
	public String getDouble() {
		return Double;
	}
	
	public void setDouble(String d) {
		Double = d;
	}
}
