package com.honda.hdm.datacollect.model.entity;

import com.honda.hdm.datacollect.model.entity.id.DcFormulaTermId;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;

@Entity
@Table(name = "DC_FORMULA_TERM")
@XmlRootElement
@IdClass(DcFormulaTermId.class)
public class DcFormulaTerm implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @JoinColumn(name = "dc_formula_id", referencedColumnName = "id")
    @ManyToOne
    private DcFormula formula;

    @JoinColumn(name = "dc_account_value_term_id", referencedColumnName = "id")
    @ManyToOne
    private DcAccountValue accountValueTerm;

    @Id
    @Column(name = "order_view")
    private Integer order;

    public DcFormulaTerm() {
    }

    public DcFormulaTerm(DcFormula formula, DcAccountValue accountValueTerm, Integer order) {
        this.formula = formula;
        this.accountValueTerm = accountValueTerm;
        this.order = order;
    }

    public DcFormula getFormula() {
        return formula;
    }

    public void setFormula(DcFormula formula) {
        this.formula = formula;
    }

    public DcAccountValue getAccountValueTerm() {
        return accountValueTerm;
    }

    public void setAccountValueTerm(DcAccountValue accountValueTerm) {
        this.accountValueTerm = accountValueTerm;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DcFormulaTerm that = (DcFormulaTerm) o;

        if (formula != null ? !formula.equals(that.formula) : that.formula != null) return false;
        if (accountValueTerm != null ? !accountValueTerm.equals(that.accountValueTerm) : that.accountValueTerm != null)
            return false;
        return order != null ? order.equals(that.order) : that.order == null;
    }

    @Override
    public int hashCode() {
        int result = formula != null ? formula.hashCode() : 0;
        result = 31 * result + (accountValueTerm != null ? accountValueTerm.hashCode() : 0);
        result = 31 * result + (order != null ? order.hashCode() : 0);
        return result;
    }
}
