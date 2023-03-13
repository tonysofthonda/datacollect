package com.honda.hdm.datacollect.model.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "DC_ANALISYS_FINANCIAL_STATE")
public class DcAnlisysFinancialState implements Serializable {

	private static final long serialVersionUID = 1L;

	
	@Id
    @SequenceGenerator(name = "seq", sequenceName = "dcanalisysfinancialstate_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;
	
	@Column(name = "TYPE", nullable = false)
	private String type;
	
	@Column(name = "NO_ACCOUNT", nullable = false)
	private String noAccount;
	
	@Column(name = "FULLY_TO_UP_DATE", nullable = false)
	private Double fullyToUpDate;
	
	@Column(name = "PAST_DUE_ACCOUNT_3160", nullable = false)
	private Double pastDueAccount3160;
	
	@Column(name = "PAST_DUE_ACCOUNT_6190", nullable = false)
	private Double pastDueAccount6190;
	
	@Column(name = "PAST_DUE_ACCOUNT_SOBRE90", nullable = false)
	private Double pastDueAccountsobre90;
	
	@Column(name = "QUESTIONABLE_ACCOUNT", nullable = false)
	private Double questionableAccount;
	
	@Column(name = "FINANCIAL_STATE_ID", nullable = false)
	private Long financialStateId;
	
	@Column(name = "NO_LINE")
	private Long noLine;
	
	@JoinColumn(name = "dc_account_id", referencedColumnName = "id")
	@ManyToOne
	private DcAccount dcAccount;
	
	@Column(name = "DATE_UPDATE", nullable = false)
	private Date dateUpdate;
	
	@Column(name = "DATE_CREATE", nullable = false)
	private Date dateCreate;
	
	@Column(name = "OBS", nullable = false)
	private String obs;
	
	@Column(name = "BSTATE", nullable = false)
	private Long bstate;

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

	public Long getFinancialStateId() {
		return financialStateId;
	}

	public void setFinancialStateId(Long financialStateId) {
		this.financialStateId = financialStateId;
	}

	public Long getNoLine() {
		return noLine;
	}

	public void setNoLine(Long noLine) {
		this.noLine = noLine;
	}

	public DcAccount getDcAccount() {
		return dcAccount;
	}

	public void setDcAccount(DcAccount dcAccount) {
		this.dcAccount = dcAccount;
	}

	public Date getDateUpdate() {
		return dateUpdate;
	}

	public void setDateUpdate(Date dateUpdate) {
		this.dateUpdate = dateUpdate;
	}

	public Date getDateCreate() {
		return dateCreate;
	}

	public void setDateCreate(Date dateCreate) {
		this.dateCreate = dateCreate;
	}

	public String getObs() {
		return obs;
	}

	public void setObs(String obs) {
		this.obs = obs;
	}

	public Long getBstate() {
		return bstate;
	}

	public void setBstate(Long bstate) {
		this.bstate = bstate;
	}
}
