package com.honda.hdm.datacollect.model.entity;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;

@Entity
@Table(name = "DC_TY_ACCOUNT_VAL_REL")
@XmlRootElement
public class DcTypeAccountValueRelationship implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "dc_ty_accountval_chd_id")
    private Long typeAccountChildId;

    @JoinColumn(name = "dc_ty_accountval_par_id", referencedColumnName = "id")
    @ManyToOne
    private DcTypeAccountValue typeAccountParent;

    @MapsId
    @JoinColumn(name = "dc_ty_accountval_chd_id", referencedColumnName = "id")
    @OneToOne
    private DcTypeAccountValue typeAccountChild;

    @Column(name = "order_view")
    private Integer order;

    public Long getTypeAccountChildId() {
        return typeAccountChildId;
    }

    public void setTypeAccountChildId(Long typeAccountChildId) {
        this.typeAccountChildId = typeAccountChildId;
    }

    public DcTypeAccountValue getTypeAccountParent() {
        return typeAccountParent;
    }

    public void setTypeAccountParent(DcTypeAccountValue typeAccountParent) {
        this.typeAccountParent = typeAccountParent;
    }

    public DcTypeAccountValue getTypeAccountChild() {
        return typeAccountChild;
    }

    public void setTypeAccountChild(DcTypeAccountValue typeAccountChild) {
        this.typeAccountChild = typeAccountChild;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }
}
