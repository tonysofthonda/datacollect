package com.honda.hdm.datacollect.model.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "DC_FORMULA")
@XmlRootElement
public class DcFormula implements Serializable {

    @Id
    @SequenceGenerator(name = "seq", sequenceName = "dc_formula_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "dc_owner_account_value_id", referencedColumnName = "id")
    private DcAccountValue ownerAccountValue;

    @Column(name = "formula")
    @NotNull
    private String formula;

    @OneToMany(mappedBy = "formula", cascade = CascadeType.ALL, orphanRemoval = true)
    @OrderBy("order asc")
    private List<DcFormulaTerm> terms;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public DcAccountValue getOwnerAccountValue() {
        return ownerAccountValue;
    }

    public void setOwnerAccountValue(DcAccountValue ownerAccountValue) {
        this.ownerAccountValue = ownerAccountValue;
    }

    public String getFormula() {
        return formula;
    }

    public void setFormula(String formula) {
        this.formula = formula;
    }

    public List<DcFormulaTerm> getTerms() {
        return terms;
    }

    public void setTerms(List<DcFormulaTerm> terms) {
        this.terms = terms;
    }
}
