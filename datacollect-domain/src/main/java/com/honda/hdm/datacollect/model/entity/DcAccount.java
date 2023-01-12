package com.honda.hdm.datacollect.model.entity;

import com.honda.hdm.datacollect.model.entity.base.RecordStatusableEntry;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "DC_ACCOUNT")
@XmlRootElement
public class DcAccount extends RecordStatusableEntry implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @SequenceGenerator(name = "seq", sequenceName = "dc_account_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "account_number")
    private String accountNumber;

    @Column(name = "page")
    private String page;

    @Column(name = "formula")
    private Boolean formula = false;

    @OneToOne(mappedBy = "accountChild", cascade = CascadeType.ALL)
    private DcAccountRelationship accountParent;

    @OneToMany(mappedBy = "accountParent")
    @OrderBy("order asc")
    private List<DcAccountRelationship> accountChilds;

    @OneToMany(mappedBy = "account", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<DcAccountValue> accountValues = new ArrayList<>();

    @JoinTable(name = "DC_ACCOUNT_X_COMPONENT",
            joinColumns = {
                    @JoinColumn(name = "DC_ACCOUNT_ID", referencedColumnName = "ID", nullable = false)},
            inverseJoinColumns = {
                    @JoinColumn(name = "DC_ACCOUNT_COMPONENT_ID", referencedColumnName = "ID", nullable = false)})
    @OneToOne(cascade = CascadeType.MERGE)
    private DcAccountComponent component;

    @JoinTable(name = "DC_ACCOUNT_X_MODEL",
            joinColumns = {
                    @JoinColumn(name = "DC_ACCOUNT_ID", referencedColumnName = "ID", nullable = false)},
            inverseJoinColumns = {
                    @JoinColumn(name = "DC_MODEL_ID", referencedColumnName = "ID", nullable = false)})
    @OneToOne(mappedBy = "account", fetch = FetchType.LAZY)
    private DcModel model;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }

    public Boolean getFormula() {
        return formula;
    }

    public void setFormula(Boolean formula) {
        this.formula = formula;
    }

    public DcAccountRelationship getAccountParent() {
        return accountParent;
    }

    public void setAccountParent(DcAccountRelationship accountParent) {
        this.accountParent = accountParent;
    }

    public List<DcAccountRelationship> getAccountChilds() {
        return accountChilds;
    }

    public void setAccountChilds(List<DcAccountRelationship> accountChilds) {
        this.accountChilds = accountChilds;
    }

    public List<DcAccountValue> getAccountValues() {
        return accountValues;
    }

    public void setAccountValues(List<DcAccountValue> accountValues) {
        this.accountValues = accountValues;
    }

    public DcAccountComponent getComponent() {
        return component;
    }

    public void setComponent(DcAccountComponent component) {
        this.component = component;
    }

    public DcModel getModel() {
        return model;
    }

    public void setModel(DcModel model) {
        this.model = model;
    }
}
