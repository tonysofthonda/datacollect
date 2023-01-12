package com.honda.hdm.datacollect.model.entity.dto;

public class DcTypeAccountValueRelationshipDto {

    private DcTypeAccountValueDto parent;

    private DcTypeAccountValueDto child;

    private Integer order;

    public DcTypeAccountValueDto getParent() {
        return parent;
    }

    public void setParent(DcTypeAccountValueDto parent) {
        this.parent = parent;
    }

    public DcTypeAccountValueDto getChild() {
        return child;
    }

    public void setChild(DcTypeAccountValueDto child) {
        this.child = child;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }
}
