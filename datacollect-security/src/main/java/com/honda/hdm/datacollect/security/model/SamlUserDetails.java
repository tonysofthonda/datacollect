package com.honda.hdm.datacollect.security.model;

import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.List;

public class SamlUserDetails extends UserDetailsDTO{

    private String dealerNumber;

    private String userId;

    private String fullName;

    private String email;

    private List<SimpleGrantedAuthority> roles;

    public SamlUserDetails(String dealerNumber, String userId, String fullName, String email, List<SimpleGrantedAuthority> roles) {
        this.dealerNumber = dealerNumber;
        this.userId = userId;
        this.fullName = fullName;
        this.email = email;
        this.roles = roles;
    }

    public String getDealerNumber() {
        return dealerNumber;
    }

    public void setDealerNumber(String dealerNumber) {
        this.dealerNumber = dealerNumber;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<SimpleGrantedAuthority> getRoles() {
        return roles;
    }

    public void setRoles(List<SimpleGrantedAuthority> roles) {
        this.roles = roles;
    }
}
