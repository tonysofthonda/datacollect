package com.honda.hdm.datacollect.model.entity;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;

@Entity
@Table(name = "DC_ACCOUNT_RELATIONSHIP")
@XmlRootElement
public class DcAccountRelationship implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "dc_account_child_id")
    private Long accountChildId;

    @JoinColumn(name = "dc_account_parent_id", referencedColumnName = "id")
    @ManyToOne
    private DcAccount accountParent;

    @MapsId
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "dc_account_child_id", referencedColumnName = "id")
    private DcAccount accountChild;

    @Column(name = "order_view")
    private Integer order;

    public Long getAccountChildId() {
        return accountChildId;
    }

    public void setAccountChildId(Long accountChildId) {
        this.accountChildId = accountChildId;
    }

    public DcAccount getAccountParent() {
        return accountParent;
    }

    public void setAccountParent(DcAccount accountParent) {
        this.accountParent = accountParent;
    }

    public DcAccount getAccountChild() {
        return accountChild;
    }

    public void setAccountChild(DcAccount accountChild) {
        this.accountChild = accountChild;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }
}
