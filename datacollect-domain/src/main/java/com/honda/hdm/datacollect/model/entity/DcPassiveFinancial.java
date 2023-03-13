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
@Table(name = "DC_PASSIVE_FINANCIAL_STATE")
public class DcPassiveFinancial implements Serializable {

	private static final long serialVersionUID = 1L;

	
	@Id
    @SequenceGenerator(name = "seq", sequenceName = "dcpassivefinancialstate_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;
	
	@Column(name = "TITLE", nullable = false)
	private String title;
	
	@Column(name = "NO_ACCOUNT", nullable = false)
	private String noAccount;
	
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