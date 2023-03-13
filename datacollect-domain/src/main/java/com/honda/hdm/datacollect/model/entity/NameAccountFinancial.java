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
@Table(name = "DC_NAME_ACCOUNT_FINANCIAL_STATE")
public class NameAccountFinancial implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
    @SequenceGenerator(name = "seq", sequenceName = "dcpermonthfinancialstate_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;
	
	@Column(name = "NAME_ACCOUNT", nullable = false)
	private String nameAccount;
	
	@Column(name = "NO_ACCOUNT", nullable = false)
	private String noAccount;
	
	@Column(name = "COST", nullable = false)
	private Double cost;
	
	@Column(name = "ACCUMULATED_DEPRECIATION", nullable = false)
	private Double accomulatedDepreciation;
	
	@Column(name = "IMPORTE", nullable = false)
	private Double importe;
	
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
