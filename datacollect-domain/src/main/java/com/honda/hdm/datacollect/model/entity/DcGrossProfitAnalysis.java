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
@Table(name = "DC_GROSS_PROFIT_ANALYSIS_FINANCIAL_STATE")
public class DcGrossProfitAnalysis implements Serializable {

	private static final long serialVersionUID = 1L;

    @Id
    @SequenceGenerator(name = "seq", sequenceName = "dcgrossprofitanalysisfinancialstate_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;

    @Basic(optional = false)
    @Column(name = "UNIT_CURRENT_MONTH")
    private Double unitCurrentMonth;
    
    @Basic(optional = false)
    @Column(name = "SALES_CURRENT_MONTH")
    private Double salesCurrentMonth;
    
    @Basic(optional = false)
    @Column(name = "GROSS_PROFIT_CURRENT_MONTH")
    private Double grossProfitCurrentMonth;
    
    @Basic(optional = false)
    @Column(name = "SOLD_UNIT_CURRENT_MONTH")
    private Double soldCurrentMonth;
    
    @Basic(optional = false)
    @Column(name = "DEPTO_VEHICLE_CURRENT_MONTH")
    private String deptoVehicleCurrentMonth;
    
    @Column(name = "FINANCIAL_STATE_ID", nullable = false)
	private Long financialStateId;
    
    @Column(name = "NO_LINE")
	private Long noLine;
    
    @JoinColumn(name = "dc_account_id", referencedColumnName = "id")
	@ManyToOne
	private DcAccount dcAccount;
    
    @Column(name = "NO_ACCOUNT")
	private String noAccount;
    
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

	public Double getUnitCurrentMonth() {
		return unitCurrentMonth;
	}

	public void setUnitCurrentMonth(Double unitCurrentMonth) {
		this.unitCurrentMonth = unitCurrentMonth;
	}

	public Double getSalesCurrentMonth() {
		return salesCurrentMonth;
	}

	public void setSalesCurrentMonth(Double salesCurrentMonth) {
		this.salesCurrentMonth = salesCurrentMonth;
	}

	public Double getGrossProfitCurrentMonth() {
		return grossProfitCurrentMonth;
	}

	public void setGrossProfitCurrentMonth(Double grossProfitCurrentMonth) {
		this.grossProfitCurrentMonth = grossProfitCurrentMonth;
	}

	public Double getSoldCurrentMonth() {
		return soldCurrentMonth;
	}

	public void setSoldCurrentMonth(Double soldCurrentMonth) {
		this.soldCurrentMonth = soldCurrentMonth;
	}

	public String getDeptoVehicleCurrentMonth() {
		return deptoVehicleCurrentMonth;
	}

	public void setDeptoVehicleCurrentMonth(String deptoVehicleCurrentMonth) {
		this.deptoVehicleCurrentMonth = deptoVehicleCurrentMonth;
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

	public String getNoAccount() {
		return noAccount;
	}

	public void setNoAccount(String noAccount) {
		this.noAccount = noAccount;
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
