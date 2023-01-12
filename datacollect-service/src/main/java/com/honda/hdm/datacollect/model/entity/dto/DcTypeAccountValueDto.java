package com.honda.hdm.datacollect.model.entity.dto;


import com.honda.hdm.datacollect.service.wrapper.RelationshipCheck;

import java.util.List;

public class DcTypeAccountValueDto {

    private Long id;

    private String name;

    private RelationshipCheck relationshipCheck;

    private DcTypeAccountValueRelationshipDto parent;

    private List<DcTypeAccountValueRelationshipDto> children;

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

    public RelationshipCheck getRelationshipCheck() {
        return relationshipCheck;
    }

    public void setRelationshipCheck(RelationshipCheck relationshipCheck) {
        this.relationshipCheck = relationshipCheck;
    }

    public DcTypeAccountValueRelationshipDto getParent() {
        return parent;
    }

    public void setParent(DcTypeAccountValueRelationshipDto parent) {
        this.parent = parent;
    }

    public List<DcTypeAccountValueRelationshipDto> getChildren() {
        return children;
    }

    public void setChildren(List<DcTypeAccountValueRelationshipDto> children) {
        this.children = children;
    }
}
