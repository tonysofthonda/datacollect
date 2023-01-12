package com.honda.hdm.datacollect.model.entity.id;

import com.honda.hdm.datacollect.model.entity.DcFormula;

import java.io.Serializable;

public class DcFormulaTermId implements Serializable {

    private static final long serialVersionUID = 1L;

    private DcFormula formula;

    private Integer order;

    public DcFormula getFormula() {
        return formula;
    }

    public void setFormula(DcFormula formula) {
        this.formula = formula;
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

        DcFormulaTermId that = (DcFormulaTermId) o;

        if (formula != null ? !formula.equals(that.formula) : that.formula != null) return false;
        return order != null ? order.equals(that.order) : that.order == null;
    }

    @Override
    public int hashCode() {
        int result = formula != null ? formula.hashCode() : 0;
        result = 31 * result + (order != null ? order.hashCode() : 0);
        return result;
    }
}
