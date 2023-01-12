package com.honda.hdm.datacollect.model.entity;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "DC_FIN_STATE_X_ACCOUNT_VALUE")
@XmlRootElement
public class DcFinancialStateXAccountValue implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @SequenceGenerator(name = "seq", sequenceName = "dc_fin_state_acc_value_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;

    @Column(name = "value")
    private String value;

    @JoinColumn(name = "dc_financial_state_id", referencedColumnName = "id")
    @ManyToOne
    private DcFinancialState financialState;

    @JoinColumn(name = "dc_account_value_id", referencedColumnName = "id")
    @ManyToOne
    private DcAccountValue accountValue;

    @OneToMany(mappedBy = "accountValue")
    private List<DcAccountError> errors;

    public DcFinancialStateXAccountValue() {
    }

    public DcFinancialStateXAccountValue(String value, DcFinancialState financialState, DcAccountValue accountValue) {
        this.value = value;
        this.financialState = financialState;
        this.accountValue = accountValue;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public DcFinancialState getFinancialState() {
        return financialState;
    }

    public void setFinancialState(DcFinancialState financialState) {
        this.financialState = financialState;
    }

    public DcAccountValue getAccountValue() {
        return accountValue;
    }

    public void setAccountValue(DcAccountValue accountValue) {
        this.accountValue = accountValue;
    }

    public List<DcAccountError> getErrors() {
        return errors;
    }

    public void setErrors(List<DcAccountError> errors) {
        this.errors = errors;
    }
}
