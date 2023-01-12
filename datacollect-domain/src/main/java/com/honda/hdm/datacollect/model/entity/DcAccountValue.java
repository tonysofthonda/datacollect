package com.honda.hdm.datacollect.model.entity;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "DC_ACCOUNT_VALUE")
@XmlRootElement
public class DcAccountValue implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @SequenceGenerator(name = "seq", sequenceName = "dc_account_value_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;

    @Column(name = "read_only")
    private Boolean readOnly = false;

    @Column(name = "required")
    private Boolean required = true;

    @Column(name = "default_value")
    private String defaultValue;

    @JoinColumn(name = "dc_account_id", referencedColumnName = "id")
    @ManyToOne
    private DcAccount account;

    @JoinColumn(name = "dc_type_account_value_id", referencedColumnName = "id")
    @ManyToOne
    private DcTypeAccountValue typeAccountValue;

    @OneToOne(mappedBy = "ownerAccountValue", cascade = CascadeType.ALL, orphanRemoval = true)
    private DcFormula formula;

    @OneToMany(mappedBy = "accountValueTerm", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<DcFormulaTerm> termsOfFormula;

    public DcAccountValue() {
    }

    public DcAccountValue(DcAccount account, DcTypeAccountValue typeAccountValue) {
        this.account = account;
        this.typeAccountValue = typeAccountValue;
    }

    public DcAccountValue(DcAccount account, DcTypeAccountValue typeAccountValue, Boolean readOnly) {
        this.readOnly = readOnly;
        this.account = account;
        this.typeAccountValue = typeAccountValue;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Boolean getReadOnly() {
        return readOnly;
    }

    public void setReadOnly(Boolean readOnly) {
        this.readOnly = readOnly;
    }

    public Boolean getRequired() {
        return required;
    }

    public void setRequired(Boolean required) {
        this.required = required;
    }

    public String getDefaultValue() {
        return defaultValue;
    }

    public void setDefaultValue(String defaultValue) {
        this.defaultValue = defaultValue;
    }

    public DcAccount getAccount() {
        return account;
    }

    public void setAccount(DcAccount account) {
        this.account = account;
    }

    public DcTypeAccountValue getTypeAccountValue() {
        return typeAccountValue;
    }

    public void setTypeAccountValue(DcTypeAccountValue typeAccountValue) {
        this.typeAccountValue = typeAccountValue;
    }

    public DcFormula getFormula() {
        return formula;
    }

    public void setFormula(DcFormula formula) {
        this.formula = formula;
    }

    public List<DcFormulaTerm> getTermsOfFormula() {
        return termsOfFormula;
    }

    public void setTermsOfFormula(List<DcFormulaTerm> termsOfFormula) {
        this.termsOfFormula = termsOfFormula;
    }
}
