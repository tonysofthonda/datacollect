package com.honda.hdm.datacollect.model.entity.dto;

import java.util.List;

public class DcFormulaDto {

    private Long id;

    private DcAccountValueDto ownerAccount;

    private String formula;

    private List<DcFormulaTermDto> terms;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public DcAccountValueDto getOwnerAccount() {
        return ownerAccount;
    }

    public void setOwnerAccount(DcAccountValueDto ownerAccount) {
        this.ownerAccount = ownerAccount;
    }

    public String getFormula() {
        return formula;
    }

    public void setFormula(String formula) {
        this.formula = formula;
    }

    public List<DcFormulaTermDto> getTerms() {
        return terms;
    }

    public void setTerms(List<DcFormulaTermDto> terms) {
        this.terms = terms;
    }
}
