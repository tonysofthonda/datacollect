package com.honda.hdm.datacollect.model.entity;

import javax.persistence.*;

@Entity
@Table(name = "dc_evaluation_area")
public class DcEvaluationArea {
    @Id
    @SequenceGenerator(name = "seq", sequenceName = "dc_eval_area_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "id", nullable = false, precision = 38, scale = 0)
    private Long id;

    @Column(name = "name", nullable = false, length = 50)
    private String name;

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
}
