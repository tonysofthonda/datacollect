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
@Table(name = "DC_PER_MONTH_FINANCIAL_STATE")
public class DcPerMounthFinancialState implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
    @SequenceGenerator(name = "seq", sequenceName = "dcpermonthfinancialstate_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;
	
	@Column(name = "MONTH", nullable = false)
	private String month;
	
	@Column(name = "UNIT_HONDA", nullable = false)
	private Double unitHonda;
	
	@Column(name = "NEW_OTHERS", nullable = false)
	private Double newOthers;
	
	@Column(name = "UNIT_USED_RETAIL", nullable = false)
	private Double unitUsedRetail;
	
	@Column(name = "UNIT_USED_WHOLESALE", nullable = false)
	private Double unitUsedWholesale;
	
	@Column(name = "PROFIT_OR_LOSS", nullable = false)
	private Double profitOrLoss;
	
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
