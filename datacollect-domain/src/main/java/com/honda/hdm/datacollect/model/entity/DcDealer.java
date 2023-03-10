/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.honda.hdm.datacollect.model.entity;

import com.honda.hdm.datacollect.model.entity.base.RecordStatusableEntry;
import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author VJC80439
 */
@Entity
@Table(name = "DC_DEALER", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"DEALER_NUMBER"})
    , @UniqueConstraint(columnNames = {"NAME"})})
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DcDealer.findAll", query = "SELECT d FROM DcDealer d")
    , @NamedQuery(name = "DcDealer.findById", query = "SELECT d FROM DcDealer d WHERE d.id = :id")
    , @NamedQuery(name = "DcDealer.findByDealerNumber", query = "SELECT d FROM DcDealer d WHERE d.dealerNumber = :dealerNumber")
    , @NamedQuery(name = "DcDealer.findByName", query = "SELECT d FROM DcDealer d WHERE d.name = :name")
    , @NamedQuery(name = "DcDealer.findByBusinessName", query = "SELECT d FROM DcDealer d WHERE d.businessName = :businessName")
    , @NamedQuery(name = "DcDealer.findByRfc", query = "SELECT d FROM DcDealer d WHERE d.rfc = :rfc")
    , @NamedQuery(name = "DcDealer.findByAddrStreet", query = "SELECT d FROM DcDealer d WHERE d.addrStreet = :addrStreet")
    , @NamedQuery(name = "DcDealer.findByAddrNeighborhood", query = "SELECT d FROM DcDealer d WHERE d.addrNeighborhood = :addrNeighborhood")
    , @NamedQuery(name = "DcDealer.findByAddrPostcode", query = "SELECT d FROM DcDealer d WHERE d.addrPostcode = :addrPostcode")
    , @NamedQuery(name = "DcDealer.findByCreateTimestamp", query = "SELECT d FROM DcDealer d WHERE d.createTimestamp = :createTimestamp")
    , @NamedQuery(name = "DcDealer.findByUpdateTimestamp", query = "SELECT d FROM DcDealer d WHERE d.updateTimestamp = :updateTimestamp")})

public class DcDealer extends RecordStatusableEntry implements Serializable {

    private static final long serialVersionUID = 1L;
    
    @Id
    @SequenceGenerator(name = "seq", sequenceName = "dcdeal_id_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;
    
    @Basic(optional = false)
    @Column(name = "DEALER_NUMBER", nullable = false, length = 10)
    private String dealerNumber;
    
    @Basic(optional = false)
    @Column(name = "NAME", nullable = false, length = 100)
    private String name;
    
    @Column(name = "BUSINESS_NAME", length = 255)
    private String businessName;
    
    @Column(name = "RFC", length = 15)
    private String rfc;
    
    @Column(name = "ZIP_CODE", length = 10)
    private String zipCode;
    
    
    @Column(name = "ADDR_STREET", length = 100)
    private String addrStreet;
    
    @Column(name = "ADDR_NEIGHBORHOOD", length = 100)
    private String addrNeighborhood;
    
    @Column(name = "ADDR_POSTCODE", length = 6)
    private String addrPostcode;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "dcDealerId")
    private List<DcMonthFinInfo> dcMonthFinInfoList;
    
    @JoinColumn(name = "DC_CITY_ID", referencedColumnName = "ID", nullable = false)
    @ManyToOne(optional = false)
    private DcCity dcCityId;
    
