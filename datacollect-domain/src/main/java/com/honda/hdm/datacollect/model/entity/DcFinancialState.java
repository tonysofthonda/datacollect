package com.honda.hdm.datacollect.model.entity;

import com.honda.hdm.datacollect.model.entity.base.RecordStatusableEntry;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "DC_FINANCIAL_STATE")
@XmlRootElement
public class DcFinancialState extends RecordStatusableEntry implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @SequenceGenerator(name = "seq", sequenceName = "dc_financial_state_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;

    @Column(name = "month", nullable = false)
    private Integer month;

    @Column(name = "year", nullable = false)
    private Integer year;

    @Column(name = "limit_date", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date limitDate;

    @JoinColumn(name = "dc_dealer_id", referencedColumnName = "id")
    @ManyToOne
    private DcDealer dealer;
    
    @Column(name = "bstate")
    private Long bstate;

    @OneToMany(mappedBy = "financialState", cascade = CascadeType.ALL)
    @OrderBy("dateAssignment asc")
    private List<DcFinancialStateXStatus> statuses;

    @OneToMany(mappedBy = "financialState", cascade = CascadeType.ALL)
    private List<DcFinancialStateXAccountValue> accountValues;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getMonth() {
        return month;
    }

    public void setMonth(Integer month) {
        this.month = month;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Date getLimitDate() {
        return limitDate;
    }

    public void setLimitDate(Date limitDate) {
        this.limitDate = limitDate;
    }

    public DcDealer getDealer() {
        return dealer;
    }

    public void setDealer(DcDealer dealer) {
        this.dealer = dealer;
    }

    public List<DcFinancialStateXStatus> getStatuses() {
        return statuses;
    }

    public void setStatuses(List<DcFinancialStateXStatus> statuses) {
        this.statuses = statuses;
    }

    public List<DcFinancialStateXAccountValue> getAccountValues() {
        return accountValues;
    }

    public void setAccountValues(List<DcFinancialStateXAccountValue> accountValues) {
        this.accountValues = accountValues;
    }

	public Long getBstate() {
		return bstate;
	}

	public void setBstate(Long bstate) {
		this.bstate = bstate;
	}
}
