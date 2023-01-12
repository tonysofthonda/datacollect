package com.honda.hdm.datacollect.model.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "DC_TYPE_ACCOUNT_VALUE")
@XmlRootElement
public class DcTypeAccountValue implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @SequenceGenerator(name = "seq", sequenceName = "dc_type_account_value_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;

    @Column(name = "name")
    @NotNull
    private String name;

    @OneToOne(mappedBy = "typeAccountChild", cascade = CascadeType.ALL)
    private DcTypeAccountValueRelationship typeAccountParent;

    @OneToMany(mappedBy = "typeAccountParent")
    @OrderBy("order asc")
    private List<DcTypeAccountValueRelationship> typeAccountChilds;

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

    public DcTypeAccountValueRelationship getTypeAccountParent() {
        return typeAccountParent;
    }

    public void setTypeAccountParent(DcTypeAccountValueRelationship typeAccountParent) {
        this.typeAccountParent = typeAccountParent;
    }

    public List<DcTypeAccountValueRelationship> getTypeAccountChilds() {
        return typeAccountChilds;
    }

    public void setTypeAccountChilds(List<DcTypeAccountValueRelationship> typeAccountChilds) {
        this.typeAccountChilds = typeAccountChilds;
    }
}