    @JoinColumn(name = "DC_DEALER_GROUP_ID", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private DcDealerGroup dcDealerGroup;
    
    @JoinColumn(name = "DC_TERCHIEF_ID", referencedColumnName = "ID")
    @ManyToOne(optional = false )
    private DcTerchief dcTerchief;
    
    @JoinTable(name = "DC_CONTACT_X_DEALER", joinColumns = {
        @JoinColumn(name = "DC_DEALER_ID", referencedColumnName = "ID", nullable = false)}, inverseJoinColumns = {
        @JoinColumn(name = "DC_CONTACT_ID", referencedColumnName = "ID", nullable = false)})
    @OneToMany
    private List<DcContactXDealer> dcContactList;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "dcDealerId")
    private List<DcIncomeFile> dcIncomeFileList;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "dcDealerId")
    private List<DcSvcOrderVin> dcSvcOrderVinList;
        
    @JoinColumn(name = "DC_WORKSHOP_ID", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private DcWorkshop dcWorkshopId;
 
    public DcDealer() {
    }

    public DcDealer(Long id) {
        this.id = id;
    }

    public DcDealer(Long id, String dealerNumber, String name) {
        this.id = id;
        this.dealerNumber = dealerNumber;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDealerNumber() {
        return dealerNumber;
    }

    public void setDealerNumber(String dealerNumber) {
        this.dealerNumber = dealerNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBusinessName() {
        return businessName;
    }

    public void setBusinessName(String businessName) {
        this.businessName = businessName;
    }

    public String getRfc() {
        return rfc;
    }

    public void setRfc(String rfc) {
        this.rfc = rfc;
    }
    
    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }


    public String getAddrStreet() {
        return addrStreet;
    }

    public void setAddrStreet(String addrStreet) {
        this.addrStreet = addrStreet;
    }

    public String getAddrNeighborhood() {
        return addrNeighborhood;
    }

    public void setAddrNeighborhood(String addrNeighborhood) {
        this.addrNeighborhood = addrNeighborhood;
    }

    public String getAddrPostcode() {
        return addrPostcode;
    }

    public void setAddrPostcode(String addrPostcode) {
        this.addrPostcode = addrPostcode;
    }

    @XmlTransient
    public List<DcMonthFinInfo> getDcMonthFinInfoList() {
        return dcMonthFinInfoList;
    }

    public void setDcMonthFinInfoList(List<DcMonthFinInfo> dcMonthFinInfoList) {
        this.dcMonthFinInfoList = dcMonthFinInfoList;
    }

    public DcCity getDcCityId() {
        return dcCityId;
    }

    public void setDcCityId(DcCity dcCityId) {
        this.dcCityId = dcCityId;
    }
    
    public DcDealerGroup getDcDealerGroup() {
        return dcDealerGroup;
    }

    public void setDcDealerGroup(DcDealerGroup dcDealerGroup) {
        this.dcDealerGroup = dcDealerGroup;
    }
    
    public DcTerchief getDcTerchief() {
        return dcTerchief;
    }

    public void setDcTerchief(DcTerchief dcTerchief) {
        this.dcTerchief = dcTerchief;
    }

    @XmlTransient
    public List<DcIncomeFile> getDcIncomeFileList() {
        return dcIncomeFileList;
    }

    public void setDcIncomeFileList(List<DcIncomeFile> dcIncomeFileList) {
        this.dcIncomeFileList = dcIncomeFileList;
    }

    @XmlTransient
    public List<DcSvcOrderVin> getDcSvcOrderVinList() {
        return dcSvcOrderVinList;
    }

    public void setDcSvcOrderVinList(List<DcSvcOrderVin> dcSvcOrderVinList) {
        this.dcSvcOrderVinList = dcSvcOrderVinList;
    }

    @XmlTransient
    public List<DcContactXDealer> getDcContactList() {
        return dcContactList;
    }

    public void setDcContactList(List<DcContactXDealer> dcContactList) {
        this.dcContactList = dcContactList;
    }

    public DcWorkshop getDcWorkshopId() {
        return dcWorkshopId;
    }

    public void setDcWorkshopId(DcWorkshop dcWorkshopId) {
        this.dcWorkshopId = dcWorkshopId;
    }    

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DcDealer)) {
            return false;
        }
        DcDealer other = (DcDealer) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

	@Override
	public String toString() {
		return "DcDealer [id=" + id + ", dealerNumber=" + dealerNumber + ", name=" + name + ", businessName="
				+ businessName + ", rfc=" + rfc + ", addrStreet=" + addrStreet + ", addrNeighborhood="
				+ addrNeighborhood + ", addrPostcode=" + addrPostcode + "]";
	}
}
