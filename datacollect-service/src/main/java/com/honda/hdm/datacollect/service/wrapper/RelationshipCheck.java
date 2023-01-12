package com.honda.hdm.datacollect.service.wrapper;

public class RelationshipCheck {

    private Boolean hasParent;

    private Boolean hasChildren;

    public RelationshipCheck(Boolean hasParent, Boolean hasChildren) {
        this.hasParent = hasParent;
        this.hasChildren = hasChildren;
    }

    public RelationshipCheck() {
    }

    public Boolean getHasParent() {
        return hasParent;
    }

    public void setHasParent(Boolean hasParent) {
        this.hasParent = hasParent;
    }

    public Boolean getHasChildren() {
        return hasChildren;
    }

    public void setHasChildren(Boolean hasChildren) {
        this.hasChildren = hasChildren;
    }
}
