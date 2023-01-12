/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.honda.hdm.datacollect.model.entity;

import com.honda.hdm.datacollect.model.entity.base.RecordStatusableEntry;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author VJC80439
 */
@Entity
@Table(name = "DC_OPERATION_CODE", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"CODE"})})
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DcOperationCode.findAll", query = "SELECT d FROM DcOperationCode d")
    , @NamedQuery(name = "DcOperationCode.findById", query = "SELECT d FROM DcOperationCode d WHERE d.id = :id")
    , @NamedQuery(name = "DcOperationCode.findByCode", query = "SELECT d FROM DcOperationCode d WHERE d.code = :code")
    , @NamedQuery(name = "DcOperationCode.findByDescription", query = "SELECT d FROM DcOperationCode d WHERE d.description = :description")
    , @NamedQuery(name = "DcOperationCode.findByCreateTimestamp", query = "SELECT d FROM DcOperationCode d WHERE d.createTimestamp = :createTimestamp")
    , @NamedQuery(name = "DcOperationCode.findByUpdateTimestamp", query = "SELECT d FROM DcOperationCode d WHERE d.updateTimestamp = :updateTimestamp")})
public class DcOperationCode extends RecordStatusableEntry implements Serializable {

    private static final long serialVersionUID = 1L;
    
    @Id
    @SequenceGenerator(name = "seq", sequenceName = "dopc_id_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private BigDecimal id;
    
    @Basic(optional = false)
    @Column(name = "CODE", nullable = false, length = 10)
    private String code;
    
    @Column(name = "DESCRIPTION", length = 255)
    private String description;

    @JoinTable(name = "DC_SERVICE_TYPE_X_OP_CODE",
            joinColumns = {
                    @JoinColumn(name = "DC_OPERATION_CODE_ID", referencedColumnName = "ID", nullable = false)},
            inverseJoinColumns = {
                    @JoinColumn(name = "DC_SERVICE_TYPE_ID", referencedColumnName = "ID", nullable = false)})
    @ManyToMany(cascade = CascadeType.MERGE)
    private List<DcServiceType> serviceTypes;

	public DcOperationCode() {
    }

    public DcOperationCode(BigDecimal id) {
        this.id = id;
    }

    public DcOperationCode(BigDecimal id, String code) {
        this.id = id;
        this.code = code;
    }

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<DcServiceType> getServiceTypes() {
        return serviceTypes;
    }

    public void setServiceTypes(List<DcServiceType> serviceTypes) {
        this.serviceTypes = serviceTypes;
    }

    public String getServiceTypesName(){
        return serviceTypes.stream().map(DcServiceType::getName).collect(Collectors.joining(","));
    }

    public Boolean serviceTypeMatch(DcServiceType serviceType){
        return serviceTypes.stream().anyMatch(serviceType1 -> serviceType1.getId().equals(serviceType.getId()));
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof DcOperationCode)) {
            return false;
        }
        DcOperationCode other = (DcOperationCode) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.honda.hdm.datacollect.model.entity.DcOperationCode[ id=" + id + " ]";
    }
    
}
