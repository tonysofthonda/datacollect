package com.honda.hdm.datacollect.model.entity.dto;

import java.io.Serializable;
import java.math.BigDecimal;

public class PasiveDto implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String header;
	private String subtitle;
	private String value;
	private String noAccount;
	private String page;
	private String parent;

	public PasiveDto(String header, String subtitle, String value, String noAccount, String page, String parent) {
		this.header = header;
		this.subtitle = subtitle;
		this.noAccount = noAccount;
		this.page = page;
		this.value = value;
		this.parent = parent;
		
//		if(value == null || value.trim().equals("")) {
//			this.value = "0.0";
//		} else {
//			if(isNumeric(value)) {
//				BigDecimal val = new BigDecimal(value);
//				val = val.setScale(2, BigDecimal.ROUND_DOWN);
//				this.value = val + "";
//			} else {
//				this.value = "";
//			}
//		}
		
	}
	
	private boolean isNumeric(String s) {
        if (s == null || s.equals("")) {
            return false;
        }
 
        for (int i = 0; i < s.length(); i++)
        {
            char c = s.charAt(i);
            if ((c < '0' || c > '9') && (c != '.' || c != '-')) {
                return false;
            }
        }
        return true;
    }
	
	public String getHeader() {
		return header;
	}
	
	public void setHeader(String header) {
		this.header = header;
	}
	
	public String getSubtitle() {
		return subtitle;
	}
	
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	
	public String getValue() {
		return value;
	}
	
	public void setValue(String value) {
		this.value = value;
	}
	
	public String getNoAccount() {
		return noAccount;
	}

	public void setNoAccount(String noAccount) {
		this.noAccount = noAccount;
	}
	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getParent() {
		return parent;
	}

	public void setParent(String parent) {
		this.parent = parent;
	}
}
