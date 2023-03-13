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
@Table(name = "DC_PAGE_TWO_POSITION_FINANCIAL_STATE")
public class DcPositionPage2Financial implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
    @SequenceGenerator(name = "seq", sequenceName = "dcpagetwopositionfinancialstate_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;
	
	@Basic(optional = false)
    @Column(name = "POSITION")
    private String position;
	
	@Basic(optional = false)
    @Column(name = "COLUMN_A")
    private Double columnA;
	
	@Basic(optional = false)
    @Column(name = "COLUMN_B")
    private Double columnB;
	
	@Basic(optional = false)
    @Column(name = "COLUMN_C")
    private Double columnC;
	
	@Basic(optional = false)
    @Column(name = "COLUMN_D")
    private Double columnD;
	
	@Basic(optional = false)
    @Column(name = "COLUMN_E")
    private Double columnE;
	
	@Basic(optional = false)
    @Column(name = "COLUMN_F")
    private Double columnF;
	
	@Basic(optional = false)
    @Column(name = "TOTAL")
    private Double total;
	
	@JoinColumn(name = "dc_account_id", referencedColumnName = "id")
	@ManyToOne
	private DcAccount dcAccount;
	
	@Column(name = "FINANCIAL_STATE_ID", nullable = false)
	private Long financialStateId;
	
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

	public Long getFinancialStateId() {
		return financialStateId;
	}

	public void setFinancialStateId(Long financialStateId) {
		this.financialStateId = financialStateId;
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
