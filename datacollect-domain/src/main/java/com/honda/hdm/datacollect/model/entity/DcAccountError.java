package com.honda.hdm.datacollect.model.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "DC_ACCOUNT_ERROR")
@XmlRootElement
public class DcAccountError implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @SequenceGenerator(name = "seq", sequenceName = "dc_fin_acc_value_err_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;

    @Column(name = "check_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date checkDate;

    @Column(name = "value_error")
    @NotNull
    private String valueError;

    @ManyToOne
    @JoinColumn(name = "dc_fin_state_x_status_id", referencedColumnName = "id")
    private DcFinancialStateXStatus status;

    @ManyToOne
    @JoinColumn(name = "dc_fin_state_acc_value_id", referencedColumnName = "id")
    private DcFinancialStateXAccountValue accountValue;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getCheckDate() {
        return checkDate;
    }

    public void setCheckDate(Date checkDate) {
        this.checkDate = checkDate;
    }

    public String getValueError() {
        return valueError;
    }

    public void setValueError(String valueError) {
        this.valueError = valueError;
    }

    public DcFinancialStateXStatus getStatus() {
        return status;
    }

    public void setStatus(DcFinancialStateXStatus status) {
        this.status = status;
    }

    public DcFinancialStateXAccountValue getAccountValue() {
        return accountValue;
    }

    public void setAccountValue(DcFinancialStateXAccountValue accountValue) {
        this.accountValue = accountValue;
    }
}
