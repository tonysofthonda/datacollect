package com.honda.hdm.datacollect.model.entity.dto;

import com.honda.hdm.datacollect.service.wrapper.RelationshipCheck;

import java.util.List;

public class DcAccountDto {

    private Long id;

    private String name;

    private String accountNumber;

    private String page;

    private Boolean formula;

    private RelationshipCheck relationshipCheck;

    private DcAccountRelationshipDto parent;

    private List<DcAccountRelationshipDto> children;

    private List<DcAccountValueDto> accountValues;

    private DcAccountComponentDto component;

    private DcModelDto model;

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

    public DcAccountRelationshipDto getParent() {
        return parent;
    }

    public void setParent(DcAccountRelationshipDto parent) {
        this.parent = parent;
    }

    public List<DcAccountRelationshipDto> getChildren() {
        return children;
    }

    public void setChildren(List<DcAccountRelationshipDto> children) {
        this.children = children;
    }

    public List<DcAccountValueDto> getAccountValues() {
        return accountValues;
    }

    public void setAccountValues(List<DcAccountValueDto> accountValues) {
        this.accountValues = accountValues;
    }

    public RelationshipCheck getRelationshipCheck() {
        return relationshipCheck;
    }

    public void setRelationshipCheck(RelationshipCheck relationshipCheck) {
        this.relationshipCheck = relationshipCheck;
    }

    public DcAccountComponentDto getComponent() {
        return component;
    }

    public void setComponent(DcAccountComponentDto component) {
        this.component = component;
    }

    public DcModelDto getModel() {
        return model;
    }

    public void setModel(DcModelDto model) {
        this.model = model;
    }
}
