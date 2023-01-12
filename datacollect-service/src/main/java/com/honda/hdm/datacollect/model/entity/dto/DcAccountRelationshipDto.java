package com.honda.hdm.datacollect.model.entity.dto;

public class DcAccountRelationshipDto {

    private DcAccountDto parent;

    private DcAccountDto child;

    private Integer order;

    public DcAccountDto getParent() {
        return parent;
    }

    public void setParent(DcAccountDto parent) {
        this.parent = parent;
    }

    public DcAccountDto getChild() {
        return child;
    }

    public void setChild(DcAccountDto child) {
        this.child = child;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }
}
