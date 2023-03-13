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
@Table(name = "DC_PAGE_TWO_FINANCIAL_STATE")
public class DcPageTwoFinancial implements Serializable {

	private static final long serialVersionUID = 1L;

    @Id
    @SequenceGenerator(name = "seq", sequenceName = "dcpagetwofinancialstate_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;

    @Basic(optional = false)
    @Column(name = "NAME_ACCOUNT")
    private String nameAccount;
    
    @Basic(optional = false)
    @Column(name = "NO_ACCOUNT")
    private String noAccount;
    
    @Basic(optional = false)
    @Column(name = "TOTAL_INCOME_EXPENSES")
    private Double totalIncomeExpenses;
    
    @Basic(optional = false)
    @Column(name = "GROSS_PROFIT")
    private Double grossProfit;
    
    @Basic(optional = false)
    @Column(name = "NEW_HONDA_MONTH")
    private Double newHondaMonth;
    
    @Basic(optional = false)
    @Column(name = "NEW_OTHERS_MONTH")
    private Double newOthersMonth;
    
    @Basic(optional = false)
    @Column(name = "USED_MONTH")
    private Double usedMonth;
    
    @Basic(optional = false)
    @Column(name = "DEPTO_SERVICE")
    private Double deptoService;
    
    @Basic(optional = false)
    @Column(name = "DEPTO_WORKSHOP")
    private Double deptoWorkshop;
    
    @Basic(optional = false)
    @Column(name = "DEPTO_SPARE_PARTS")
    private Double spareParts;
    
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

	public Double getTotalIncomeExpenses() {
		return totalIncomeExpenses;
	}

	public void setTotalIncomeExpenses(Double totalIncomeExpenses) {
		this.totalIncomeExpenses = totalIncomeExpenses;
	}

	public Double getGrossProfit() {
		return grossProfit;
	}

	public void setGrossProfit(Double grossProfit) {
		this.grossProfit = grossProfit;
	}

	public Double getNewHondaMonth() {
		return newHondaMonth;
	}

	public void setNewHondaMonth(Double newHondaMonth) {
		this.newHondaMonth = newHondaMonth;
	}

	public Double getNewOthersMonth() {
		return newOthersMonth;
	}

	public void setNewOthersMonth(Double newOthersMonth) {
		this.newOthersMonth = newOthersMonth;
	}

	public Double getUsedMonth() {
		return usedMonth;
	}

	public void setUsedMonth(Double usedMonth) {
		this.usedMonth = usedMonth;
	}

	public Double getDeptoService() {
		return deptoService;
	}

	public void setDeptoService(Double deptoService) {
		this.deptoService = deptoService;
	}

	public Double getDeptoWorkshop() {
		return deptoWorkshop;
	}

	public void setDeptoWorkshop(Double deptoWorkshop) {
		this.deptoWorkshop = deptoWorkshop;
	}

	public Double getSpareParts() {
		return spareParts;
	}

	public void setSpareParts(Double spareParts) {
		this.spareParts = spareParts;
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
