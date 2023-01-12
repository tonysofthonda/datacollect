package com.honda.hdm.datacollect.model.entity.dto;

import java.util.Date;
import java.util.List;

public class DcFinancialStateXStatusDto {

    private Long id;

    private String email;

    private String username;

    private String comments;

    private Date dateAssignment;

    private DcFinancialStateDto financialState;

    private DcUserTypeDto userType;

    private DcEvaluationAreaDto area;

    private DcFinancialStateStatusDto status;

    private List<DcAccountErrorDto> errors;

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

    public DcUserTypeDto getUserType() {
        return userType;
    }

    public void setUserType(DcUserTypeDto userType) {
        this.userType = userType;
    }

    public DcEvaluationAreaDto getArea() {
        return area;
    }

    public void setArea(DcEvaluationAreaDto area) {
        this.area = area;
    }

    public DcFinancialStateDto getFinancialState() {
        return financialState;
    }

    public void setFinancialState(DcFinancialStateDto financialState) {
        this.financialState = financialState;
    }

    public DcFinancialStateStatusDto getStatus() {
        return status;
    }

    public void setStatus(DcFinancialStateStatusDto status) {
        this.status = status;
    }

    public List<DcAccountErrorDto> getErrors() {
        return errors;
    }

    public void setErrors(List<DcAccountErrorDto> errors) {
        this.errors = errors;
    }
}
