package com.honda.hdm.datacollect.model.entity;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "DC_FINANCIAL_STATE_X_STATUS", uniqueConstraints = {
        @UniqueConstraint(columnNames = {"DATE_ASSIGNMENT"}),
        @UniqueConstraint(columnNames = {"DC_FINANCIAL_STATE_ID"})
})
@XmlRootElement
public class DcFinancialStateXStatus {

    @Id
    @SequenceGenerator(name = "seq", sequenceName = "dc_fin_state_x_status_seq", allocationSize = 1)
    @GeneratedValue(generator = "seq", strategy = GenerationType.SEQUENCE)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false, precision = 38, scale = 0)
    private Long id;

    @Column(name = "email")
    private String email;

    @Column(name = "username")
    private String username;

    @Column(name = "comments")
    private String comments;

    @Column(name = "DATE_ASSIGNMENT", nullable = false)
    private Date dateAssignment;

    @ManyToOne
    @JoinColumn(name = "DC_FINANCIAL_STATE_ID", referencedColumnName = "ID")
    private DcFinancialState financialState;

    @ManyToOne
    @JoinColumn(name = "DC_USER_TYPE_ID", referencedColumnName = "ID")
    private DcUserType userType;

    @ManyToOne
    @JoinColumn(name = "DC_EVALUATION_AREA_ID", referencedColumnName = "ID")
    private DcEvaluationArea area;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "DC_STATUS_ID", referencedColumnName = "ID")
    private DcFinancialStateStatus status;

    @OneToMany(mappedBy = "status", cascade = CascadeType.ALL)
    private List<DcAccountError> errors;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getDateAssignment() {
        return dateAssignment;
    }

    public void setDateAssignment(Date dateAssignment) {
        this.dateAssignment = dateAssignment;
    }

    public DcFinancialState getFinancialState() {
        return financialState;
    }

    public void setFinancialState(DcFinancialState financialState) {
        this.financialState = financialState;
    }

    public DcEvaluationArea getArea() {
        return area;
    }

    public void setArea(DcEvaluationArea area) {
        this.area = area;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public DcUserType getUserType() {
        return userType;
    }

    public void setUserType(DcUserType userType) {
        this.userType = userType;
    }

    public DcFinancialStateStatus getStatus() {
        return status;
    }

    public void setStatus(DcFinancialStateStatus status) {
        this.status = status;
    }

    public List<DcAccountError> getErrors() {
        return errors;
    }

    public void setErrors(List<DcAccountError> errors) {
        this.errors = errors;
    }
}
